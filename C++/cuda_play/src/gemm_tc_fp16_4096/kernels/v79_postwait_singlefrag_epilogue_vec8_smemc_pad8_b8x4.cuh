#pragma once

// v79: v71 + change B's cp.async thread-map to a CUTLASS-like "8x4 warp-raked"
// pattern (while keeping A mapping the same as v71).
//
// Motivation:
// - CUTLASS/CUTE hits ~197 TFLOPS on this exact 4096^3 problem, while our best
//   self-written kernel (v70/v71) is ~187 TFLOPS.
// - Disassembly shows CUTLASS issues B-side `LDGSTS` with "base + 0x80/0x100/..."
//   style addressing, suggesting each thread's 4 x 16B copies are *within the
//   same B row*, spaced by 128B (8 vectors), rather than hopping across K rows.
// - Our original B mapping (v71) uses `idx = tid + it*256`, which makes each
//   thread copy the same column segment across 4 different rows (row+8, +16, +24),
//   incurring large per-copy pointer arithmetic and potentially a less friendly
//   shared-bank pattern.
//
// Technique:
// - Keep A mapping unchanged (warp shape 4x8 on A's 128x32 tile).
// - For B tile (32x256, row-major), remap threads so each warp covers:
//     - 4 B-rows (lane_id >> 3), and
//     - 8 "groups" within the row (lane_id & 7),
//   and each thread copies 4 vectors at vec indices: g + {0,8,16,24}.
//
// Teaching notes:
// - This remap is about *instruction overhead* and *addressing modes*:
//   - Each thread issues 4 x 16B `cp.async` for B.
//   - By keeping all 4 copies within the same B row, the per-copy address
//     deltas become simple constants (+0, +128B, +256B, +384B). Later kernels
//     exploit this to generate "base + immediate" `LDGSTS` addressing, reducing
//     integer address math in the hot loop.
// - Warp-level view:
//   - One warp covers 4 rows × 64 columns = 256 half = 512B per `it`.
//   - With 4 iterations, each warp copies a full 4-row strip of the 32x256 B
//     tile (4 * 512B = 2048B per warp; 8 warps => 16KB per CTA stage).
//
// Everything else matches v71:
// - 128x256x32 TB, 8 warps (2x4 warp grid)
// - `cp.async.cg.shared.global.L2::128B` pipeline, 3 stages
// - `ldmatrix` + `mma.sync` (Tensor Cores, HMMA in SASS)
// - FP16 accumulate + FP16 store
// - Shared scratch + vec8 (16B) global stores, scratch LD padded by +8 half
template <int N_STAGES>
__launch_bounds__(256)
__global__ void
gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(N_STAGES >= 2, "cp.async pipeline needs at least 2 stages");
    static_assert(N_STAGES == 3, "v79 is specialized for N_STAGES=3");

    constexpr int TILE_M = 128;
    constexpr int TILE_N = 256;
    constexpr int TILE_K = 32; // half
    constexpr int K_BLOCKS = kK / TILE_K;

    constexpr int WARPS_PER_BLOCK = 8;
    constexpr int THREADS_PER_BLOCK = WARPS_PER_BLOCK * 32;

    constexpr int A_STAGE_ELEMS = TILE_M * TILE_K; // 4096 half
    constexpr int B_STAGE_ELEMS = TILE_K * TILE_N; // 8192 half
    constexpr int A_STAGE_BYTES =
        A_STAGE_ELEMS * static_cast<int>(sizeof(__half));
    constexpr int B_STAGE_BYTES =
        B_STAGE_ELEMS * static_cast<int>(sizeof(__half));

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

    constexpr int A_INT4_PER_ROW = TILE_K / 8;                // 4
    constexpr int A_INT4_TOTAL = (TILE_M * TILE_K) / 8;       // 512
    constexpr int A_ITERS = A_INT4_TOTAL / THREADS_PER_BLOCK; // 2

    constexpr int B_ITERS = 4; // 8192 half / 8 half per access / 256 threads
    static_assert((TILE_K * TILE_N) / 8 == THREADS_PER_BLOCK * B_ITERS,
                  "B mapping expects 4x16B copies per thread");

    // -----------------------------
    // A copy mapping (unchanged)
    // -----------------------------
    int a_gmem_delta_bytes[A_ITERS];
    uint32_t a_smem_off_bytes[A_ITERS];
