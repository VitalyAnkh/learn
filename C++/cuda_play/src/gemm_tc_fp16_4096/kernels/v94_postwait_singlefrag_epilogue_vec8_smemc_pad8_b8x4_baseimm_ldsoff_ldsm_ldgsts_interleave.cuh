#pragma once

// v94: v93 + interleave `LDGSTS(cp.async)` issue points into the HMMA stream.
//
// Motivation:
// - v93 successfully forces earlier `LDSM` placement (SASS shows `HMMA -> LDSM`
//   near loop entry), matching a key CUTLASS SASS pattern.
// - Throughput remains ~flat (~187–188 TFLOPS), suggesting the remaining gap
//   may involve `LDGSTS` placement / MIO throttling rather than `LDSM` alone.
//
// Technique:
// - Keep v93's manual kgroup1 fragment prefetch (LDSM interleave).
// - Additionally spread the 6x `cp.async` issues for the next stage across the
//   kgroup0 HMMA stream:
//   - After nb=0: issue A(2) + B(2) async copies.
//   - After nb=2: issue the remaining B(2) async copies.
//   - Commit the group after nb=3.
//
// Goal:
// - More CUTLASS-like instruction mixing: HMMA / LDSM / LDGSTS interleaving.
template <int N_STAGES>
__launch_bounds__(256)
__global__ void
gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_ldsm_ldgsts_interleave(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(N_STAGES >= 2, "cp.async pipeline needs at least 2 stages");
    static_assert(N_STAGES == 3, "v94 is specialized for N_STAGES=3");

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
    // Copy thread-map (same as v83/v93)
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
    constexpr uint32_t B_KGROUP_DELTA_BYTES = 0x2000; // kk=16

    uint32_t a_ld_base_bytes[2]; // (kk=0, m=0) and (kk=16, m=0)
    uint32_t b_ld_off_bytes[4];  // kgroup0 only (kk=0), nb=0..3

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
        __half const *gB = B + (k_tile + b_row) * kN + (block_n + b_col0);

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

    // kgroup0 (kk=0) fragments for the current iteration
    uint32_t a0[4][4];
    uint32_t b0[4][4];
    // kgroup1 (kk=16) fragments we preload while kgroup0 is computing
    uint32_t a1[4][4];
    uint32_t b1[4][4];

    // Initial load: kgroup0 (kk=0)
#pragma unroll
    for (int nb = 0; nb < 4; ++nb) {
        uint32_t const addr_b = b_load_base + b_ld_off_bytes[nb];
        ldmatrix_x4_trans(b0[nb][0], b0[nb][1], b0[nb][2], b0[nb][3], addr_b);
    }

    {
        uint32_t const addr_a0 = a_load_base + a_ld_base_bytes[0];
        ldmatrix_x4(a0[0][0], a0[0][1], a0[0][2], a0[0][3], addr_a0);
        ldmatrix_x4_off<A_M_DELTA_BYTES>(a0[1][0], a0[1][1], a0[1][2], a0[1][3],
                                         addr_a0);
        ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(a0[2][0], a0[2][1], a0[2][2],
                                             a0[2][3], addr_a0);
        ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(a0[3][0], a0[3][1], a0[3][2],
                                             a0[3][3], addr_a0);
    }

    constexpr int MAIN_ITERS = K_BLOCKS - (N_STAGES - 1);
    static_assert(MAIN_ITERS > 0, "invalid steady-state loop length");

    for (int k_iter = 0; k_iter < MAIN_ITERS; ++k_iter) {
        uint32_t const addr_a1 = a_load_base + a_ld_base_bytes[1];
        uint32_t const a_store = a_store_base + a_smem_off0;
        uint32_t const b_store = b_store_base + b_smem_off0;

        // nb=0: interleave A-side kgroup1 LDSM after each m-slice.
        {
            // Preload B-side kgroup1 for nb=0.
            {
                uint32_t const addr_b = b_load_base + b_ld_off_bytes[0];
                ldmatrix_x4_trans_off<B_KGROUP_DELTA_BYTES>(
                    b1[0][0], b1[0][1], b1[0][2], b1[0][3], addr_b);
            }

            uint32_t const b0_0 = b0[0][0];
            uint32_t const b0_1 = b0[0][1];
            uint32_t const b0_2 = b0[0][2];
            uint32_t const b0_3 = b0[0][3];

            // m=0
            {
                uint32_t const a_0 = a0[0][0];
                uint32_t const a_1r = a0[0][1];
                uint32_t const a_2 = a0[0][2];
                uint32_t const a_3 = a0[0][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[0][0][0], c[0][0][1], a_0, a_1r, a_2, a_3, b0_0, b0_1);
                mma_sync_m16n8k16_row_col_f16(
                    c[0][1][0], c[0][1][1], a_0, a_1r, a_2, a_3, b0_2, b0_3);

                ldmatrix_x4(a1[0][0], a1[0][1], a1[0][2], a1[0][3], addr_a1);
            }

            // m=1
            {
                uint32_t const a_0 = a0[1][0];
                uint32_t const a_1r = a0[1][1];
                uint32_t const a_2 = a0[1][2];
                uint32_t const a_3 = a0[1][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[1][0][0], c[1][0][1], a_0, a_1r, a_2, a_3, b0_0, b0_1);
                mma_sync_m16n8k16_row_col_f16(
                    c[1][1][0], c[1][1][1], a_0, a_1r, a_2, a_3, b0_2, b0_3);

                ldmatrix_x4_off<A_M_DELTA_BYTES>(a1[1][0], a1[1][1], a1[1][2],
                                                 a1[1][3], addr_a1);
            }

            // m=2
            {
                uint32_t const a_0 = a0[2][0];
                uint32_t const a_1r = a0[2][1];
                uint32_t const a_2 = a0[2][2];
                uint32_t const a_3 = a0[2][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[2][0][0], c[2][0][1], a_0, a_1r, a_2, a_3, b0_0, b0_1);
                mma_sync_m16n8k16_row_col_f16(
                    c[2][1][0], c[2][1][1], a_0, a_1r, a_2, a_3, b0_2, b0_3);

                ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(
                    a1[2][0], a1[2][1], a1[2][2], a1[2][3], addr_a1);
            }

            // m=3
            {
                uint32_t const a_0 = a0[3][0];
                uint32_t const a_1r = a0[3][1];
                uint32_t const a_2 = a0[3][2];
                uint32_t const a_3 = a0[3][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[3][0][0], c[3][0][1], a_0, a_1r, a_2, a_3, b0_0, b0_1);
                mma_sync_m16n8k16_row_col_f16(
                    c[3][1][0], c[3][1][1], a_0, a_1r, a_2, a_3, b0_2, b0_3);

                ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(
                    a1[3][0], a1[3][1], a1[3][2], a1[3][3], addr_a1);
            }
        }

        // After nb=0: issue A(2) + B(2) async copies for the next stage.
        cp_async_cg_L2_16B_addr(a_store, gA_pref);
        cp_async_cg_L2_16B_addr(a_store + A_SMEM_ROW_DELTA_BYTES, gA_pref2);
        cp_async_cg_L2_16B_addr(b_store, gB_pref);
        cp_async_cg_L2_16B_addr(b_store + 1 * B_SMEM_VEC_DELTA_BYTES,
                                gB_pref + 1 * B_VEC_DELTA);

        // nb=1
        {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[1];
            ldmatrix_x4_trans_off<B_KGROUP_DELTA_BYTES>(
                b1[1][0], b1[1][1], b1[1][2], b1[1][3], addr_b);

            uint32_t const b0_0 = b0[1][0];
            uint32_t const b0_1 = b0[1][1];
            uint32_t const b0_2 = b0[1][2];
            uint32_t const b0_3 = b0[1][3];
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a_0 = a0[m][0];
                uint32_t const a_1r = a0[m][1];
                uint32_t const a_2 = a0[m][2];
                uint32_t const a_3 = a0[m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][2][0], c[m][2][1], a_0, a_1r, a_2, a_3, b0_0, b0_1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][3][0], c[m][3][1], a_0, a_1r, a_2, a_3, b0_2, b0_3);
            }
        }

        // nb=2
        {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[2];
            ldmatrix_x4_trans_off<B_KGROUP_DELTA_BYTES>(
                b1[2][0], b1[2][1], b1[2][2], b1[2][3], addr_b);

            uint32_t const b0_0 = b0[2][0];
            uint32_t const b0_1 = b0[2][1];
            uint32_t const b0_2 = b0[2][2];
            uint32_t const b0_3 = b0[2][3];
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a_0 = a0[m][0];
                uint32_t const a_1r = a0[m][1];
                uint32_t const a_2 = a0[m][2];
                uint32_t const a_3 = a0[m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][4][0], c[m][4][1], a_0, a_1r, a_2, a_3, b0_0, b0_1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][5][0], c[m][5][1], a_0, a_1r, a_2, a_3, b0_2, b0_3);
            }
        }

        // After nb=2: issue remaining B(2) async copies.
        cp_async_cg_L2_16B_addr(b_store + 2 * B_SMEM_VEC_DELTA_BYTES,
                                gB_pref + 2 * B_VEC_DELTA);
        cp_async_cg_L2_16B_addr(b_store + 3 * B_SMEM_VEC_DELTA_BYTES,
                                gB_pref + 3 * B_VEC_DELTA);

        // nb=3
        {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[3];
            ldmatrix_x4_trans_off<B_KGROUP_DELTA_BYTES>(
                b1[3][0], b1[3][1], b1[3][2], b1[3][3], addr_b);

            uint32_t const b0_0 = b0[3][0];
            uint32_t const b0_1 = b0[3][1];
            uint32_t const b0_2 = b0[3][2];
            uint32_t const b0_3 = b0[3][3];
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a_0 = a0[m][0];
                uint32_t const a_1r = a0[m][1];
                uint32_t const a_2 = a0[m][2];
                uint32_t const a_3 = a0[m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][6][0], c[m][6][1], a_0, a_1r, a_2, a_3, b0_0, b0_1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][7][0], c[m][7][1], a_0, a_1r, a_2, a_3, b0_2, b0_3);
            }
        }

        cp_async_commit_group();

        gA_pref += gA_step;
        gA_pref2 += gA_step;
        gB_pref += gB_step;

        // kgroup1 (kk=16) HMMA using preloaded fragments
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b1_0 = b1[nb][0];
            uint32_t const b1_1 = b1[nb][1];
            uint32_t const b1_2 = b1[nb][2];
            uint32_t const b1_3 = b1[nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a_0 = a1[m][0];
                uint32_t const a_1r = a1[m][1];
                uint32_t const a_2 = a1[m][2];
                uint32_t const a_3 = a1[m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a_0, a_1r, a_2, a_3, b1_0,
                    b1_1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a_0, a_1r, a_2, a_3, b1_2,
                    b1_3);
            }
        }

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

        // Load next iter kgroup0 into a0/b0.
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[nb];
            ldmatrix_x4_trans(b0[nb][0], b0[nb][1], b0[nb][2], b0[nb][3],
                              addr_b);
        }
        {
            uint32_t const addr_a0 = a_load_base + a_ld_base_bytes[0];
            ldmatrix_x4(a0[0][0], a0[0][1], a0[0][2], a0[0][3], addr_a0);
            ldmatrix_x4_off<A_M_DELTA_BYTES>(a0[1][0], a0[1][1], a0[1][2],
                                             a0[1][3], addr_a0);
            ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(a0[2][0], a0[2][1], a0[2][2],
                                                 a0[2][3], addr_a0);
            ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(a0[3][0], a0[3][1], a0[3][2],
                                                 a0[3][3], addr_a0);
        }
    }

    // Tail + epilogue: identical to v83 (using a0/b0 as the "current" regs).
    {
        // k_iter = MAIN_ITERS
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b0_0 = b0[nb][0];
            uint32_t const b0_1 = b0[nb][1];
            uint32_t const b0_2 = b0[nb][2];
            uint32_t const b0_3 = b0[nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a_0 = a0[m][0];
                uint32_t const a_1 = a0[m][1];
                uint32_t const a_2 = a0[m][2];
                uint32_t const a_3 = a0[m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a_0, a_1, a_2, a_3, b0_0, b0_1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a_0, a_1, a_2, a_3, b0_2, b0_3);
            }
        }

