#pragma once

// v91: v83 + remove stage-ring wrap logic from the steady-state loop.
//
// Motivation:
// - Our v70–v90 family sits around ~186–188 TFLOPS, while the CUTLASS reference
//   (same 128x256x32 / warp 64x64x32 / stages=3) is ~197+ TFLOPS on this machine.
// - Disassembling v83 shows non-trivial per-iteration overhead for advancing the
//   3-stage ring buffer pointers:
//     - compare/select sequences for a_load/a_store/b_load/b_store wrap.
// - For this *fixed* 4096^3 problem with `TILE_K=32` and `N_STAGES=3`, the
//   steady-state loop length is:
//     MAIN_ITERS = 4096/32 - (3-1) = 128 - 2 = 126
//   which is divisible by 3. That means we can express the stage cycle as a
//   fixed repeating pattern and avoid any modulo/wrap logic in the hot loop.
//
// Technique:
// - Keep the same math/data path as v83 (same ldmatrix + mma.sync + epilogue).
// - Rewrite the steady-state mainloop as 42 groups of 3 iterations with an
//   explicit stage order:
//     iter 0: load stage 0, prefetch into stage 2
//     iter 1: load stage 1, prefetch into stage 0
//     iter 2: load stage 2, prefetch into stage 1
//   This eliminates the per-iter `if (base == end) base = begin;` sequences.
//
// Expected effect:
// - Fewer uniform integer ops (`UISETP`/`USEL`/`UIADD3`) in the steady-state.
// - Slightly tighter schedule around `LDGSTS` / `LDSM` / `HMMA`.
template <int N_STAGES>
__launch_bounds__(256)
__global__ void
gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_stage3unroll(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(N_STAGES >= 2, "cp.async pipeline needs at least 2 stages");
    static_assert(N_STAGES == 3, "v91 is specialized for N_STAGES=3");

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

    // Stage base pointers (3-stage ring, fixed order).
    uint32_t const a_stage0 = As_base + 0u * A_STAGE_BYTES;
    uint32_t const a_stage1 = As_base + 1u * A_STAGE_BYTES;
    uint32_t const a_stage2 = As_base + 2u * A_STAGE_BYTES;
    uint32_t const b_stage0 = Bs_base + 0u * B_STAGE_BYTES;
    uint32_t const b_stage1 = Bs_base + 1u * B_STAGE_BYTES;
    uint32_t const b_stage2 = Bs_base + 2u * B_STAGE_BYTES;

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
    // ldmatrix offsets (compute warps) with immediate-offset trick
    // ------------------------------------------------------------
    constexpr uint32_t A_M_DELTA_BYTES = 0x400; // 1024B per +16 rows
    constexpr uint32_t B_KGROUP_DELTA_BYTES = 0x2000; // kk=16 vs kk=0

    uint32_t a_ld_base_bytes[2]; // (kk=0, m=0) and (kk=16, m=0)
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
        int const a_r = warp_row * 64 + (lane_id & 15); // m=0
        int const a_c = kk + ((lane_id >> 4) * 8);
        a_ld_base_bytes[kk_idx] =
            static_cast<uint32_t>(tensorop_rm_offset<32, TILE_K>(a_r, a_c) << 1);
    }

    // ------------------------------------------------------------
    // Prologue: prefetch stages 0 and 1 (N_STAGES - 1)
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

    // Prefetch pointers: stage 2 is the first one not covered by the prologue.
    __half const *gA_pref =
        A + (block_m + a_row0) * kK + (N_STAGES - 1) * TILE_K + a_col;
    __half const *gA_pref2 = gA_pref + A_ROW_DELTA;
    __half const *gB_pref =
        B + ((N_STAGES - 1) * TILE_K + b_row) * kN + (block_n + b_col0);

    constexpr int gA_step = TILE_K;      // half
    constexpr int gB_step = TILE_K * kN; // half

    uint32_t aReg[4][4];
    uint32_t bReg[4][4];

    // Initial load: stage0, kgroup0 (kk=0).
