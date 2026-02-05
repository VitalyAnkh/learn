#pragma once

// v88: v83-style kernel but moves the stage-advance barrier *between* kgroup0
// and kgroup1, then pipelines the next-iteration kgroup0 `ldmatrix` loads into
// the kgroup1 HMMA region.
//
// Motivation:
// - CUTLASS SM80+ `MmaMultistage` for the (128x256x32, stages=3) shape uses
//   a 2-kgroup warp-level pipeline (kWarpGemmIterations == 2).
// - In CUTLASS' steady-state, the "stage advance" (wait + barrier + pointer
//   rotation) happens in the *second-to-last* warp_mma_k, enabling the *last*
//   warp_mma_k to start loading the next iteration's fragments early.
// - Our v83/v70 family keeps the barrier after computing both kgroups, which
//   prevents overlapping "next-iter LDSM" with current compute.
//
// Technique:
// - Keep the same TB/warp shape and shared layouts as v83:
//   - TB 128x256x32, warp 64x64x32, N_STAGES=3, `cp.async.cg ... .L2::128B`,
//     base+imm ldmatrix addressing.
// - Use two fragment buffers:
//   - `*_0` = kgroup0 (kk=0) of the *current* iteration
//   - `*_1` = kgroup1 (kk=16) of the *current* iteration (prefetched early)
// - After finishing kgroup0:
//   - issue cp.async for the future stage
//   - `wait_group` + `__syncthreads` + advance stage pointers
//   - immediately start loading the *next iteration* kgroup0 fragments into
//     `*_0` (now safe because `*_0` is no longer needed for current kgroup0)
// - While those loads are in flight, execute kgroup1 HMMA using `*_1`.
//
// Expected effect:
// - More CUTLASS-like warp-level software pipeline:
//   - Earlier stage advance enables earlier next-iter `LDSM`.
//   - Increase `LDSM -> HMMA` distance for next-iter kgroup0 and reduce
//     scoreboard stalls at the start of the next iteration.
//
// Risk / tradeoff:
// - Moving `wait_group + __syncthreads` earlier can reduce cp.async overlap if
//   the wait stalls. Net benefit is empirical; this variant exists to test that.
template <int N_STAGES>
__launch_bounds__(256)
__global__ void
gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_midwait_fragpipe(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(N_STAGES >= 2, "cp.async pipeline needs at least 2 stages");
    static_assert(N_STAGES == 3, "v88 is specialized for N_STAGES=3");

    constexpr int TILE_M = 128;
    constexpr int TILE_N = 256;
    constexpr int TILE_K = 32; // half
    constexpr int K_BLOCKS = kK / TILE_K;

    constexpr int WARPS_PER_BLOCK = 8;
    constexpr int THREADS_PER_BLOCK = WARPS_PER_BLOCK * 32;

    constexpr int A_STAGE_ELEMS = TILE_M * TILE_K; // 4096 half
    constexpr int B_STAGE_ELEMS = TILE_K * TILE_N; // 8192 half
    constexpr int A_STAGE_BYTES =
        A_STAGE_ELEMS * static_cast<int>(sizeof(__half)); // 8192
    constexpr int B_STAGE_BYTES =
        B_STAGE_ELEMS * static_cast<int>(sizeof(__half)); // 16384

    __shared__ __align__(128) __half As[N_STAGES * A_STAGE_ELEMS];
    __shared__ __align__(128) __half Bs[N_STAGES * B_STAGE_ELEMS];

    int const tid = static_cast<int>(threadIdx.x);
    int const warp_id = tid >> 5;
    int const lane_id = tid & 31;

    int const warp_row = warp_id >> 2; // 0..1
    int const warp_col = warp_id & 3;  // 0..3

    int const block_m = static_cast<int>(blockIdx.x) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.y) * TILE_N;

    uint32_t const As_base = __cvta_generic_to_shared(As);
    uint32_t const Bs_base = __cvta_generic_to_shared(Bs);

    uint32_t c[4][8][2];