#pragma unroll
    for (int it = 0; it < A_ITERS; ++it) {
        int const idx = tid + it * THREADS_PER_BLOCK;
        int const a_row = idx / A_INT4_PER_ROW;
        int const a_seg = idx - a_row * A_INT4_PER_ROW;
        int const a_col = a_seg * 8;
        a_gmem_delta_bytes[it] =
            (a_row * kK + a_col) * static_cast<int>(sizeof(__half));
        a_smem_off_bytes[it] =
            static_cast<uint32_t>(tensorop_rm_offset<32, TILE_K>(a_row, a_col)
                                  << 1);
    }

    // -----------------------------
    // B copy mapping (new): per-thread row, and 4 vec cols spaced by +8 vecs
    // -----------------------------
    int b_gmem_delta_bytes[B_ITERS];
    uint32_t b_smem_off_bytes[B_ITERS];
    int const b_row = tid >> 3;         // 0..31 (4 rows per warp)
    int const b_group = tid & 7;        // 0..7
    int const b_col_base = b_group * 8; // in half elements (1 vec == 8 half)

#pragma unroll
    for (int it = 0; it < B_ITERS; ++it) {
        int const b_col = b_col_base + it * 64; // +8 vecs == +64 half == +128B
        b_gmem_delta_bytes[it] =
            (b_row * kN + b_col) * static_cast<int>(sizeof(__half));
        b_smem_off_bytes[it] =
            static_cast<uint32_t>(tensorop_rm_offset<64, TILE_N>(b_row, b_col)
                                  << 1);
    }

    // -----------------------------
    // ldmatrix offsets (compute warps)
    // -----------------------------
    uint32_t a_ld_off_bytes[2][4];
    uint32_t b_ld_off_bytes[2][4];
#pragma unroll
    for (int kk_idx = 0; kk_idx < 2; ++kk_idx) {
        int const kk = kk_idx * 16;
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            int const b_r = kk + (lane_id & 15);
            int const b_c = warp_col * 64 + nb * 16 + ((lane_id >> 4) * 8);
            b_ld_off_bytes[kk_idx][nb] = static_cast<uint32_t>(
                tensorop_rm_offset<64, TILE_N>(b_r, b_c) << 1);
        }
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            int const a_r = warp_row * 64 + m * 16 + (lane_id & 15);
            int const a_c = kk + ((lane_id >> 4) * 8);
            a_ld_off_bytes[kk_idx][m] = static_cast<uint32_t>(
                tensorop_rm_offset<32, TILE_K>(a_r, a_c) << 1);
        }
    }

    // -----------------------------
    // Prologue: prefetch first (N_STAGES-1) K blocks
    // -----------------------------