#pragma unroll
    for (int nb = 0; nb < 4; ++nb) {
        uint32_t const addr_b = b_stage0 + b_ld_off_bytes[nb];
        ldmatrix_x4_trans(bReg[nb][0], bReg[nb][1], bReg[nb][2], bReg[nb][3],
                          addr_b);
    }
    {
        uint32_t const addr_a0 = a_stage0 + a_ld_base_bytes[0];
        ldmatrix_x4(aReg[0][0], aReg[0][1], aReg[0][2], aReg[0][3], addr_a0);
        ldmatrix_x4_off<A_M_DELTA_BYTES>(aReg[1][0], aReg[1][1], aReg[1][2],
                                         aReg[1][3], addr_a0);
        ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(aReg[2][0], aReg[2][1], aReg[2][2],
                                             aReg[2][3], addr_a0);
        ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(aReg[3][0], aReg[3][1], aReg[3][2],
                                             aReg[3][3], addr_a0);
    }

    constexpr int MAIN_ITERS = K_BLOCKS - (N_STAGES - 1);
    static_assert(MAIN_ITERS > 0, "invalid steady-state loop length");
    static_assert((MAIN_ITERS % 3) == 0,
                  "v91 assumes MAIN_ITERS divisible by 3 for stage unroll");
    constexpr int MAIN_GROUPS = MAIN_ITERS / 3;

    // ------------------------------------------------------------
    // Steady-state loop: 3-stage pattern unrolled by 3
    // ------------------------------------------------------------
    for (int g = 0; g < MAIN_GROUPS; ++g) {
        // --------------------------
        // Iter 0: load stage0, store stage2
        // --------------------------
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b0 = bReg[nb][0];
            uint32_t const b1 = bReg[nb][1];
            uint32_t const b2 = bReg[nb][2];
            uint32_t const b3 = bReg[nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a0 = aReg[m][0];
                uint32_t const a1 = aReg[m][1];
                uint32_t const a2 = aReg[m][2];
                uint32_t const a3 = aReg[m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3, b0, b1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3, b2, b3);
            }
        }

        // Prefetch into stage2.
        {
            uint32_t const a_store = a_stage2 + a_smem_off0;
            uint32_t const b_store = b_stage2 + b_smem_off0;

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
        }

        gA_pref += gA_step;
        gA_pref2 += gA_step;
        gB_pref += gB_step;

        // Load kgroup1 from stage0 (overwrite).
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_stage0 + b_ld_off_bytes[nb];
            ldmatrix_x4_trans_off<B_KGROUP_DELTA_BYTES>(
                bReg[nb][0], bReg[nb][1], bReg[nb][2], bReg[nb][3], addr_b);
        }
        {
            uint32_t const addr_a0 = a_stage0 + a_ld_base_bytes[1];
            ldmatrix_x4(aReg[0][0], aReg[0][1], aReg[0][2], aReg[0][3],
                        addr_a0);
            ldmatrix_x4_off<A_M_DELTA_BYTES>(aReg[1][0], aReg[1][1], aReg[1][2],
                                             aReg[1][3], addr_a0);
            ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(aReg[2][0], aReg[2][1],
                                                 aReg[2][2], aReg[2][3],
                                                 addr_a0);
            ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(aReg[3][0], aReg[3][1],
                                                 aReg[3][2], aReg[3][3],
                                                 addr_a0);
        }

        // MMA kgroup1 (stage0).
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b0 = bReg[nb][0];
            uint32_t const b1 = bReg[nb][1];
            uint32_t const b2 = bReg[nb][2];
            uint32_t const b3 = bReg[nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a0 = aReg[m][0];
                uint32_t const a1 = aReg[m][1];
                uint32_t const a2 = aReg[m][2];
                uint32_t const a3 = aReg[m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3, b0, b1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3, b2, b3);
            }
        }

        cp_async_wait_group<N_STAGES - 2>();
        __syncthreads();

        // Load next iter kgroup0 from stage1.
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_stage1 + b_ld_off_bytes[nb];
            ldmatrix_x4_trans(bReg[nb][0], bReg[nb][1], bReg[nb][2],
                              bReg[nb][3], addr_b);
        }
        {
            uint32_t const addr_a0 = a_stage1 + a_ld_base_bytes[0];
            ldmatrix_x4(aReg[0][0], aReg[0][1], aReg[0][2], aReg[0][3],
                        addr_a0);
            ldmatrix_x4_off<A_M_DELTA_BYTES>(aReg[1][0], aReg[1][1], aReg[1][2],
                                             aReg[1][3], addr_a0);
            ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(aReg[2][0], aReg[2][1],
                                                 aReg[2][2], aReg[2][3],
                                                 addr_a0);
            ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(aReg[3][0], aReg[3][1],
                                                 aReg[3][2], aReg[3][3],
                                                 addr_a0);
        }

        // --------------------------
        // Iter 1: load stage1, store stage0
        // --------------------------
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b0 = bReg[nb][0];
            uint32_t const b1 = bReg[nb][1];
            uint32_t const b2 = bReg[nb][2];
            uint32_t const b3 = bReg[nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a0 = aReg[m][0];
                uint32_t const a1 = aReg[m][1];
                uint32_t const a2 = aReg[m][2];
                uint32_t const a3 = aReg[m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3, b0, b1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3, b2, b3);
            }
        }

        // Prefetch into stage0.
        {
            uint32_t const a_store = a_stage0 + a_smem_off0;
            uint32_t const b_store = b_stage0 + b_smem_off0;

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
        }

        gA_pref += gA_step;
        gA_pref2 += gA_step;
        gB_pref += gB_step;

        // Load kgroup1 from stage1.
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_stage1 + b_ld_off_bytes[nb];
            ldmatrix_x4_trans_off<B_KGROUP_DELTA_BYTES>(
                bReg[nb][0], bReg[nb][1], bReg[nb][2], bReg[nb][3], addr_b);
        }
        {
            uint32_t const addr_a0 = a_stage1 + a_ld_base_bytes[1];
            ldmatrix_x4(aReg[0][0], aReg[0][1], aReg[0][2], aReg[0][3],
                        addr_a0);
            ldmatrix_x4_off<A_M_DELTA_BYTES>(aReg[1][0], aReg[1][1], aReg[1][2],
                                             aReg[1][3], addr_a0);
            ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(aReg[2][0], aReg[2][1],
                                                 aReg[2][2], aReg[2][3],
                                                 addr_a0);
            ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(aReg[3][0], aReg[3][1],
                                                 aReg[3][2], aReg[3][3],
                                                 addr_a0);
        }