#pragma unroll
    for (int m = 0; m < 4; ++m) {
#pragma unroll
        for (int n = 0; n < 8; ++n) {
            c[m][n][0] = 0u;
            c[m][n][1] = 0u;
        }
    }

    // ------------------------------------------------------------
    // Copy thread-map (same as v83)
    // ------------------------------------------------------------
    int const a_row0 = tid >> 2;     // 0..63
    int const a_col = (tid & 3) * 8; // half
    constexpr int A_ROW_STRIDE = kK; // half
    constexpr int A_ROW_DELTA = 64 * A_ROW_STRIDE; // +64 rows (half)

    uint32_t const a_smem_off0 =
        static_cast<uint32_t>(tensorop_rm_offset<32, TILE_K>(a_row0, a_col) << 1);
    constexpr uint32_t A_SMEM_ROW_DELTA_BYTES = 0x1000; // 4096B

    int const b_row = tid >> 3;
    int const b_group = tid & 7;
    int const b_col0 = b_group * 8; // half
    constexpr int B_VEC_DELTA = 64; // half

    uint32_t const b_smem_off0 =
        static_cast<uint32_t>(tensorop_rm_offset<64, TILE_N>(b_row, b_col0) << 1);
    constexpr uint32_t B_SMEM_VEC_DELTA_BYTES = 0x80; // 128B

    // ------------------------------------------------------------
    // ldmatrix offsets (same base+imm trick as v83)
    // ------------------------------------------------------------
    constexpr uint32_t A_M_DELTA_BYTES = 0x400; // +16 rows in A for this layout
    constexpr uint32_t B_KGROUP_DELTA_BYTES = 0x2000; // kk=16 within the stage

    uint32_t a_ld_base_bytes[2]; // kk=0 and kk=16, m=0
    uint32_t b_ld_off_bytes[4];  // kk=0, nb=0..3

#pragma unroll
    for (int nb = 0; nb < 4; ++nb) {
        int const b_r = (lane_id & 15); // kk=0
        int const b_c = warp_col * 64 + nb * 16 + ((lane_id >> 4) * 8);
        b_ld_off_bytes[nb] =
            static_cast<uint32_t>(tensorop_rm_offset<64, TILE_N>(b_r, b_c) << 1);
    }

#pragma unroll
    for (int kk_idx = 0; kk_idx < 2; ++kk_idx) {
        int const kk = kk_idx * 16;
        int const a_r = warp_row * 64 + (lane_id & 15);
        int const a_c = kk + ((lane_id >> 4) * 8);
        a_ld_base_bytes[kk_idx] =
            static_cast<uint32_t>(tensorop_rm_offset<32, TILE_K>(a_r, a_c) << 1);
    }

    // ------------------------------------------------------------
    // Prologue: prefetch first (N_STAGES-1) K blocks
    // ------------------------------------------------------------