#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[nb];
            ldmatrix_x4_trans_off<B_KGROUP_DELTA_BYTES>(
                b0[nb][0], b0[nb][1], b0[nb][2], b0[nb][3], addr_b);
        }
        {
            uint32_t const addr_a0 = a_load_base + a_ld_base_bytes[1];
            ldmatrix_x4(a0[0][0], a0[0][1], a0[0][2], a0[0][3], addr_a0);
            ldmatrix_x4_off<A_M_DELTA_BYTES>(a0[1][0], a0[1][1], a0[1][2],
                                             a0[1][3], addr_a0);
            ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(a0[2][0], a0[2][1], a0[2][2],
                                                 a0[2][3], addr_a0);
            ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(a0[3][0], a0[3][1], a0[3][2],
                                                 a0[3][3], addr_a0);
        }

#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b0_0 = b0[nb][0];
            uint32_t const b0_1 = b0[nb][1];
            uint32_t const b0_2 = b0[nb][2];
            uint32_t const b0_3 = b0[nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a_0 = a0[m][0];
                uint32_t const a_1 = a0[m][1];
                uint32_t const a_2 = a0[m][2];
                uint32_t const a_3 = a0[m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a_0, a_1, a_2, a_3, b0_0, b0_1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a_0, a_1, a_2, a_3, b0_2, b0_3);
            }
        }

        cp_async_wait_group<0>();
        __syncthreads();

        a_load_base += A_STAGE_BYTES;
        b_load_base += B_STAGE_BYTES;

        if (a_load_base == a_end) {
            a_load_base = As_base;
        }
        if (b_load_base == b_end) {
            b_load_base = Bs_base;
        }