#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b0 = bReg[nb][0];
            uint32_t const b1 = bReg[nb][1];
            uint32_t const b2 = bReg[nb][2];
            uint32_t const b3 = bReg[nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a0 = aReg[m][0];
                uint32_t const a1 = aReg[m][1];
                uint32_t const a2 = aReg[m][2];
                uint32_t const a3 = aReg[m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3, b0, b1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3, b2, b3);
            }
        }

        cp_async_wait_group<N_STAGES - 2>();
        __syncthreads();

        // Load next iter kgroup0 from stage2.
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_stage2 + b_ld_off_bytes[nb];
            ldmatrix_x4_trans(bReg[nb][0], bReg[nb][1], bReg[nb][2],
                              bReg[nb][3], addr_b);
        }
        {
            uint32_t const addr_a0 = a_stage2 + a_ld_base_bytes[0];
            ldmatrix_x4(aReg[0][0], aReg[0][1], aReg[0][2], aReg[0][3],
                        addr_a0);
            ldmatrix_x4_off<A_M_DELTA_BYTES>(aReg[1][0], aReg[1][1], aReg[1][2],
                                             aReg[1][3], addr_a0);
            ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(aReg[2][0], aReg[2][1],
                                                 aReg[2][2], aReg[2][3],
                                                 addr_a0);
            ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(aReg[3][0], aReg[3][1],
                                                 aReg[3][2], aReg[3][3],
                                                 addr_a0);
        }

        // --------------------------
        // Iter 2: load stage2, store stage1
        // --------------------------
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b0 = bReg[nb][0];
            uint32_t const b1 = bReg[nb][1];
            uint32_t const b2 = bReg[nb][2];
            uint32_t const b3 = bReg[nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a0 = aReg[m][0];
                uint32_t const a1 = aReg[m][1];
                uint32_t const a2 = aReg[m][2];
                uint32_t const a3 = aReg[m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3, b0, b1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3, b2, b3);
            }
        }

        // Prefetch into stage1.
        {
            uint32_t const a_store = a_stage1 + a_smem_off0;
            uint32_t const b_store = b_stage1 + b_smem_off0;

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
        }

        gA_pref += gA_step;
        gA_pref2 += gA_step;
        gB_pref += gB_step;

        // Load kgroup1 from stage2.
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_stage2 + b_ld_off_bytes[nb];
            ldmatrix_x4_trans_off<B_KGROUP_DELTA_BYTES>(
                bReg[nb][0], bReg[nb][1], bReg[nb][2], bReg[nb][3], addr_b);
        }
        {
            uint32_t const addr_a0 = a_stage2 + a_ld_base_bytes[1];
            ldmatrix_x4(aReg[0][0], aReg[0][1], aReg[0][2], aReg[0][3],
                        addr_a0);
            ldmatrix_x4_off<A_M_DELTA_BYTES>(aReg[1][0], aReg[1][1], aReg[1][2],
                                             aReg[1][3], addr_a0);
            ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(aReg[2][0], aReg[2][1],
                                                 aReg[2][2], aReg[2][3],
                                                 addr_a0);
            ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(aReg[3][0], aReg[3][1],
                                                 aReg[3][2], aReg[3][3],
                                                 addr_a0);
        }