#pragma unroll
    for (int stage = 0; stage < (N_STAGES - 1); ++stage) {
        int const k_tile = stage * TILE_K;
        uint32_t const a_store_base =
            As_base + static_cast<uint32_t>(stage * A_STAGE_BYTES);
        uint32_t const b_store_base =
            Bs_base + static_cast<uint32_t>(stage * B_STAGE_BYTES);

        uint32_t const a_store = a_store_base + a_smem_off0;
        uint32_t const b_store = b_store_base + b_smem_off0;

        __half const *gA = A + (block_m + a_row0) * kK + k_tile + a_col;
        __half const *gA2 = gA + A_ROW_DELTA;
        __half const *gB =
            B + (k_tile + b_row) * kN + (block_n + b_col0);

        cp_async_cg_L2_16B_addr(a_store, gA);
        cp_async_cg_L2_16B_addr(a_store + A_SMEM_ROW_DELTA_BYTES, gA2);

        cp_async_cg_L2_16B_addr(b_store, gB);
        cp_async_cg_L2_16B_addr(b_store + 1 * B_SMEM_VEC_DELTA_BYTES,
                                gB + 1 * B_VEC_DELTA);
        cp_async_cg_L2_16B_addr(b_store + 2 * B_SMEM_VEC_DELTA_BYTES,
                                gB + 2 * B_VEC_DELTA);
        cp_async_cg_L2_16B_addr(b_store + 3 * B_SMEM_VEC_DELTA_BYTES,
                                gB + 3 * B_VEC_DELTA);

        cp_async_commit_group();
    }

    cp_async_wait_group<N_STAGES - 2>();
    __syncthreads();

    uint32_t a_load_base = As_base;
    uint32_t b_load_base = Bs_base;
    uint32_t a_store_base =
        As_base + static_cast<uint32_t>((N_STAGES - 1) * A_STAGE_BYTES);
    uint32_t b_store_base =
        Bs_base + static_cast<uint32_t>((N_STAGES - 1) * B_STAGE_BYTES);

    uint32_t const a_end =
        As_base + static_cast<uint32_t>(N_STAGES * A_STAGE_BYTES);
    uint32_t const b_end =
        Bs_base + static_cast<uint32_t>(N_STAGES * B_STAGE_BYTES);

    __half const *gA_pref =
        A + (block_m + a_row0) * kK + (N_STAGES - 1) * TILE_K + a_col;
    __half const *gA_pref2 = gA_pref + A_ROW_DELTA;
    __half const *gB_pref =
        B + ((N_STAGES - 1) * TILE_K + b_row) * kN + (block_n + b_col0);

    constexpr int gA_step = TILE_K;      // half
    constexpr int gB_step = TILE_K * kN; // half

    // Warp fragments:
    // - *_0: current iteration kgroup0 (kk=0)
    // - *_1: current iteration kgroup1 (kk=16)
    uint32_t aReg0[4][4];
    uint32_t aReg1[4][4];
    uint32_t bReg0[4][4];
    uint32_t bReg1[4][4];

    // Initial load: kgroup0 (kk=0)
