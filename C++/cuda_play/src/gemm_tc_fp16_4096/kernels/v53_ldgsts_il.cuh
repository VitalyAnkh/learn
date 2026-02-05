#pragma once

// v53: v52 + "LDGSTS/HMMA interleaved" steady-state mainloop (CUTLASS-inspired).
//
// Motivation:
// - cuobjdump of the CUTLASS/CUTE reference (`/tmp/cute_gemm_fp16`) shows that
//   `LDGSTS` (cp.async gmem->smem) and `HMMA` are **interleaved** inside the
//   mac-loop, rather than executing a contiguous burst of async copies.
// - Our v49/v52 schedule still issues all 6 `cp.async` instructions as a burst
//   per K-iteration, which can create a phase where *all* warps do copy and the
//   tensor pipe goes idle.
//
// Design:
// - Same TB/Warp tile and shared-memory layout as v49/v52.
// - Only changes the **steady-state schedule**:
//   - kgroup0 HMMA, with selected `cp.async` instructions inserted into the
//     early HMMA stream
//   - `cp.async.commit_group` is also placed early (after the last async)
//   - finish kgroup0 HMMA
//   - kgroup1 HMMA
//   - wait_group + barrier
//
// Notes:
// - This is intentionally "hand scheduled" for teaching. The concrete insertion
//   points are heuristic; iterate based on SASS + benchmark.
template <int N_STAGES>
__launch_bounds__(256)
__global__ void
gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_il(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(N_STAGES >= 2, "cp.async pipeline needs at least 2 stages");
    static_assert(N_STAGES == 3, "v53 is specialized for N_STAGES=3");

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
    if (warp_id >= WARPS_PER_BLOCK) {
        return;
    }

    int const warp_row = warp_id >> 2; // 0..1
    int const warp_col = warp_id & 3;  // 0..3

    // Swapped mapping:
    // - blockIdx.x enumerates M tiles (0..31)
    // - blockIdx.y enumerates N tiles (0..15)
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

    constexpr int A_INT4_PER_ROW = TILE_K / 8;            // 4
    constexpr int A_INT4_TOTAL = (TILE_M * TILE_K) / 8;   // 512
    constexpr int A_ITERS = A_INT4_TOTAL / THREADS_PER_BLOCK; // 2

    constexpr int B_INT4_PER_ROW = TILE_N / 8;            // 32
    constexpr int B_INT4_TOTAL = (TILE_K * TILE_N) / 8;   // 1024
    constexpr int B_ITERS = B_INT4_TOTAL / THREADS_PER_BLOCK; // 4

    int a_gmem_delta[A_ITERS];
    uint32_t a_smem_off_bytes[A_ITERS];
#pragma unroll
    for (int it = 0; it < A_ITERS; ++it) {
        int const idx = tid + it * THREADS_PER_BLOCK;
        int const a_row = idx / A_INT4_PER_ROW;
        int const a_seg = idx - a_row * A_INT4_PER_ROW;
        int const a_col = a_seg * 8;
        a_gmem_delta[it] = a_row * kK + a_col;
        a_smem_off_bytes[it] =
            static_cast<uint32_t>(tensorop_rm_offset<32, TILE_K>(a_row, a_col)
                                  << 1);
    }

    int b_gmem_delta[B_ITERS];
    uint32_t b_smem_off_bytes[B_ITERS];
#pragma unroll
    for (int it = 0; it < B_ITERS; ++it) {
        int const idx = tid + it * THREADS_PER_BLOCK;
        int const b_row = idx / B_INT4_PER_ROW;
        int const b_seg = idx - b_row * B_INT4_PER_ROW;
        int const b_col = b_seg * 8;
        b_gmem_delta[it] = b_row * kN + b_col;
        b_smem_off_bytes[it] =
            static_cast<uint32_t>(tensorop_rm_offset<64, TILE_N>(b_row, b_col)
                                  << 1);
    }

    uint32_t a_ld_off_bytes[2][4];
    uint32_t b_ld_off_bytes[2][4];
#pragma unroll
    for (int kk_idx = 0; kk_idx < 2; ++kk_idx) {
        int const kk = kk_idx * 16;
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            int const b_row = kk + (lane_id & 15);
            int const b_col = warp_col * 64 + nb * 16 + ((lane_id >> 4) * 8);
            b_ld_off_bytes[kk_idx][nb] = static_cast<uint32_t>(
                tensorop_rm_offset<64, TILE_N>(b_row, b_col) << 1);
        }
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            int const a_row = warp_row * 64 + m * 16 + (lane_id & 15);
            int const a_col = kk + ((lane_id >> 4) * 8);
            a_ld_off_bytes[kk_idx][m] = static_cast<uint32_t>(
                tensorop_rm_offset<32, TILE_K>(a_row, a_col) << 1);
        }
    }

    // Prologue: prefetch first (N_STAGES-1) K blocks.