#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b0 = bReg[nb][0];
            uint32_t const b1 = bReg[nb][1];
            uint32_t const b2 = bReg[nb][2];
            uint32_t const b3 = bReg[nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a0 = aReg[m][0];
                uint32_t const a1 = aReg[m][1];
                uint32_t const a2 = aReg[m][2];
                uint32_t const a3 = aReg[m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3, b0, b1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3, b2, b3);
            }
        }

        cp_async_wait_group<N_STAGES - 2>();
        __syncthreads();

        // Load next iter kgroup0 from stage0 (cycle).
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_stage0 + b_ld_off_bytes[nb];
            ldmatrix_x4_trans(bReg[nb][0], bReg[nb][1], bReg[nb][2],
                              bReg[nb][3], addr_b);
        }
        {
            uint32_t const addr_a0 = a_stage0 + a_ld_base_bytes[0];
            ldmatrix_x4(aReg[0][0], aReg[0][1], aReg[0][2], aReg[0][3],
                        addr_a0);
            ldmatrix_x4_off<A_M_DELTA_BYTES>(aReg[1][0], aReg[1][1], aReg[1][2],
                                             aReg[1][3], addr_a0);
            ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(aReg[2][0], aReg[2][1],
                                                 aReg[2][2], aReg[2][3],
                                                 addr_a0);
            ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(aReg[3][0], aReg[3][1],
                                                 aReg[3][2], aReg[3][3],
                                                 addr_a0);
        }
    }

    // ------------------------------------------------------------
    // Tail: same logic as v83 (two remaining k-tiles without further prefetch)
    // After the unrolled steady-state, we are positioned at:
    //   - regs loaded for k_iter = MAIN_ITERS (=126), stage0
    //   - stage1 contains the last prefetched tile (k_iter=127)
    // ------------------------------------------------------------
    {
        // k_iter = MAIN_ITERS (stage0 already loaded, kgroup0 in regs)
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b0 = bReg[nb][0];
            uint32_t const b1 = bReg[nb][1];
            uint32_t const b2 = bReg[nb][2];
            uint32_t const b3 = bReg[nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a0 = aReg[m][0];
                uint32_t const a1 = aReg[m][1];
                uint32_t const a2 = aReg[m][2];
                uint32_t const a3 = aReg[m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3, b0, b1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3, b2, b3);
            }
        }

        // Load kgroup1 (stage0).
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_stage0 + b_ld_off_bytes[nb];
            ldmatrix_x4_trans_off<B_KGROUP_DELTA_BYTES>(
                bReg[nb][0], bReg[nb][1], bReg[nb][2], bReg[nb][3], addr_b);
        }
        {
            uint32_t const addr_a0 = a_stage0 + a_ld_base_bytes[1];
            ldmatrix_x4(aReg[0][0], aReg[0][1], aReg[0][2], aReg[0][3],
                        addr_a0);
            ldmatrix_x4_off<A_M_DELTA_BYTES>(aReg[1][0], aReg[1][1], aReg[1][2],
                                             aReg[1][3], addr_a0);
            ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(aReg[2][0], aReg[2][1],
                                                 aReg[2][2], aReg[2][3],
                                                 addr_a0);
            ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(aReg[3][0], aReg[3][1],
                                                 aReg[3][2], aReg[3][3],
                                                 addr_a0);
        }