#pragma unroll
    for (int nb = 0; nb < 4; ++nb) {
        uint32_t const addr_b = b_load_base + b_ld_off_bytes[nb];
        ldmatrix_x4_trans(bReg0[nb][0], bReg0[nb][1], bReg0[nb][2], bReg0[nb][3],
                          addr_b);
    }
    {
        uint32_t const addr_a0 = a_load_base + a_ld_base_bytes[0];
        ldmatrix_x4(aReg0[0][0], aReg0[0][1], aReg0[0][2], aReg0[0][3], addr_a0);
        ldmatrix_x4_off<A_M_DELTA_BYTES>(aReg0[1][0], aReg0[1][1], aReg0[1][2],
                                         aReg0[1][3], addr_a0);
        ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(aReg0[2][0], aReg0[2][1], aReg0[2][2],
                                             aReg0[2][3], addr_a0);
        ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(aReg0[3][0], aReg0[3][1], aReg0[3][2],
                                             aReg0[3][3], addr_a0);
    }

    constexpr int MAIN_ITERS = K_BLOCKS - (N_STAGES - 1);
    static_assert(MAIN_ITERS > 0, "invalid steady-state loop length");

    for (int k_iter = 0; k_iter < MAIN_ITERS; ++k_iter) {
        // ------------------------------------------------------------
        // Prefetch kgroup1 fragments (kk=16) into *_1
        // ------------------------------------------------------------
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[nb];
            ldmatrix_x4_trans_off<B_KGROUP_DELTA_BYTES>(
                bReg1[nb][0], bReg1[nb][1], bReg1[nb][2], bReg1[nb][3], addr_b);
        }
        {
            uint32_t const addr_a1 = a_load_base + a_ld_base_bytes[1];
            ldmatrix_x4(aReg1[0][0], aReg1[0][1], aReg1[0][2], aReg1[0][3],
                        addr_a1);
            ldmatrix_x4_off<A_M_DELTA_BYTES>(aReg1[1][0], aReg1[1][1], aReg1[1][2],
                                             aReg1[1][3], addr_a1);
            ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(aReg1[2][0], aReg1[2][1],
                                                 aReg1[2][2], aReg1[2][3],
                                                 addr_a1);
            ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(aReg1[3][0], aReg1[3][1],
                                                 aReg1[3][2], aReg1[3][3],
                                                 addr_a1);
        }

        // ------------------------------------------------------------
        // MMA kgroup0 (kk=0) using *_0
        // ------------------------------------------------------------
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b0 = bReg0[nb][0];
            uint32_t const b1 = bReg0[nb][1];
            uint32_t const b2 = bReg0[nb][2];
            uint32_t const b3 = bReg0[nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a0 = aReg0[m][0];
                uint32_t const a1 = aReg0[m][1];
                uint32_t const a2 = aReg0[m][2];
                uint32_t const a3 = aReg0[m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3, b0, b1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3, b2, b3);
            }
        }

        // ------------------------------------------------------------
        // Issue cp.async for the future stage (k_iter + 2)
        // ------------------------------------------------------------
        uint32_t const a_store = a_store_base + a_smem_off0;
        uint32_t const b_store = b_store_base + b_smem_off0;

        cp_async_cg_L2_16B_addr(a_store, gA_pref);
        cp_async_cg_L2_16B_addr(a_store + A_SMEM_ROW_DELTA_BYTES, gA_pref2);

        cp_async_cg_L2_16B_addr(b_store, gB_pref);
        cp_async_cg_L2_16B_addr(b_store + 1 * B_SMEM_VEC_DELTA_BYTES,
                                gB_pref + 1 * B_VEC_DELTA);
        cp_async_cg_L2_16B_addr(b_store + 2 * B_SMEM_VEC_DELTA_BYTES,
                                gB_pref + 2 * B_VEC_DELTA);
        cp_async_cg_L2_16B_addr(b_store + 3 * B_SMEM_VEC_DELTA_BYTES,
                                gB_pref + 3 * B_VEC_DELTA);

        cp_async_commit_group();

        gA_pref += gA_step;
        gA_pref2 += gA_step;
        gB_pref += gB_step;

        // ------------------------------------------------------------
        // Midwait: advance the pipeline before kgroup1
        // ------------------------------------------------------------
        cp_async_wait_group<N_STAGES - 2>();
        __syncthreads();

        a_load_base += A_STAGE_BYTES;
        b_load_base += B_STAGE_BYTES;
        a_store_base += A_STAGE_BYTES;
        b_store_base += B_STAGE_BYTES;

        if (a_load_base == a_end) {
            a_load_base = As_base;
        }
        if (b_load_base == b_end) {
            b_load_base = Bs_base;
        }
        if (a_store_base == a_end) {
            a_store_base = As_base;
        }
        if (b_store_base == b_end) {
            b_store_base = Bs_base;
        }

        // ------------------------------------------------------------
        // Start loading next iteration's kgroup0 into *_0
        // (overlapped with current kgroup1 HMMA)
        // ------------------------------------------------------------
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[nb];
            ldmatrix_x4_trans(bReg0[nb][0], bReg0[nb][1], bReg0[nb][2], bReg0[nb][3],
                              addr_b);
        }
        {
            uint32_t const addr_a0 = a_load_base + a_ld_base_bytes[0];
            ldmatrix_x4(aReg0[0][0], aReg0[0][1], aReg0[0][2], aReg0[0][3], addr_a0);
            ldmatrix_x4_off<A_M_DELTA_BYTES>(aReg0[1][0], aReg0[1][1], aReg0[1][2],
                                             aReg0[1][3], addr_a0);
            ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(aReg0[2][0], aReg0[2][1], aReg0[2][2],
                                                 aReg0[2][3], addr_a0);
            ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(aReg0[3][0], aReg0[3][1], aReg0[3][2],
                                                 aReg0[3][3], addr_a0);
        }

        // ------------------------------------------------------------
        // MMA kgroup1 (kk=16) using *_1
        // ------------------------------------------------------------
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b0 = bReg1[nb][0];
            uint32_t const b1 = bReg1[nb][1];
            uint32_t const b2 = bReg1[nb][2];
            uint32_t const b3 = bReg1[nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a0 = aReg1[m][0];
                uint32_t const a1 = aReg1[m][1];
                uint32_t const a2 = aReg1[m][2];
                uint32_t const a3 = aReg1[m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3, b0, b1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3, b2, b3);
            }
        }
    }

    // Tail: compute the remaining 2 K blocks with a final drain of cp.async.
    //
    // At loop exit, `a_load_base/b_load_base` points to the next unread stage,
    // and `aReg0/bReg0` already holds kgroup0 for that stage.

    // ---------------------------
    // Block 126
    // ---------------------------
    {
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[nb];
            ldmatrix_x4_trans_off<B_KGROUP_DELTA_BYTES>(
                bReg1[nb][0], bReg1[nb][1], bReg1[nb][2], bReg1[nb][3], addr_b);
        }
        {
            uint32_t const addr_a1 = a_load_base + a_ld_base_bytes[1];
            ldmatrix_x4(aReg1[0][0], aReg1[0][1], aReg1[0][2], aReg1[0][3], addr_a1);
            ldmatrix_x4_off<A_M_DELTA_BYTES>(aReg1[1][0], aReg1[1][1], aReg1[1][2],
                                             aReg1[1][3], addr_a1);
            ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(aReg1[2][0], aReg1[2][1], aReg1[2][2],
                                                 aReg1[2][3], addr_a1);
            ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(aReg1[3][0], aReg1[3][1], aReg1[3][2],
                                                 aReg1[3][3], addr_a1);
        }

        // kgroup0
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b0 = bReg0[nb][0];
            uint32_t const b1 = bReg0[nb][1];
            uint32_t const b2 = bReg0[nb][2];
            uint32_t const b3 = bReg0[nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a0 = aReg0[m][0];
                uint32_t const a1 = aReg0[m][1];
                uint32_t const a2 = aReg0[m][2];
                uint32_t const a3 = aReg0[m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3, b0, b1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3, b2, b3);
            }
        }

        // Drain remaining async copies so block 127 is ready.
        cp_async_wait_group<0>();
        __syncthreads();

        // Advance to block 127 stage.
        a_load_base += A_STAGE_BYTES;
        b_load_base += B_STAGE_BYTES;
        if (a_load_base == a_end) {
            a_load_base = As_base;
        }
        if (b_load_base == b_end) {
            b_load_base = Bs_base;
        }

        // Start loading block127 kgroup0 into *_0 (overlap with kgroup1 of block126).
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[nb];
            ldmatrix_x4_trans(bReg0[nb][0], bReg0[nb][1], bReg0[nb][2], bReg0[nb][3],
                              addr_b);
        }
        {
            uint32_t const addr_a0 = a_load_base + a_ld_base_bytes[0];
            ldmatrix_x4(aReg0[0][0], aReg0[0][1], aReg0[0][2], aReg0[0][3], addr_a0);
            ldmatrix_x4_off<A_M_DELTA_BYTES>(aReg0[1][0], aReg0[1][1], aReg0[1][2],
                                             aReg0[1][3], addr_a0);
            ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(aReg0[2][0], aReg0[2][1], aReg0[2][2],
                                                 aReg0[2][3], addr_a0);
            ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(aReg0[3][0], aReg0[3][1], aReg0[3][2],
                                                 aReg0[3][3], addr_a0);
        }

        // kgroup1 of block126
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b0 = bReg1[nb][0];
            uint32_t const b1 = bReg1[nb][1];
            uint32_t const b2 = bReg1[nb][2];
            uint32_t const b3 = bReg1[nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a0 = aReg1[m][0];
                uint32_t const a1 = aReg1[m][1];
                uint32_t const a2 = aReg1[m][2];
                uint32_t const a3 = aReg1[m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3, b0, b1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3, b2, b3);
            }
        }
    }

    // ---------------------------
    // Block 127 (final)
    // ---------------------------
    {
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[nb];
            ldmatrix_x4_trans_off<B_KGROUP_DELTA_BYTES>(
                bReg1[nb][0], bReg1[nb][1], bReg1[nb][2], bReg1[nb][3], addr_b);
        }
        {
            uint32_t const addr_a1 = a_load_base + a_ld_base_bytes[1];
            ldmatrix_x4(aReg1[0][0], aReg1[0][1], aReg1[0][2], aReg1[0][3], addr_a1);
            ldmatrix_x4_off<A_M_DELTA_BYTES>(aReg1[1][0], aReg1[1][1], aReg1[1][2],
                                             aReg1[1][3], addr_a1);
            ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(aReg1[2][0], aReg1[2][1], aReg1[2][2],
                                                 aReg1[2][3], addr_a1);
            ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(aReg1[3][0], aReg1[3][1], aReg1[3][2],
                                                 aReg1[3][3], addr_a1);
        }

        // kgroup0
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b0 = bReg0[nb][0];
            uint32_t const b1 = bReg0[nb][1];
            uint32_t const b2 = bReg0[nb][2];
            uint32_t const b3 = bReg0[nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a0 = aReg0[m][0];
                uint32_t const a1 = aReg0[m][1];
                uint32_t const a2 = aReg0[m][2];
                uint32_t const a3 = aReg0[m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3, b0, b1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3, b2, b3);
            }
        }

        // kgroup1
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b0 = bReg1[nb][0];
            uint32_t const b1 = bReg1[nb][1];
            uint32_t const b2 = bReg1[nb][2];
            uint32_t const b3 = bReg1[nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a0 = aReg1[m][0];
                uint32_t const a1 = aReg1[m][1];
                uint32_t const a2 = aReg1[m][2];
                uint32_t const a3 = aReg1[m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3, b0, b1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3, b2, b3);
            }
        }
    }

    // ------------------------------------------------------------
    // Epilogue: scratch + vec8 stores (same as v83)
    // ------------------------------------------------------------
    __syncthreads();

    constexpr int SMEM_C_PAD = 8; // half
    constexpr int SMEM_C_LD = TILE_N + SMEM_C_PAD; // 264
    constexpr int SMEM_C_ELEMS = TILE_M * SMEM_C_LD; // 33792 half
    static_assert(SMEM_C_ELEMS <= (N_STAGES * (A_STAGE_ELEMS + B_STAGE_ELEMS)),
                  "padded C scratch must fit in As+Bs");

    __half *smem_C = As;
    uint32_t *smem_C_u32 = reinterpret_cast<uint32_t *>(smem_C);

    int const group_id = lane_id >> 2;
    int const tid_in_group = lane_id & 3;
    int const c_row0 = group_id;
    int const c_row1 = group_id + 8;
    int const c_col0 = tid_in_group * 2;