#pragma unroll
    for (int stage = 0; stage < (N_STAGES - 1); ++stage) {
        int const k_tile = stage * TILE_K;
        uint32_t const a_store_base =
            As_base + static_cast<uint32_t>(stage * A_STAGE_BYTES);
        uint32_t const b_store_base =
            Bs_base + static_cast<uint32_t>(stage * B_STAGE_BYTES);

        __half const *gA_base = A + block_m * kK + k_tile;
        __half const *gB_base = B + k_tile * kN + block_n;

#pragma unroll
        for (int it = 0; it < A_ITERS; ++it) {
            cp_async_cg_L2_16B_addr(a_store_base + a_smem_off_bytes[it],
                                    gA_base + a_gmem_delta[it]);
        }
#pragma unroll
        for (int it = 0; it < B_ITERS; ++it) {
            cp_async_cg_L2_16B_addr(b_store_base + b_smem_off_bytes[it],
                                    gB_base + b_gmem_delta[it]);
        }
        cp_async_commit_group();
    }

    // Wait until stage 0 is ready.
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

    // Double-buffered fragments: slot 0 = kgroup0, slot 1 = kgroup1.
    uint32_t aReg[2][4][4];
    uint32_t bReg[2][4][4];

    // Initial load: kgroup0 (kk=0) into slot 0 from stage 0.
#pragma unroll
    for (int nb = 0; nb < 4; ++nb) {
        uint32_t const addr_b = b_load_base + b_ld_off_bytes[0][nb];
        ldmatrix_x4_trans(bReg[0][nb][0], bReg[0][nb][1], bReg[0][nb][2],
                          bReg[0][nb][3], addr_b);
    }