#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b0 = bReg[nb][0];
            uint32_t const b1 = bReg[nb][1];
            uint32_t const b2 = bReg[nb][2];
            uint32_t const b3 = bReg[nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a0 = aReg[m][0];
                uint32_t const a1 = aReg[m][1];
                uint32_t const a2 = aReg[m][2];
                uint32_t const a3 = aReg[m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3, b0, b1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3, b2, b3);
            }
        }

        // Ensure the final prefetched stage (k_iter=127) is visible.
        cp_async_wait_group<0>();
        __syncthreads();

        // Load final iteration kgroup0 from stage1.
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_stage1 + b_ld_off_bytes[nb];
            ldmatrix_x4_trans(bReg[nb][0], bReg[nb][1], bReg[nb][2],
                              bReg[nb][3], addr_b);
        }
        {
            uint32_t const addr_a0 = a_stage1 + a_ld_base_bytes[0];
            ldmatrix_x4(aReg[0][0], aReg[0][1], aReg[0][2], aReg[0][3],
                        addr_a0);
            ldmatrix_x4_off<A_M_DELTA_BYTES>(aReg[1][0], aReg[1][1], aReg[1][2],
                                             aReg[1][3], addr_a0);
            ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(aReg[2][0], aReg[2][1],
                                                 aReg[2][2], aReg[2][3],
                                                 addr_a0);
            ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(aReg[3][0], aReg[3][1],
                                                 aReg[3][2], aReg[3][3],
                                                 addr_a0);
        }
    }

    {
        // Final iteration (k_iter = K_BLOCKS - 1), stage1
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b0 = bReg[nb][0];
            uint32_t const b1 = bReg[nb][1];
            uint32_t const b2 = bReg[nb][2];
            uint32_t const b3 = bReg[nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a0 = aReg[m][0];
                uint32_t const a1 = aReg[m][1];
                uint32_t const a2 = aReg[m][2];
                uint32_t const a3 = aReg[m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3, b0, b1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3, b2, b3);
            }
        }

        // Load kgroup1 (stage1) and compute.
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_stage1 + b_ld_off_bytes[nb];
            ldmatrix_x4_trans_off<B_KGROUP_DELTA_BYTES>(
                bReg[nb][0], bReg[nb][1], bReg[nb][2], bReg[nb][3], addr_b);
        }
        {
            uint32_t const addr_a0 = a_stage1 + a_ld_base_bytes[1];
            ldmatrix_x4(aReg[0][0], aReg[0][1], aReg[0][2], aReg[0][3],
                        addr_a0);
            ldmatrix_x4_off<A_M_DELTA_BYTES>(aReg[1][0], aReg[1][1], aReg[1][2],
                                             aReg[1][3], addr_a0);
            ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(aReg[2][0], aReg[2][1],
                                                 aReg[2][2], aReg[2][3],
                                                 addr_a0);
            ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(aReg[3][0], aReg[3][1],
                                                 aReg[3][2], aReg[3][3],
                                                 addr_a0);
        }

#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b0 = bReg[nb][0];
            uint32_t const b1 = bReg[nb][1];
            uint32_t const b2 = bReg[nb][2];
            uint32_t const b3 = bReg[nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a0 = aReg[m][0];
                uint32_t const a1 = aReg[m][1];
                uint32_t const a2 = aReg[m][2];
                uint32_t const a3 = aReg[m][3];
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

    constexpr int SMEM_C_PAD = 8;                  // half
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
            int const col0 = base_n + c_col0; // always even

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
        int const row = vec_idx >> 5;        // / 32
        int const col = (vec_idx & 31) << 3; // * 8

        uint4 const v =
            *reinterpret_cast<uint4 const *>(smem_C + row * SMEM_C_LD + col);

        *reinterpret_cast<uint4 *>(C + (block_m + row) * kN + (block_n + col)) =
            v;
    }
}