#pragma unroll
    for (int m = 0; m < 4; ++m) {
        int const base_m = warp_row * 64 + m * 16;
#pragma unroll
        for (int n = 0; n < 8; ++n) {
            int const base_n = warp_col * 64 + n * 8;
            int const row0 = base_m + c_row0;
            int const row1 = base_m + c_row1;
            int const col0 = base_n + c_col0;

            int const idx0 = (row0 * SMEM_C_LD + col0) >> 1;
            int const idx1 = (row1 * SMEM_C_LD + col0) >> 1;
            smem_C_u32[idx0] = c[m][n][0];
            smem_C_u32[idx1] = c[m][n][1];
        }
    }

    __syncthreads();

    constexpr int VEC_ELEMS = 8; // half
    constexpr int VEC_COUNT = (TILE_M * TILE_N) / VEC_ELEMS; // 4096
    constexpr int VEC_ITERS = VEC_COUNT / THREADS_PER_BLOCK; // 16

#pragma unroll
    for (int it = 0; it < VEC_ITERS; ++it) {
        int const vec_idx = tid + it * THREADS_PER_BLOCK;
        int const row = vec_idx >> 5;
        int const col = (vec_idx & 31) << 3;
        uint4 const v =
            *reinterpret_cast<uint4 const *>(smem_C + row * SMEM_C_LD + col);
        *reinterpret_cast<uint4 *>(C + (block_m + row) * kN + (block_n + col)) =
            v;
    }
}

