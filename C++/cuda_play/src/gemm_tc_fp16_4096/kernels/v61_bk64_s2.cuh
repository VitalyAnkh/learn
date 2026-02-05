#pragma once

// v61: 128x256 output tile, but with a larger K tile (BK=64) and 2-stage
// ping-pong `cp.async` pipeline.
//
// Motivation:
// - For fixed 4096^3, our BK=32 kernels execute 128 iterations, each with a
//   `cp.async.wait_group + __syncthreads()` barrier.
// - CUTLASS' best kernels are heavily scheduled; one possible lever for our
//   simpler code is to **reduce barrier frequency** by increasing BK.
//
// Tradeoffs:
// - BK=64 doubles per-stage shared memory, so with N_STAGES=2 we land at ~96KB
//   shared and require sm_89 opt-in shared memory.
// - Still only 1 CTA/SM due to shared size, but each barrier is amortized over
//   2x more HMMA work.
template <int N_STAGES>
__launch_bounds__(256)
__global__ void
gemm_tc_mma_cutlasslike_tn_cpasync2_fp16acc_128x256x64_warp2x4_swapxy(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(N_STAGES == 2, "v61 is specialized for N_STAGES=2 (BK=64)");

    constexpr int TILE_M = 128;
    constexpr int TILE_N = 256;
    constexpr int TILE_K = 64; // half
    constexpr int K_BLOCKS = kK / TILE_K; // 64

    constexpr int WARPS_PER_BLOCK = 8;
    constexpr int THREADS_PER_BLOCK = WARPS_PER_BLOCK * 32;

    constexpr int A_STAGE_ELEMS = TILE_M * TILE_K; // 8192 half
    constexpr int B_STAGE_ELEMS = TILE_K * TILE_N; // 16384 half
    constexpr int A_STAGE_BYTES =
        A_STAGE_ELEMS * static_cast<int>(sizeof(__half));
    constexpr int B_STAGE_BYTES =
        B_STAGE_ELEMS * static_cast<int>(sizeof(__half));

    // Total static shared = 2*(A+B) = 98304B (requires opt-in on Ada).
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

    constexpr int A_INT4_PER_ROW = TILE_K / 8; // 8
    constexpr int A_INT4_TOTAL = (TILE_M * TILE_K) / 8; // 1024
    constexpr int A_ITERS = A_INT4_TOTAL / THREADS_PER_BLOCK; // 4

    constexpr int B_INT4_PER_ROW = TILE_N / 8; // 32
    constexpr int B_INT4_TOTAL = (TILE_K * TILE_N) / 8; // 2048
    constexpr int B_ITERS = B_INT4_TOTAL / THREADS_PER_BLOCK; // 8

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

    // ldmatrix offsets for 4 k-groups: kk = 0,16,32,48.
    uint32_t a_ld_off_bytes[4][4];
    uint32_t b_ld_off_bytes[4][4];
#pragma unroll
    for (int kk_idx = 0; kk_idx < 4; ++kk_idx) {
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

    int stage_read = 0;
    int stage_write = 1;

    // Prologue: prefetch tile k=0 into stage 0.
    {
        uint32_t const a_store_base = As_base;
        uint32_t const b_store_base = Bs_base;

        __half const *gA_base = A + block_m * kK;
        __half const *gB_base = B + block_n;

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

    cp_async_wait_group<0>();
    __syncthreads();

    // Main loop: compute tiles 0..K_BLOCKS-2, prefetch tile+1 each iter.
    for (int k_iter = 0; k_iter < (K_BLOCKS - 1); ++k_iter) {
        uint32_t const a_load_base =
            As_base + static_cast<uint32_t>(stage_read * A_STAGE_BYTES);
        uint32_t const b_load_base =
            Bs_base + static_cast<uint32_t>(stage_read * B_STAGE_BYTES);

        // kgroup0 (kk=0): load A once, stream B per nb.
        uint32_t aFrag[4][4];
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base + a_ld_off_bytes[0][m];
            ldmatrix_x4(aFrag[m][0], aFrag[m][1], aFrag[m][2], aFrag[m][3],
                        addr_a);
        }
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t b0, b1, b2, b3;
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[0][nb];
            ldmatrix_x4_trans(b0, b1, b2, b3, addr_b);
            int const n0 = nb * 2;
            int const n1 = nb * 2 + 1;
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], aFrag[m][0], aFrag[m][1],
                    aFrag[m][2], aFrag[m][3], b0, b1);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], aFrag[m][0], aFrag[m][1],
                    aFrag[m][2], aFrag[m][3], b2, b3);
            }
        }

        // Prefetch next tile into stage_write (overlaps with later kgroups).
        {
            int const k_prefetch = k_iter + 1;
            int const k_tile = k_prefetch * TILE_K;

            uint32_t const a_store_base =
                As_base + static_cast<uint32_t>(stage_write * A_STAGE_BYTES);
            uint32_t const b_store_base =
                Bs_base + static_cast<uint32_t>(stage_write * B_STAGE_BYTES);

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
        }

        // Remaining kgroups: kk=16,32,48.