#pragma unroll
    for (int stage = 0; stage < (N_STAGES - 1); ++stage) {
        int const k_tile = stage * TILE_K;
        uint32_t const a_store_base =
            As_base + static_cast<uint32_t>(stage * A_STAGE_BYTES);
        uint32_t const b_store_base =
            Bs_base + static_cast<uint32_t>(stage * B_STAGE_BYTES);

        uint64_t const gA_base =
            reinterpret_cast<uint64_t>(A) +
            static_cast<uint64_t>((block_m * kK + k_tile) *
                                  static_cast<int>(sizeof(__half)));
        uint64_t const gB_base =
            reinterpret_cast<uint64_t>(B) +
            static_cast<uint64_t>((k_tile * kN + block_n) *
                                  static_cast<int>(sizeof(__half)));

#pragma unroll
        for (int it = 0; it < A_ITERS; ++it) {
            cp_async_cg_L2_16B_addr(
                a_store_base + a_smem_off_bytes[it],
                reinterpret_cast<void const *>(gA_base +
                                               a_gmem_delta_bytes[it]));
        }
#pragma unroll
        for (int it = 0; it < B_ITERS; ++it) {
            cp_async_cg_L2_16B_addr(
                b_store_base + b_smem_off_bytes[it],
                reinterpret_cast<void const *>(gB_base +
                                               b_gmem_delta_bytes[it]));
        }
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

    // Running gmem prefetch pointers (bytes).
    uint64_t gA_pref =
        reinterpret_cast<uint64_t>(A) +
        static_cast<uint64_t>((block_m * kK + (N_STAGES - 1) * TILE_K) *
                              static_cast<int>(sizeof(__half)));
    uint64_t gB_pref =
        reinterpret_cast<uint64_t>(B) +
        static_cast<uint64_t>(((N_STAGES - 1) * TILE_K * kN + block_n) *
                              static_cast<int>(sizeof(__half)));

    constexpr int gA_step_bytes = TILE_K * static_cast<int>(sizeof(__half));
    constexpr int gB_step_bytes =
        TILE_K * kN * static_cast<int>(sizeof(__half));

    uint32_t aReg[4][4];
    uint32_t bReg[4][4];

#pragma unroll
    for (int nb = 0; nb < 4; ++nb) {
        uint32_t const addr_b = b_load_base + b_ld_off_bytes[0][nb];
        ldmatrix_x4_trans(bReg[nb][0], bReg[nb][1], bReg[nb][2], bReg[nb][3],
                          addr_b);
    }
#pragma unroll
    for (int m = 0; m < 4; ++m) {
        uint32_t const addr_a = a_load_base + a_ld_off_bytes[0][m];
        ldmatrix_x4(aReg[m][0], aReg[m][1], aReg[m][2], aReg[m][3], addr_a);
    }

    constexpr int MAIN_ITERS = K_BLOCKS - (N_STAGES - 1);

    for (int k_iter = 0; k_iter < MAIN_ITERS; ++k_iter) {
        // MMA kgroup0
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

        // Prefetch stage k_iter + 2 using running pointers.
#pragma unroll
        for (int it = 0; it < A_ITERS; ++it) {
            cp_async_cg_L2_16B_addr(
                a_store_base + a_smem_off_bytes[it],
                reinterpret_cast<void const *>(gA_pref +
                                               a_gmem_delta_bytes[it]));
        }
#pragma unroll
        for (int it = 0; it < B_ITERS; ++it) {
            cp_async_cg_L2_16B_addr(
                b_store_base + b_smem_off_bytes[it],
                reinterpret_cast<void const *>(gB_pref +
                                               b_gmem_delta_bytes[it]));
        }
        cp_async_commit_group();

        gA_pref += gA_step_bytes;
        gB_pref += gB_step_bytes;

        // Load kgroup1 into same regs (overwrite)
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[1][nb];
            ldmatrix_x4_trans(bReg[nb][0], bReg[nb][1], bReg[nb][2],
                              bReg[nb][3], addr_b);
        }
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base + a_ld_off_bytes[1][m];
            ldmatrix_x4(aReg[m][0], aReg[m][1], aReg[m][2], aReg[m][3],
                        addr_a);
        }

        // MMA kgroup1
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

#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[0][nb];
            ldmatrix_x4_trans(bReg[nb][0], bReg[nb][1], bReg[nb][2],
                              bReg[nb][3], addr_b);
        }
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base + a_ld_off_bytes[0][m];
            ldmatrix_x4(aReg[m][0], aReg[m][1], aReg[m][2], aReg[m][3],
                        addr_a);
        }
    }

    // Tail + epilogue: identical to v71/v70 (copy-pasted from v70 for brevity).
    // (We keep it in this file for self-contained compilation.)

    {
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

#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[1][nb];
            ldmatrix_x4_trans(bReg[nb][0], bReg[nb][1], bReg[nb][2],
                              bReg[nb][3], addr_b);
        }
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base + a_ld_off_bytes[1][m];
            ldmatrix_x4(aReg[m][0], aReg[m][1], aReg[m][2], aReg[m][3],
                        addr_a);
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
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[0][nb];
            ldmatrix_x4_trans(bReg[nb][0], bReg[nb][1], bReg[nb][2],
                              bReg[nb][3], addr_b);
        }
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base + a_ld_off_bytes[0][m];
            ldmatrix_x4(aReg[m][0], aReg[m][1], aReg[m][2], aReg[m][3],
                        addr_a);
        }
    }

    {
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

#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[1][nb];
            ldmatrix_x4_trans(bReg[nb][0], bReg[nb][1], bReg[nb][2],
                              bReg[nb][3], addr_b);
        }
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base + a_ld_off_bytes[1][m];
            ldmatrix_x4(aReg[m][0], aReg[m][1], aReg[m][2], aReg[m][3],
                        addr_a);
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

    __syncthreads();

    constexpr int SMEM_C_PAD = 8;
    constexpr int SMEM_C_LD = TILE_N + SMEM_C_PAD; // 264
    constexpr int SMEM_C_ELEMS = TILE_M * SMEM_C_LD;
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

    constexpr int VEC_ELEMS = 8;
    constexpr int VEC_COUNT = (TILE_M * TILE_N) / VEC_ELEMS;
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