#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[nb];
            ldmatrix_x4_trans(b0[nb][0], b0[nb][1], b0[nb][2], b0[nb][3], addr_b);
        }
        {
            uint32_t const addr_a0 = a_load_base + a_ld_base_bytes[0];
            ldmatrix_x4(a0[0][0], a0[0][1], a0[0][2], a0[0][3], addr_a0);
            ldmatrix_x4_off<A_M_DELTA_BYTES>(a0[1][0], a0[1][1], a0[1][2],
                                             a0[1][3], addr_a0);
            ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(a0[2][0], a0[2][1], a0[2][2],
                                                 a0[2][3], addr_a0);
            ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(a0[3][0], a0[3][1], a0[3][2],
                                                 a0[3][3], addr_a0);
        }
    }

    {
        // Final iteration (no more prefetch)
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b0_0 = b0[nb][0];
            uint32_t const b0_1 = b0[nb][1];
            uint32_t const b0_2 = b0[nb][2];
            uint32_t const b0_3 = b0[nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a_0 = a0[m][0];
                uint32_t const a_1 = a0[m][1];
                uint32_t const a_2 = a0[m][2];
                uint32_t const a_3 = a0[m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a_0, a_1, a_2, a_3, b0_0, b0_1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a_0, a_1, a_2, a_3, b0_2, b0_3);
            }
        }