#pragma unroll
        for (int kk_idx = 1; kk_idx < 4; ++kk_idx) {
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const addr_a = a_load_base + a_ld_off_bytes[kk_idx][m];
                ldmatrix_x4(aFrag[m][0], aFrag[m][1], aFrag[m][2], aFrag[m][3],
                            addr_a);
            }
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                uint32_t b0, b1, b2, b3;
                uint32_t const addr_b =
                    b_load_base + b_ld_off_bytes[kk_idx][nb];
                ldmatrix_x4_trans(b0, b1, b2, b3, addr_b);
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
#pragma unroll
                for (int m = 0; m < 4; ++m) {
                    mma_sync_m16n8k16_row_col_f16(
                        c[m][n0][0], c[m][n0][1], aFrag[m][0], aFrag[m][1],
                        aFrag[m][2], aFrag[m][3], b0, b1);
                    mma_sync_m16n8k16_row_col_f16(
                        c[m][n1][0], c[m][n1][1], aFrag[m][0], aFrag[m][1],
                        aFrag[m][2], aFrag[m][3], b2, b3);
                }
            }
        }

        cp_async_wait_group<0>();
        __syncthreads();

        stage_read ^= 1;
        stage_write ^= 1;
    }

    // Tail: compute last tile (k_iter = K_BLOCKS-1) in stage_read.
    {
        uint32_t const a_load_base =
            As_base + static_cast<uint32_t>(stage_read * A_STAGE_BYTES);
        uint32_t const b_load_base =
            Bs_base + static_cast<uint32_t>(stage_read * B_STAGE_BYTES);

        uint32_t aFrag[4][4];

#pragma unroll
        for (int kk_idx = 0; kk_idx < 4; ++kk_idx) {
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                uint32_t const addr_a = a_load_base + a_ld_off_bytes[kk_idx][m];
                ldmatrix_x4(aFrag[m][0], aFrag[m][1], aFrag[m][2], aFrag[m][3],
                            addr_a);
            }
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                uint32_t b0, b1, b2, b3;
                uint32_t const addr_b =
                    b_load_base + b_ld_off_bytes[kk_idx][nb];
                ldmatrix_x4_trans(b0, b1, b2, b3, addr_b);
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
#pragma unroll
                for (int m = 0; m < 4; ++m) {
                    mma_sync_m16n8k16_row_col_f16(
                        c[m][n0][0], c[m][n0][1], aFrag[m][0], aFrag[m][1],
                        aFrag[m][2], aFrag[m][3], b0, b1);
                    mma_sync_m16n8k16_row_col_f16(
                        c[m][n1][0], c[m][n1][1], aFrag[m][0], aFrag[m][1],
                        aFrag[m][2], aFrag[m][3], b2, b3);
                }
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