#pragma unroll
    for (int m = 0; m < 4; ++m) {
        uint32_t const addr_a = a_load_base + a_ld_off_bytes[0][m];
        ldmatrix_x4(aReg[0][m][0], aReg[0][m][1], aReg[0][m][2], aReg[0][m][3],
                    addr_a);
    }

    constexpr int MAIN_ITERS = K_BLOCKS - (N_STAGES - 1);
    static_assert(MAIN_ITERS > 0, "invalid steady-state loop length");

    // Steady-state loop.
    for (int k_iter = 0; k_iter < MAIN_ITERS; ++k_iter) {
        uint32_t const a_load_base_k = a_load_base;
        uint32_t const b_load_base_k = b_load_base;

        // Load kgroup1 (kk=16) into slot 1.
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base_k + b_ld_off_bytes[1][nb];
            ldmatrix_x4_trans(bReg[1][nb][0], bReg[1][nb][1], bReg[1][nb][2],
                              bReg[1][nb][3], addr_b);
        }
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base_k + a_ld_off_bytes[1][m];
            ldmatrix_x4(aReg[1][m][0], aReg[1][m][1], aReg[1][m][2],
                        aReg[1][m][3], addr_a);
        }

        // Prefetch pointer (always in-bounds in steady-state).
        int const k_prefetch = k_iter + (N_STAGES - 1); // always < K_BLOCKS
        int const k_tile = k_prefetch * TILE_K;
        __half const *gA_pref = A + block_m * kK + k_tile;
        __half const *gB_pref = B + k_tile * kN + block_n;

        // MMA: kgroup0 (kk=0) using slot 0 (B-reuse order).
        // We also interleave the 6 cp.async ops into the early HMMA stream and
        // place `commit_group` immediately after the last async copy.
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b0 = bReg[0][nb][0];
            uint32_t const b1 = bReg[0][nb][1];
            uint32_t const b2 = bReg[0][nb][2];
            uint32_t const b3 = bReg[0][nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a0 = aReg[0][m][0];
                uint32_t const a1 = aReg[0][m][1];
                uint32_t const a2 = aReg[0][m][2];
                uint32_t const a3 = aReg[0][m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3, b0, b1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3, b2, b3);

                // Hand-scheduled interleave points (heuristic).
                if (nb == 0 && m == 0) {
                    cp_async_cg_L2_16B_addr(b_store_base + b_smem_off_bytes[0],
                                            gB_pref + b_gmem_delta[0]);
                } else if (nb == 0 && m == 1) {
                    cp_async_cg_L2_16B_addr(b_store_base + b_smem_off_bytes[1],
                                            gB_pref + b_gmem_delta[1]);
                } else if (nb == 0 && m == 2) {
                    cp_async_cg_L2_16B_addr(a_store_base + a_smem_off_bytes[0],
                                            gA_pref + a_gmem_delta[0]);
                } else if (nb == 0 && m == 3) {
                    cp_async_cg_L2_16B_addr(b_store_base + b_smem_off_bytes[2],
                                            gB_pref + b_gmem_delta[2]);
                } else if (nb == 1 && m == 0) {
                    cp_async_cg_L2_16B_addr(b_store_base + b_smem_off_bytes[3],
                                            gB_pref + b_gmem_delta[3]);
                } else if (nb == 1 && m == 1) {
                    cp_async_cg_L2_16B_addr(a_store_base + a_smem_off_bytes[1],
                                            gA_pref + a_gmem_delta[1]);
                    cp_async_commit_group();
                }
            }
        }

        // MMA: kgroup1 (kk=16) using slot 1 (B-reuse order).
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b0 = bReg[1][nb][0];
            uint32_t const b1 = bReg[1][nb][1];
            uint32_t const b2 = bReg[1][nb][2];
            uint32_t const b3 = bReg[1][nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a0 = aReg[1][m][0];
                uint32_t const a1 = aReg[1][m][1];
                uint32_t const a2 = aReg[1][m][2];
                uint32_t const a3 = aReg[1][m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3, b0, b1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3, b2, b3);
            }
        }

        // Now wait/sync for the next stage to become visible.
        cp_async_wait_group<N_STAGES - 2>();
        __syncthreads();

        // Advance stage pointers (add+wrap).
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

        // Load next iteration's kgroup0 (kk=0) into slot 0 (new stage).
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[0][nb];
            ldmatrix_x4_trans(bReg[0][nb][0], bReg[0][nb][1], bReg[0][nb][2],
                              bReg[0][nb][3], addr_b);
        }
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base + a_ld_off_bytes[0][m];
            ldmatrix_x4(aReg[0][m][0], aReg[0][m][1], aReg[0][m][2],
                        aReg[0][m][3], addr_a);
        }
    }

    // Tail and final iteration: keep v52 logic (no interleaving) for simplicity.
    // Tail: two remaining iterations when N_STAGES=3.
    // At this point we have slot0 loaded for k_iter = MAIN_ITERS.
    {
        // Iteration k_iter = MAIN_ITERS (e.g., 126): compute, then drain last stage.
        uint32_t const a_load_base_k = a_load_base;
        uint32_t const b_load_base_k = b_load_base;

        // Load kgroup1 (kk=16) into slot 1 (current stage).
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base_k + b_ld_off_bytes[1][nb];
            ldmatrix_x4_trans(bReg[1][nb][0], bReg[1][nb][1], bReg[1][nb][2],
                              bReg[1][nb][3], addr_b);
        }
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base_k + a_ld_off_bytes[1][m];
            ldmatrix_x4(aReg[1][m][0], aReg[1][m][1], aReg[1][m][2],
                        aReg[1][m][3], addr_a);
        }

        // MMA: kgroup0 (kk=0) using slot 0.
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b0 = bReg[0][nb][0];
            uint32_t const b1 = bReg[0][nb][1];
            uint32_t const b2 = bReg[0][nb][2];
            uint32_t const b3 = bReg[0][nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a0 = aReg[0][m][0];
                uint32_t const a1 = aReg[0][m][1];
                uint32_t const a2 = aReg[0][m][2];
                uint32_t const a3 = aReg[0][m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3, b0, b1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3, b2, b3);
            }
        }

        // MMA: kgroup1 (kk=16) using slot 1.
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b0 = bReg[1][nb][0];
            uint32_t const b1 = bReg[1][nb][1];
            uint32_t const b2 = bReg[1][nb][2];
            uint32_t const b3 = bReg[1][nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a0 = aReg[1][m][0];
                uint32_t const a1 = aReg[1][m][1];
                uint32_t const a2 = aReg[1][m][2];
                uint32_t const a3 = aReg[1][m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3, b0, b1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3, b2, b3);
            }
        }

        // Fully drain remaining cp.async (the last stage we prefetched in steady-state).
        cp_async_wait_group<0>();
        __syncthreads();

        // Advance stage pointers to the last stage and load next iter's kgroup0.
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
            ldmatrix_x4_trans(bReg[0][nb][0], bReg[0][nb][1], bReg[0][nb][2],
                              bReg[0][nb][3], addr_b);
        }
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base + a_ld_off_bytes[0][m];
            ldmatrix_x4(aReg[0][m][0], aReg[0][m][1], aReg[0][m][2],
                        aReg[0][m][3], addr_a);
        }
    }

    {
        // Final iteration (k_iter = K_BLOCKS-1 = 127): no prefetch, no barrier.
        uint32_t const a_load_base_k = a_load_base;
        uint32_t const b_load_base_k = b_load_base;

        // Load kgroup1 into slot 1.
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base_k + b_ld_off_bytes[1][nb];
            ldmatrix_x4_trans(bReg[1][nb][0], bReg[1][nb][1], bReg[1][nb][2],
                              bReg[1][nb][3], addr_b);
        }
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base_k + a_ld_off_bytes[1][m];
            ldmatrix_x4(aReg[1][m][0], aReg[1][m][1], aReg[1][m][2],
                        aReg[1][m][3], addr_a);
        }

        // MMA: kgroup0 slot 0.
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b0 = bReg[0][nb][0];
            uint32_t const b1 = bReg[0][nb][1];
            uint32_t const b2 = bReg[0][nb][2];
            uint32_t const b3 = bReg[0][nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a0 = aReg[0][m][0];
                uint32_t const a1 = aReg[0][m][1];
                uint32_t const a2 = aReg[0][m][2];
                uint32_t const a3 = aReg[0][m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3, b0, b1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3, b2, b3);
            }
        }

        // MMA: kgroup1 slot 1.
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const b0 = bReg[1][nb][0];
            uint32_t const b1 = bReg[1][nb][1];
            uint32_t const b2 = bReg[1][nb][2];
            uint32_t const b3 = bReg[1][nb][3];
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const a0 = aReg[1][m][0];
                uint32_t const a1 = aReg[1][m][1];
                uint32_t const a2 = aReg[1][m][2];
                uint32_t const a3 = aReg[1][m][3];
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3, b0, b1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3, b2, b3);
            }
        }
    }

    // Store accumulators.
    int const group_id = lane_id >> 2;
    int const tid_in_group = lane_id & 3;
    int const c_row0 = group_id;
    int const c_row1 = group_id + 8;
    int const c_col0 = tid_in_group * 2;

#pragma unroll
    for (int m = 0; m < 4; ++m) {
        int const base_m = block_m + warp_row * 64 + m * 16;
#pragma unroll
        for (int n = 0; n < 8; ++n) {
            int const base_n = block_n + warp_col * 64 + n * 8;
            int const g_row0 = base_m + c_row0;
            int const g_row1 = base_m + c_row1;
            int const g_col0 = base_n + c_col0;
            uint32_t *c_ptr0 = reinterpret_cast<uint32_t *>(
                C + g_row0 * kN + g_col0);
            uint32_t *c_ptr1 = reinterpret_cast<uint32_t *>(
                C + g_row1 * kN + g_col0);
            *c_ptr0 = c[m][n][0];
            *c_ptr1 = c[m][n][1];
        }
    }
}

