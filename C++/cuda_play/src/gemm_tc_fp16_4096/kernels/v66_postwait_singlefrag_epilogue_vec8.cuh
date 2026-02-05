#pragma once

// v66: build on v65 (single-fragment register footprint reduction) and add a
// CUTLASS-inspired epilogue:
//
//   accumulators (registers) -> shared scratch (row-major tile)
//   shared scratch           -> global C via vectorized 16B stores (8 half)
//
// Motivation:
// - Our v52/v65 kernels compute reasonably well (~180 TFLOPS) but are still
//   behind the CUTLASS reference (~193–202 TFLOPS on this machine).
// - CUTLASS epilogues typically use wider memory accesses (e.g. 8 half / 128b
//   per thread) to reduce the number of global store instructions.
// - Our direct epilogue stores 2 half (32b) at a time, resulting in many
//   `st.global.b32` instructions, which can contribute to `Stall LG Throttle`.
//
// Design:
// - Reuse the existing ~72KB shared allocation (As+Bs). After the mainloop we
//   no longer need As/Bs, so we reuse the *beginning* of shared memory as a
//   128x256 row-major scratch tile for C.
// - Phase 1: each thread writes its register fragments to scratch using the
//   same mapping as the old global-store epilogue (but target = shared).
// - Phase 2: each thread stores 16 vectors, each vector = 8 half = 16B, using
//   `uint4` global stores (aligned because col is multiple of 8).
//
// Teaching notes:
// - "Scratch then store" is a common CUTLASS epilogue pattern:
//   it lets you transform from the Tensor Core fragment layout (registers)
//   into a contiguous row-major tile layout in shared, and then do wide,
//   coalesced global stores.
// - Vector width matters: a 128x256 tile has 32768 half elements. Writing 2 half
//   at a time (32-bit) needs 16384 store instructions per CTA. Writing 8 half
//   at a time (128-bit) reduces that by 4x.
// - Alignment requirements for `uint4` stores:
//   - address must be 16B aligned
//   - col index must be a multiple of 8 half (16B)
//   The thread-map in this epilogue is designed around those constraints.
template <int N_STAGES>
__launch_bounds__(256)
__global__ void
gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(N_STAGES >= 2, "cp.async pipeline needs at least 2 stages");
    static_assert(N_STAGES == 3, "v66 is specialized for N_STAGES=3");

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

    constexpr int A_INT4_PER_ROW = TILE_K / 8; // 4
    constexpr int A_INT4_TOTAL = (TILE_M * TILE_K) / 8; // 512
    constexpr int A_ITERS = A_INT4_TOTAL / THREADS_PER_BLOCK; // 2

    constexpr int B_INT4_PER_ROW = TILE_N / 8; // 32
    constexpr int B_INT4_TOTAL = (TILE_K * TILE_N) / 8; // 1024
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

    uint32_t aReg[4][4];
    uint32_t bReg[4][4];

    // Initial load: kgroup0 (kk=0) from stage 0.
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
    static_assert(MAIN_ITERS > 0, "invalid steady-state loop length");

    for (int k_iter = 0; k_iter < MAIN_ITERS; ++k_iter) {
        // MMA: kgroup0 (kk=0).
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

        // Prefetch next stage.
        int const k_prefetch = k_iter + (N_STAGES - 1);
        int const k_tile = k_prefetch * TILE_K;
        __half const *gA_pref = A + block_m * kK + k_tile;
        __half const *gB_pref = B + k_tile * kN + block_n;

#pragma unroll
        for (int it = 0; it < A_ITERS; ++it) {
            cp_async_cg_L2_16B_addr(a_store_base + a_smem_off_bytes[it],
                                    gA_pref + a_gmem_delta[it]);
        }
#pragma unroll
        for (int it = 0; it < B_ITERS; ++it) {
            cp_async_cg_L2_16B_addr(b_store_base + b_smem_off_bytes[it],
                                    gB_pref + b_gmem_delta[it]);
        }
        cp_async_commit_group();

        // Load kgroup1 (kk=16) into the same registers (overwrite).
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

        // MMA: kgroup1 (kk=16).
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

        // Load next iteration's kgroup0 (kk=0).
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

    // Tail: same logic as v65 (N_STAGES=3 specialization).
    {
        // k_iter = MAIN_ITERS: compute both kgroups, then drain last cp.async.
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
        // Final iteration: compute both kgroups, no more prefetch.
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

    // -----------------------------
    // Epilogue: scratch + vec8 stores
    // -----------------------------
    //
    // We reuse the shared allocation:
    //   As (24KB) + Bs (48KB) = 72KB > 64KB needed for 128x256 half tile.
    // Treat the beginning as a row-major C tile: [TILE_M][TILE_N].
    __syncthreads();

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

            int const idx0 = (row0 * TILE_N + col0) >> 1; // 2 half per u32
            int const idx1 = (row1 * TILE_N + col0) >> 1;

            smem_C_u32[idx0] = c[m][n][0];
            smem_C_u32[idx1] = c[m][n][1];
        }
    }

    __syncthreads();

    constexpr int VEC_ELEMS = 8; // half
    constexpr int VEC_COUNT = (TILE_M * TILE_N) / VEC_ELEMS; // 4096
    constexpr int VEC_ITERS = VEC_COUNT / THREADS_PER_BLOCK; // 16
    static_assert((TILE_N % VEC_ELEMS) == 0, "vector width must divide TILE_N");
    static_assert((VEC_COUNT % THREADS_PER_BLOCK) == 0,
                  "vector count must be divisible by threads per block");

#pragma unroll
    for (int it = 0; it < VEC_ITERS; ++it) {
        int const vec_idx = tid + it * THREADS_PER_BLOCK; // 0..4095
        int const row = vec_idx >> 5;                     // / 32
        int const col = (vec_idx & 31) << 3;              // * 8

        uint4 const v =
            *reinterpret_cast<uint4 const *>(smem_C + row * TILE_N + col);

        *reinterpret_cast<uint4 *>(C + (block_m + row) * kN + (block_n + col)) =
            v;
    }
}