#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[nb];
            ldmatrix_x4_trans_off<B_KGROUP_DELTA_BYTES>(
                b0[nb][0], b0[nb][1], b0[nb][2], b0[nb][3], addr_b);
        }
        {
            uint32_t const addr_a0 = a_load_base + a_ld_base_bytes[1];
            ldmatrix_x4(a0[0][0], a0[0][1], a0[0][2], a0[0][3], addr_a0);
            ldmatrix_x4_off<A_M_DELTA_BYTES>(a0[1][0], a0[1][1], a0[1][2],
                                             a0[1][3], addr_a0);
            ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(a0[2][0], a0[2][1], a0[2][2],
                                                 a0[2][3], addr_a0);
            ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(a0[3][0], a0[3][1], a0[3][2],
                                                 a0[3][3], addr_a0);
        }

#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b0_0 = b0[nb][0];
            uint32_t const b0_1 = b0[nb][1];
            uint32_t const b0_2 = b0[nb][2];
            uint32_t const b0_3 = b0[nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a_0 = a0[m][0];
                uint32_t const a_1 = a0[m][1];
                uint32_t const a_2 = a0[m][2];
                uint32_t const a_3 = a0[m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a_0, a_1, a_2, a_3, b0_0, b0_1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a_0, a_1, a_2, a_3, b0_2, b0_3);
            }
        }
    }

    // ------------------------------------------------------------
    // Epilogue: scratch + vec8 stores (same as v83)
    // ------------------------------------------------------------
    __syncthreads();

    constexpr int SMEM_C_PAD = 8;               // half
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

