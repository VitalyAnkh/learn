#include <algorithm>
#include <cassert>
#include <chrono>
#include <cmath>
#include <cstdint>
#include <cstdlib>
#include <functional>
#include <iomanip>
#include <iostream>
#include <random>
#include <string>
#include <vector>

#include <cuda_fp16.h>
#include <cuda_runtime.h>
#include <mma.h>

// -----------------------------
// CUDA error handling
// -----------------------------
#define CHECK_CUDA(call)                                                      \
    do {                                                                      \
        cudaError_t _e = (call);                                              \
        if (_e != cudaSuccess) {                                              \
            std::cerr << "CUDA error: " << cudaGetErrorString(_e) << " ("     \
                      << static_cast<int>(_e) << ") at " << __FILE__ << ":"   \
                      << __LINE__ << " for " #call << std::endl;              \
            std::exit(EXIT_FAILURE);                                          \
        }                                                                     \
    } while (0)

static void check_last_cuda_error(char const *file, int line) {
    cudaError_t const err = cudaGetLastError();
    if (err != cudaSuccess) {
        std::cerr << "CUDA kernel launch error: " << cudaGetErrorString(err)
                  << " (" << static_cast<int>(err) << ") at " << file << ":"
                  << line << std::endl;
        std::exit(EXIT_FAILURE);
    }
}

#define CHECK_LAST_CUDA() check_last_cuda_error(__FILE__, __LINE__)

// -----------------------------
// GEMM config (fixed size)
// -----------------------------
constexpr int kM = 4096;
constexpr int kN = 4096;
constexpr int kK = 4096;

constexpr int kWmmaM = 16;
constexpr int kWmmaN = 16;
constexpr int kWmmaK = 16;

// Default baseline tile sizes (some kernels override via template params).
constexpr int kBlockM = 128;
constexpr int kBlockN = 128;

enum class KernelVersion : int {
    V0_GlobalWmmaLoads = 0,
    V1_SmemTiled_8warps_bk32 = 1,
    V6_SmemPadded_128x128_8warps_bk32 = 6,
    V7_SmemPaddedFp16Acc_128x128_8warps_bk32 = 7,
    V8_SmemPaddedFp16Acc_BcolGlobal_128x128_8warps_bk32 = 8,
    V9_MmaSyncFp16Acc_128x128_8warps_bk32 = 9,
};

// -----------------------------
// Kernel v0: WMMA, global memory loads (baseline)
// -----------------------------
__global__ void gemm_tc_wmma_v0_global(const __half *__restrict__ A,
                                       const __half *__restrict__ B,
                                       float *__restrict__ C) {
    using namespace nvcuda;

    // Baseline mapping: 8 warps per CTA (warp grid 4x2),
    // each warp computes 2x4 WMMA tiles -> 32x64 output tile.
    constexpr int WARPS_M = 4;
    constexpr int WARPS_N = 2;
    constexpr int WARP_M_TILES = kBlockM / (WARPS_M * kWmmaM); // 2
    constexpr int WARP_N_TILES = kBlockN / (WARPS_N * kWmmaN); // 4
    constexpr int WARPS_PER_BLOCK = WARPS_M * WARPS_N;         // 8

    int const tid = static_cast<int>(threadIdx.x);
    int const warp_id = tid >> 5; // / 32
    if (warp_id >= WARPS_PER_BLOCK) {
        return;
    }

    int const warp_m = warp_id % WARPS_M;
    int const warp_n = warp_id / WARPS_M;

    int const block_m = static_cast<int>(blockIdx.y) * kBlockM;
    int const block_n = static_cast<int>(blockIdx.x) * kBlockN;

    int const warp_tile_m = block_m + warp_m * (WARP_M_TILES * kWmmaM);
    int const warp_tile_n = block_n + warp_n * (WARP_N_TILES * kWmmaN);

    wmma::fragment<wmma::accumulator, kWmmaM, kWmmaN, kWmmaK, float>
        acc[WARP_M_TILES][WARP_N_TILES];

#pragma unroll
    for (int i = 0; i < WARP_M_TILES; ++i) {
#pragma unroll
        for (int j = 0; j < WARP_N_TILES; ++j) {
            wmma::fill_fragment(acc[i][j], 0.0f);
        }
    }

    // K loop in WMMA_K (16) steps.
    for (int k0 = 0; k0 < kK; k0 += kWmmaK) {
        wmma::fragment<wmma::matrix_a, kWmmaM, kWmmaN, kWmmaK, __half,
                       wmma::row_major>
            a_frag[WARP_M_TILES];
        wmma::fragment<wmma::matrix_b, kWmmaM, kWmmaN, kWmmaK, __half,
                       wmma::row_major>
            b_frag[WARP_N_TILES];

#pragma unroll
        for (int i = 0; i < WARP_M_TILES; ++i) {
            __half const *a_ptr =
                A + (warp_tile_m + i * kWmmaM) * kK + k0;
            wmma::load_matrix_sync(a_frag[i], a_ptr, kK);
        }

#pragma unroll
        for (int j = 0; j < WARP_N_TILES; ++j) {
            __half const *b_ptr =
                B + k0 * kN + (warp_tile_n + j * kWmmaN);
            wmma::load_matrix_sync(b_frag[j], b_ptr, kN);
        }

#pragma unroll
        for (int i = 0; i < WARP_M_TILES; ++i) {
#pragma unroll
            for (int j = 0; j < WARP_N_TILES; ++j) {
                wmma::mma_sync(acc[i][j], a_frag[i], b_frag[j], acc[i][j]);
            }
        }
    }

    // Store to global memory (row-major float).
#pragma unroll
    for (int i = 0; i < WARP_M_TILES; ++i) {
#pragma unroll
        for (int j = 0; j < WARP_N_TILES; ++j) {
            float *c_ptr =
                C + (warp_tile_m + i * kWmmaM) * kN + (warp_tile_n + j * kWmmaN);
            wmma::store_matrix_sync(c_ptr, acc[i][j], kN, wmma::mem_row_major);
        }
    }
}

// -----------------------------
// Shared-memory tiled WMMA kernel (parametrized)
// -----------------------------
template <int BLOCK_M, int BLOCK_N, int BLOCK_K, int WARPS_M, int WARPS_N>
__global__ void gemm_tc_wmma_smem(const __half *__restrict__ A,
                                  const __half *__restrict__ B,
                                  float *__restrict__ C) {
    // CTA computes a BLOCK_M x BLOCK_N output tile of C.
    // - Warps are arranged as a WARPS_M x WARPS_N 2D grid.
    // - Each warp computes (BLOCK_M / WARPS_M) x (BLOCK_N / WARPS_N).
    // Shared memory layout (row-major):
    // - shmemA: [BLOCK_M x BLOCK_K], leading dimension = BLOCK_K
    // - shmemB: [BLOCK_K x BLOCK_N], leading dimension = BLOCK_N
    // Data movement: cooperative gmem->smem using 16B vector loads/stores (int4).

    static_assert(BLOCK_K % kWmmaK == 0, "BLOCK_K must be a multiple of 16");
    static_assert((BLOCK_M % (WARPS_M * kWmmaM)) == 0, "invalid WARPS_M");
    static_assert((BLOCK_N % (WARPS_N * kWmmaN)) == 0, "invalid WARPS_N");

    using namespace nvcuda;

    constexpr int WARP_M_TILES = BLOCK_M / (WARPS_M * kWmmaM);
    constexpr int WARP_N_TILES = BLOCK_N / (WARPS_N * kWmmaN);
    constexpr int WARPS_PER_BLOCK = WARPS_M * WARPS_N;
    constexpr int THREADS_PER_BLOCK = WARPS_PER_BLOCK * 32;

    __shared__ __align__(16) __half shmemA[BLOCK_M * BLOCK_K];
    __shared__ __align__(16) __half shmemB[BLOCK_K * BLOCK_N];

    int const tid = static_cast<int>(threadIdx.x);
    int const warp_id = tid >> 5;
    if (warp_id >= WARPS_PER_BLOCK) {
        return;
    }

    int const warp_m = warp_id % WARPS_M;
    int const warp_n = warp_id / WARPS_M;

    int const block_m = static_cast<int>(blockIdx.y) * BLOCK_M;
    int const block_n = static_cast<int>(blockIdx.x) * BLOCK_N;

    int const warp_tile_m = block_m + warp_m * (WARP_M_TILES * kWmmaM);
    int const warp_tile_n = block_n + warp_n * (WARP_N_TILES * kWmmaN);

    wmma::fragment<wmma::accumulator, kWmmaM, kWmmaN, kWmmaK, float>
        acc[WARP_M_TILES][WARP_N_TILES];

#pragma unroll
    for (int i = 0; i < WARP_M_TILES; ++i) {
#pragma unroll
        for (int j = 0; j < WARP_N_TILES; ++j) {
            wmma::fill_fragment(acc[i][j], 0.0f);
        }
    }

    constexpr int A_INT4_PER_ROW = BLOCK_K / 8;
    constexpr int A_INT4_TOTAL = (BLOCK_M * BLOCK_K) / 8;
    constexpr int B_INT4_PER_ROW = BLOCK_N / 8;
    constexpr int B_INT4_TOTAL = (BLOCK_K * BLOCK_N) / 8;
    static_assert((A_INT4_TOTAL % THREADS_PER_BLOCK) == 0,
                  "A loads not divisible by threads");
    static_assert((B_INT4_TOTAL % THREADS_PER_BLOCK) == 0,
                  "B loads not divisible by threads");
    constexpr int A_ITERS = A_INT4_TOTAL / THREADS_PER_BLOCK;
    constexpr int B_ITERS = B_INT4_TOTAL / THREADS_PER_BLOCK;

    // Each thread loads/stores:
    // - A_ITERS * 16 bytes from A tile
    // - B_ITERS * 16 bytes from B tile
    // This is a plain copy (no transpose/swizzle yet).

    // Outer K loop in BLOCK_K steps.
    for (int k_block = 0; k_block < kK; k_block += BLOCK_K) {
        // Load A tile (kBlockM x BLOCK_K) and B tile (BLOCK_K x kBlockN).
        int4 *shA4 = reinterpret_cast<int4 *>(shmemA);
        int4 *shB4 = reinterpret_cast<int4 *>(shmemB);

#pragma unroll
        for (int it = 0; it < A_ITERS; ++it) {
            int const a_int4_idx = tid + it * THREADS_PER_BLOCK;
            int const a_row = a_int4_idx / A_INT4_PER_ROW;
            int const a_seg = a_int4_idx - a_row * A_INT4_PER_ROW;
            int const a_col = a_seg * 8;

            __half const *a_gmem =
                A + (block_m + a_row) * kK + (k_block + a_col);
            shA4[a_int4_idx] = *reinterpret_cast<int4 const *>(a_gmem);
        }

#pragma unroll
        for (int it = 0; it < B_ITERS; ++it) {
            int const b_int4_idx = tid + it * THREADS_PER_BLOCK;
            int const b_row = b_int4_idx / B_INT4_PER_ROW;
            int const b_seg = b_int4_idx - b_row * B_INT4_PER_ROW;
            int const b_col = b_seg * 8;

            __half const *b_gmem =
                B + (k_block + b_row) * kN + (block_n + b_col);
            shB4[b_int4_idx] = *reinterpret_cast<int4 const *>(b_gmem);
        }

        __syncthreads();

        // Compute this K tile.
        for (int kk = 0; kk < BLOCK_K; kk += kWmmaK) {
            wmma::fragment<wmma::matrix_a, kWmmaM, kWmmaN, kWmmaK, __half,
                           wmma::row_major>
                a_frag[WARP_M_TILES];
            wmma::fragment<wmma::matrix_b, kWmmaM, kWmmaN, kWmmaK, __half,
                           wmma::row_major>
                b_frag[WARP_N_TILES];

#pragma unroll
            for (int i = 0; i < WARP_M_TILES; ++i) {
                __half const *a_ptr =
                    shmemA + (warp_m * (WARP_M_TILES * kWmmaM) + i * kWmmaM) *
                                 BLOCK_K +
                    kk;
                wmma::load_matrix_sync(a_frag[i], a_ptr, BLOCK_K);
            }

#pragma unroll
            for (int j = 0; j < WARP_N_TILES; ++j) {
                __half const *b_ptr =
                    shmemB + kk * BLOCK_N +
                    (warp_n * (WARP_N_TILES * kWmmaN) + j * kWmmaN);
                wmma::load_matrix_sync(b_frag[j], b_ptr, BLOCK_N);
            }

#pragma unroll
            for (int i = 0; i < WARP_M_TILES; ++i) {
#pragma unroll
                for (int j = 0; j < WARP_N_TILES; ++j) {
                    wmma::mma_sync(acc[i][j], a_frag[i], b_frag[j], acc[i][j]);
                }
            }
        }

        __syncthreads();
    }

    // Store.
#pragma unroll
    for (int i = 0; i < WARP_M_TILES; ++i) {
#pragma unroll
        for (int j = 0; j < WARP_N_TILES; ++j) {
            float *c_ptr =
                C + (warp_tile_m + i * kWmmaM) * kN + (warp_tile_n + j * kWmmaN);
            wmma::store_matrix_sync(c_ptr, acc[i][j], kN, wmma::mem_row_major);
        }
    }
}

// -----------------------------
// Shared-memory tiled WMMA kernel (with simple padding to reduce bank conflicts)
// -----------------------------
template <int BLOCK_M, int BLOCK_N, int BLOCK_K, int WARPS_M, int WARPS_N,
          int SMEM_PAD_A, int SMEM_PAD_B>
__global__ void gemm_tc_wmma_smem_padded(const __half *__restrict__ A,
                                         const __half *__restrict__ B,
                                         float *__restrict__ C) {
    // Same idea as gemm_tc_wmma_smem, but with a padded leading dimension:
    // - shmemA has ld = BLOCK_K + SMEM_PAD_A
    // - shmemB has ld = BLOCK_N + SMEM_PAD_B
    //
    // This is a common first-step fix for WMMA/ldmatrix bank conflicts.
    static_assert(BLOCK_K % kWmmaK == 0, "BLOCK_K must be a multiple of 16");
    static_assert((BLOCK_M % (WARPS_M * kWmmaM)) == 0, "invalid WARPS_M");
    static_assert((BLOCK_N % (WARPS_N * kWmmaN)) == 0, "invalid WARPS_N");

    constexpr int SMEM_A_LD = BLOCK_K + SMEM_PAD_A;
    constexpr int SMEM_B_LD = BLOCK_N + SMEM_PAD_B;
    static_assert((SMEM_A_LD % 8) == 0, "wmma requires ldm multiple of 8");
    static_assert((SMEM_B_LD % 8) == 0, "wmma requires ldm multiple of 8");

    using namespace nvcuda;

    constexpr int WARP_M_TILES = BLOCK_M / (WARPS_M * kWmmaM);
    constexpr int WARP_N_TILES = BLOCK_N / (WARPS_N * kWmmaN);
    constexpr int WARPS_PER_BLOCK = WARPS_M * WARPS_N;
    constexpr int THREADS_PER_BLOCK = WARPS_PER_BLOCK * 32;

    __shared__ __align__(32) __half shmemA[BLOCK_M * SMEM_A_LD];
    __shared__ __align__(32) __half shmemB[BLOCK_K * SMEM_B_LD];

    int const tid = static_cast<int>(threadIdx.x);
    int const warp_id = tid >> 5;
    if (warp_id >= WARPS_PER_BLOCK) {
        return;
    }

    int const warp_m = warp_id % WARPS_M;
    int const warp_n = warp_id / WARPS_M;

    int const block_m = static_cast<int>(blockIdx.y) * BLOCK_M;
    int const block_n = static_cast<int>(blockIdx.x) * BLOCK_N;

    int const warp_tile_m = block_m + warp_m * (WARP_M_TILES * kWmmaM);
    int const warp_tile_n = block_n + warp_n * (WARP_N_TILES * kWmmaN);

    wmma::fragment<wmma::accumulator, kWmmaM, kWmmaN, kWmmaK, float>
        acc[WARP_M_TILES][WARP_N_TILES];

#pragma unroll
    for (int i = 0; i < WARP_M_TILES; ++i) {
#pragma unroll
        for (int j = 0; j < WARP_N_TILES; ++j) {
            wmma::fill_fragment(acc[i][j], 0.0f);
        }
    }

    // Vectorized copy (16B at a time): int4 stores 8 half.
    constexpr int A_INT4_PER_ROW = BLOCK_K / 8;
    constexpr int A_INT4_TOTAL = (BLOCK_M * BLOCK_K) / 8;
    constexpr int B_INT4_PER_ROW = BLOCK_N / 8;
    constexpr int B_INT4_TOTAL = (BLOCK_K * BLOCK_N) / 8;
    static_assert((A_INT4_TOTAL % THREADS_PER_BLOCK) == 0,
                  "A loads not divisible by threads");
    static_assert((B_INT4_TOTAL % THREADS_PER_BLOCK) == 0,
                  "B loads not divisible by threads");
    constexpr int A_ITERS = A_INT4_TOTAL / THREADS_PER_BLOCK;
    constexpr int B_ITERS = B_INT4_TOTAL / THREADS_PER_BLOCK;

    for (int k_block = 0; k_block < kK; k_block += BLOCK_K) {
        // Load A tile (BLOCK_M x BLOCK_K).
#pragma unroll
        for (int it = 0; it < A_ITERS; ++it) {
            int const a_int4_idx = tid + it * THREADS_PER_BLOCK;
            int const a_row = a_int4_idx / A_INT4_PER_ROW;
            int const a_seg = a_int4_idx - a_row * A_INT4_PER_ROW;
            int const a_col = a_seg * 8;

            __half const *a_gmem =
                A + (block_m + a_row) * kK + (k_block + a_col);
            int4 const v = *reinterpret_cast<int4 const *>(a_gmem);
            *reinterpret_cast<int4 *>(shmemA + a_row * SMEM_A_LD + a_col) = v;
        }

        // Load B tile (BLOCK_K x BLOCK_N), row-major.
#pragma unroll
        for (int it = 0; it < B_ITERS; ++it) {
            int const b_int4_idx = tid + it * THREADS_PER_BLOCK;
            int const b_row = b_int4_idx / B_INT4_PER_ROW;
            int const b_seg = b_int4_idx - b_row * B_INT4_PER_ROW;
            int const b_col = b_seg * 8;

            __half const *b_gmem =
                B + (k_block + b_row) * kN + (block_n + b_col);
            int4 const v = *reinterpret_cast<int4 const *>(b_gmem);
            *reinterpret_cast<int4 *>(shmemB + b_row * SMEM_B_LD + b_col) = v;
        }

        __syncthreads();

        for (int kk = 0; kk < BLOCK_K; kk += kWmmaK) {
            wmma::fragment<wmma::matrix_a, kWmmaM, kWmmaN, kWmmaK, __half,
                           wmma::row_major>
                a_frag[WARP_M_TILES];
            wmma::fragment<wmma::matrix_b, kWmmaM, kWmmaN, kWmmaK, __half,
                           wmma::row_major>
                b_frag[WARP_N_TILES];

#pragma unroll
            for (int i = 0; i < WARP_M_TILES; ++i) {
                __half const *a_ptr =
                    shmemA + (warp_m * (WARP_M_TILES * kWmmaM) + i * kWmmaM) *
                                 SMEM_A_LD +
                    kk;
                wmma::load_matrix_sync(a_frag[i], a_ptr, SMEM_A_LD);
            }

#pragma unroll
            for (int j = 0; j < WARP_N_TILES; ++j) {
                __half const *b_ptr =
                    shmemB + kk * SMEM_B_LD +
                    (warp_n * (WARP_N_TILES * kWmmaN) + j * kWmmaN);
                wmma::load_matrix_sync(b_frag[j], b_ptr, SMEM_B_LD);
            }

#pragma unroll
            for (int i = 0; i < WARP_M_TILES; ++i) {
#pragma unroll
                for (int j = 0; j < WARP_N_TILES; ++j) {
                    wmma::mma_sync(acc[i][j], a_frag[i], b_frag[j], acc[i][j]);
                }
            }
        }

        __syncthreads();
    }

#pragma unroll
    for (int i = 0; i < WARP_M_TILES; ++i) {
#pragma unroll
        for (int j = 0; j < WARP_N_TILES; ++j) {
            float *c_ptr =
                C + (warp_tile_m + i * kWmmaM) * kN + (warp_tile_n + j * kWmmaN);
            wmma::store_matrix_sync(c_ptr, acc[i][j], kN, wmma::mem_row_major);
        }
    }
}

template <typename T>
__device__ __forceinline__ T frag_zero();
template <>
__device__ __forceinline__ float frag_zero<float>() {
    return 0.0f;
}
template <>
__device__ __forceinline__ __half frag_zero<__half>() {
    return __float2half(0.0f);
}

// -----------------------------
// Shared-memory tiled WMMA kernel (padded) with configurable accumulator/output type.
//
// Motivation:
// - On RTX 4080 (Ada), the often-quoted ~195 TFLOPS "FP16 Tensor" peak is for
//   *FP16 accumulate*. FP32-accumulate FP16 tensor peak is roughly ~97.5 TFLOPS.
// - Our baseline kernels use FP32 accumulate (easy correctness), which likely
//   caps achievable TFLOPS well below 195.
//
// This kernel enables FP16 accumulate + FP16 store, trading numerical accuracy
// for higher Tensor Core throughput.
// -----------------------------
template <int BLOCK_M, int BLOCK_N, int BLOCK_K, int WARPS_M, int WARPS_N,
          int SMEM_PAD_A, int SMEM_PAD_B, typename AccT, typename OutT>
__global__ void gemm_tc_wmma_smem_padded_acc(const __half *__restrict__ A,
                                             const __half *__restrict__ B,
                                             OutT *__restrict__ C) {
    static_assert(BLOCK_K % kWmmaK == 0, "BLOCK_K must be a multiple of 16");
    static_assert((BLOCK_M % (WARPS_M * kWmmaM)) == 0, "invalid WARPS_M");
    static_assert((BLOCK_N % (WARPS_N * kWmmaN)) == 0, "invalid WARPS_N");

    constexpr int SMEM_A_LD = BLOCK_K + SMEM_PAD_A;
    constexpr int SMEM_B_LD = BLOCK_N + SMEM_PAD_B;
    static_assert((SMEM_A_LD % 8) == 0, "wmma requires ldm multiple of 8");
    static_assert((SMEM_B_LD % 8) == 0, "wmma requires ldm multiple of 8");

    using namespace nvcuda;

    constexpr int WARP_M_TILES = BLOCK_M / (WARPS_M * kWmmaM);
    constexpr int WARP_N_TILES = BLOCK_N / (WARPS_N * kWmmaN);
    constexpr int WARPS_PER_BLOCK = WARPS_M * WARPS_N;
    constexpr int THREADS_PER_BLOCK = WARPS_PER_BLOCK * 32;

    __shared__ __align__(32) __half shmemA[BLOCK_M * SMEM_A_LD];
    __shared__ __align__(32) __half shmemB[BLOCK_K * SMEM_B_LD];

    int const tid = static_cast<int>(threadIdx.x);
    int const warp_id = tid >> 5;
    if (warp_id >= WARPS_PER_BLOCK) {
        return;
    }

    int const warp_m = warp_id % WARPS_M;
    int const warp_n = warp_id / WARPS_M;

    int const block_m = static_cast<int>(blockIdx.y) * BLOCK_M;
    int const block_n = static_cast<int>(blockIdx.x) * BLOCK_N;

    int const warp_tile_m = block_m + warp_m * (WARP_M_TILES * kWmmaM);
    int const warp_tile_n = block_n + warp_n * (WARP_N_TILES * kWmmaN);

    wmma::fragment<wmma::accumulator, kWmmaM, kWmmaN, kWmmaK, AccT>
        acc[WARP_M_TILES][WARP_N_TILES];

#pragma unroll
    for (int i = 0; i < WARP_M_TILES; ++i) {
#pragma unroll
        for (int j = 0; j < WARP_N_TILES; ++j) {
            wmma::fill_fragment(acc[i][j], frag_zero<AccT>());
        }
    }

    // Vectorized copy (16B at a time): int4 stores 8 half.
    constexpr int A_INT4_PER_ROW = BLOCK_K / 8;
    constexpr int A_INT4_TOTAL = (BLOCK_M * BLOCK_K) / 8;
    constexpr int B_INT4_PER_ROW = BLOCK_N / 8;
    constexpr int B_INT4_TOTAL = (BLOCK_K * BLOCK_N) / 8;
    static_assert((A_INT4_TOTAL % THREADS_PER_BLOCK) == 0,
                  "A loads not divisible by threads");
    static_assert((B_INT4_TOTAL % THREADS_PER_BLOCK) == 0,
                  "B loads not divisible by threads");
    constexpr int A_ITERS = A_INT4_TOTAL / THREADS_PER_BLOCK;
    constexpr int B_ITERS = B_INT4_TOTAL / THREADS_PER_BLOCK;

    for (int k_block = 0; k_block < kK; k_block += BLOCK_K) {
        // Load A tile (BLOCK_M x BLOCK_K).
#pragma unroll
        for (int it = 0; it < A_ITERS; ++it) {
            int const a_int4_idx = tid + it * THREADS_PER_BLOCK;
            int const a_row = a_int4_idx / A_INT4_PER_ROW;
            int const a_seg = a_int4_idx - a_row * A_INT4_PER_ROW;
            int const a_col = a_seg * 8;

            __half const *a_gmem =
                A + (block_m + a_row) * kK + (k_block + a_col);
            int4 const v = *reinterpret_cast<int4 const *>(a_gmem);
            *reinterpret_cast<int4 *>(shmemA + a_row * SMEM_A_LD + a_col) = v;
        }

        // Load B tile (BLOCK_K x BLOCK_N), row-major.
#pragma unroll
        for (int it = 0; it < B_ITERS; ++it) {
            int const b_int4_idx = tid + it * THREADS_PER_BLOCK;
            int const b_row = b_int4_idx / B_INT4_PER_ROW;
            int const b_seg = b_int4_idx - b_row * B_INT4_PER_ROW;
            int const b_col = b_seg * 8;

            __half const *b_gmem =
                B + (k_block + b_row) * kN + (block_n + b_col);
            int4 const v = *reinterpret_cast<int4 const *>(b_gmem);
            *reinterpret_cast<int4 *>(shmemB + b_row * SMEM_B_LD + b_col) = v;
        }

        __syncthreads();

        for (int kk = 0; kk < BLOCK_K; kk += kWmmaK) {
            wmma::fragment<wmma::matrix_a, kWmmaM, kWmmaN, kWmmaK, __half,
                           wmma::row_major>
                a_frag[WARP_M_TILES];
            wmma::fragment<wmma::matrix_b, kWmmaM, kWmmaN, kWmmaK, __half,
                           wmma::row_major>
                b_frag[WARP_N_TILES];

#pragma unroll
            for (int i = 0; i < WARP_M_TILES; ++i) {
                __half const *a_ptr =
                    shmemA + (warp_m * (WARP_M_TILES * kWmmaM) + i * kWmmaM) *
                                 SMEM_A_LD +
                    kk;
                wmma::load_matrix_sync(a_frag[i], a_ptr, SMEM_A_LD);
            }

#pragma unroll
            for (int j = 0; j < WARP_N_TILES; ++j) {
                __half const *b_ptr =
                    shmemB + kk * SMEM_B_LD +
                    (warp_n * (WARP_N_TILES * kWmmaN) + j * kWmmaN);
                wmma::load_matrix_sync(b_frag[j], b_ptr, SMEM_B_LD);
            }

#pragma unroll
            for (int i = 0; i < WARP_M_TILES; ++i) {
#pragma unroll
                for (int j = 0; j < WARP_N_TILES; ++j) {
                    wmma::mma_sync(acc[i][j], a_frag[i], b_frag[j], acc[i][j]);
                }
            }
        }

        __syncthreads();
    }

#pragma unroll
    for (int i = 0; i < WARP_M_TILES; ++i) {
#pragma unroll
        for (int j = 0; j < WARP_N_TILES; ++j) {
            OutT *c_ptr = C + (warp_tile_m + i * kWmmaM) * kN +
                          (warp_tile_n + j * kWmmaN);
            wmma::store_matrix_sync(c_ptr, acc[i][j], kN, wmma::mem_row_major);
        }
    }
}

// Variant: B is provided in global memory as **column-major** (same logical matrix,
// different storage). We copy B tiles into shared memory in column-major and use
// WMMA `matrix_b` with `col_major`.
//
// This is a low-effort attempt to improve the B-side `wmma::load_matrix_sync`
// access pattern without doing an explicit transpose during the gmem->smem copy.
template <int BLOCK_M, int BLOCK_N, int BLOCK_K, int WARPS_M, int WARPS_N,
          int SMEM_PAD_A, int SMEM_PAD_B, typename AccT, typename OutT>
__global__ void gemm_tc_wmma_smem_padded_acc_BcolGlobal(
    const __half *__restrict__ A, const __half *__restrict__ B_col,
    OutT *__restrict__ C) {
    static_assert(BLOCK_K % kWmmaK == 0, "BLOCK_K must be a multiple of 16");
    static_assert((BLOCK_M % (WARPS_M * kWmmaM)) == 0, "invalid WARPS_M");
    static_assert((BLOCK_N % (WARPS_N * kWmmaN)) == 0, "invalid WARPS_N");

    constexpr int SMEM_A_LD = BLOCK_K + SMEM_PAD_A;
    // For column-major B, leading dimension is number of rows (K).
    constexpr int SMEM_B_LD = BLOCK_K + SMEM_PAD_B;
    static_assert((SMEM_A_LD % 8) == 0, "wmma requires ldm multiple of 8");
    static_assert((SMEM_B_LD % 8) == 0, "wmma requires ldm multiple of 8");

    using namespace nvcuda;

    constexpr int WARP_M_TILES = BLOCK_M / (WARPS_M * kWmmaM);
    constexpr int WARP_N_TILES = BLOCK_N / (WARPS_N * kWmmaN);
    constexpr int WARPS_PER_BLOCK = WARPS_M * WARPS_N;
    constexpr int THREADS_PER_BLOCK = WARPS_PER_BLOCK * 32;

    __shared__ __align__(32) __half shmemA[BLOCK_M * SMEM_A_LD];
    // Store B in shared as column-major: [BLOCK_N columns][SMEM_B_LD rows].
    __shared__ __align__(32) __half shmemB[BLOCK_N * SMEM_B_LD];

    int const tid = static_cast<int>(threadIdx.x);
    int const warp_id = tid >> 5;
    if (warp_id >= WARPS_PER_BLOCK) {
        return;
    }

    int const warp_m = warp_id % WARPS_M;
    int const warp_n = warp_id / WARPS_M;

    int const block_m = static_cast<int>(blockIdx.y) * BLOCK_M;
    int const block_n = static_cast<int>(blockIdx.x) * BLOCK_N;

    int const warp_tile_m = block_m + warp_m * (WARP_M_TILES * kWmmaM);
    int const warp_tile_n = block_n + warp_n * (WARP_N_TILES * kWmmaN);

    wmma::fragment<wmma::accumulator, kWmmaM, kWmmaN, kWmmaK, AccT>
        acc[WARP_M_TILES][WARP_N_TILES];

#pragma unroll
    for (int i = 0; i < WARP_M_TILES; ++i) {
#pragma unroll
        for (int j = 0; j < WARP_N_TILES; ++j) {
            wmma::fill_fragment(acc[i][j], frag_zero<AccT>());
        }
    }

    constexpr int A_INT4_PER_ROW = BLOCK_K / 8;
    constexpr int A_INT4_TOTAL = (BLOCK_M * BLOCK_K) / 8;
    constexpr int B_INT4_PER_COL = BLOCK_K / 8;
    constexpr int B_INT4_TOTAL = (BLOCK_N * BLOCK_K) / 8;
    static_assert((A_INT4_TOTAL % THREADS_PER_BLOCK) == 0,
                  "A loads not divisible by threads");
    static_assert((B_INT4_TOTAL % THREADS_PER_BLOCK) == 0,
                  "B loads not divisible by threads");
    constexpr int A_ITERS = A_INT4_TOTAL / THREADS_PER_BLOCK;
    constexpr int B_ITERS = B_INT4_TOTAL / THREADS_PER_BLOCK;

    for (int k_block = 0; k_block < kK; k_block += BLOCK_K) {
        // Load A tile (BLOCK_M x BLOCK_K), row-major.
#pragma unroll
        for (int it = 0; it < A_ITERS; ++it) {
            int const a_int4_idx = tid + it * THREADS_PER_BLOCK;
            int const a_row = a_int4_idx / A_INT4_PER_ROW;
            int const a_seg = a_int4_idx - a_row * A_INT4_PER_ROW;
            int const a_col = a_seg * 8;

            __half const *a_gmem =
                A + (block_m + a_row) * kK + (k_block + a_col);
            int4 const v = *reinterpret_cast<int4 const *>(a_gmem);
            *reinterpret_cast<int4 *>(shmemA + a_row * SMEM_A_LD + a_col) = v;
        }

        // Load B tile (BLOCK_K x BLOCK_N) from column-major global memory into
        // column-major shared memory.
#pragma unroll
        for (int it = 0; it < B_ITERS; ++it) {
            int const b_int4_idx = tid + it * THREADS_PER_BLOCK;
            int const b_col = b_int4_idx / B_INT4_PER_COL;
            int const b_segk = b_int4_idx - b_col * B_INT4_PER_COL;
            int const b_k = b_segk * 8;

            __half const *b_gmem = B_col + (block_n + b_col) * kK +
                                   (k_block + b_k);
            int4 const v = *reinterpret_cast<int4 const *>(b_gmem);
            *reinterpret_cast<int4 *>(shmemB + b_col * SMEM_B_LD + b_k) = v;
        }

        __syncthreads();

        for (int kk = 0; kk < BLOCK_K; kk += kWmmaK) {
            wmma::fragment<wmma::matrix_a, kWmmaM, kWmmaN, kWmmaK, __half,
                           wmma::row_major>
                a_frag[WARP_M_TILES];
            wmma::fragment<wmma::matrix_b, kWmmaM, kWmmaN, kWmmaK, __half,
                           wmma::col_major>
                b_frag[WARP_N_TILES];

#pragma unroll
            for (int i = 0; i < WARP_M_TILES; ++i) {
                __half const *a_ptr =
                    shmemA + (warp_m * (WARP_M_TILES * kWmmaM) + i * kWmmaM) *
                                 SMEM_A_LD +
                    kk;
                wmma::load_matrix_sync(a_frag[i], a_ptr, SMEM_A_LD);
            }

#pragma unroll
            for (int j = 0; j < WARP_N_TILES; ++j) {
                int const col0 =
                    warp_n * (WARP_N_TILES * kWmmaN) + j * kWmmaN;
                __half const *b_ptr = shmemB + col0 * SMEM_B_LD + kk;
                wmma::load_matrix_sync(b_frag[j], b_ptr, SMEM_B_LD);
            }

#pragma unroll
            for (int i = 0; i < WARP_M_TILES; ++i) {
#pragma unroll
                for (int j = 0; j < WARP_N_TILES; ++j) {
                    wmma::mma_sync(acc[i][j], a_frag[i], b_frag[j], acc[i][j]);
                }
            }
        }

        __syncthreads();
    }

#pragma unroll
    for (int i = 0; i < WARP_M_TILES; ++i) {
#pragma unroll
        for (int j = 0; j < WARP_N_TILES; ++j) {
            OutT *c_ptr = C + (warp_tile_m + i * kWmmaM) * kN +
                          (warp_tile_n + j * kWmmaN);
            wmma::store_matrix_sync(c_ptr, acc[i][j], kN, wmma::mem_row_major);
        }
    }
}

// -----------------------------
// Inline PTX MMA: ldmatrix + mma.sync (m16n8k16) with FP16 accumulate/store.
//
// Motivation:
// - WMMA is convenient but abstracts away `ldmatrix` details; further perf gains
//   on Ada often depend on very specific shared-memory layouts (swizzle) that
//   are easier to control at the `ldmatrix`/`mma.sync` level.
// - This kernel is an intermediate step: manual `ldmatrix` + `mma.sync` but
//   still using a simple padded row-major shared layout (no swizzle yet).
//   Once this is correct and stable, we can iterate on permuted shared layouts.
//
// Compute mapping:
// - CTA: 128x128 output tile, BK=32
// - 8 warps/block arranged as 4x2.
// - Each warp computes a 32x64 output tile, represented as:
//   - 2 (m_sub) x 8 (n_sub) sub-tiles of size 16x8
//   - each 16x8 sub-tile is produced by one `mma.sync.m16n8k16`
//   - each lane holds 2x half2 accumulators (2 regs) per 16x8 sub-tile
// -----------------------------
__device__ __forceinline__ void ldmatrix_x4(uint32_t &a0, uint32_t &a1,
                                            uint32_t &a2, uint32_t &a3,
                                            uint32_t smem_addr) {
    asm volatile(
        "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {%0,%1,%2,%3}, [%4];\n"
        : "=r"(a0), "=r"(a1), "=r"(a2), "=r"(a3)
        : "r"(smem_addr));
}

__device__ __forceinline__ void ldmatrix_x2_trans(uint32_t &b0, uint32_t &b1,
                                                  uint32_t smem_addr) {
    asm volatile(
        "ldmatrix.sync.aligned.m8n8.x2.trans.shared.b16 {%0,%1}, [%2];\n"
        : "=r"(b0), "=r"(b1)
        : "r"(smem_addr));
}

__device__ __forceinline__ void mma_sync_m16n8k16_row_col_f16(
    uint32_t &c0, uint32_t &c1, uint32_t const &a0, uint32_t const &a1,
    uint32_t const &a2, uint32_t const &a3, uint32_t const &b0,
    uint32_t const &b1) {
    asm volatile(
        "mma.sync.aligned.m16n8k16.row.col.f16.f16.f16.f16 "
        "{%0,%1}, {%2,%3,%4,%5}, {%6,%7}, {%0,%1};\n"
        : "+r"(c0), "+r"(c1)
        : "r"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(b0), "r"(b1));
}

template <int BLOCK_M, int BLOCK_N, int BLOCK_K, int WARPS_M, int WARPS_N,
          int SMEM_PAD_A, int SMEM_PAD_B>
__global__ void gemm_tc_mma_smem_padded_fp16acc(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(BLOCK_M == 128 && BLOCK_N == 128 && BLOCK_K == 32,
                  "This kernel is currently tuned for 128x128x32 tiles.");
    static_assert(WARPS_M == 4 && WARPS_N == 2, "Expected 4x2 warp grid.");
    static_assert((BLOCK_K % 16) == 0, "BLOCK_K must be multiple of 16.");
    static_assert((SMEM_PAD_A % 8) == 0, "pad must keep ldm multiple of 8");
    static_assert((SMEM_PAD_B % 8) == 0, "pad must keep ldm multiple of 8");

    constexpr int SMEM_A_LD = BLOCK_K + SMEM_PAD_A;
    constexpr int SMEM_B_LD = BLOCK_N + SMEM_PAD_B;

    constexpr int WARP_M_TILES = BLOCK_M / (WARPS_M * 16); // 2
    constexpr int WARP_N_TILES = BLOCK_N / (WARPS_N * 16); // 4
    static_assert(WARP_M_TILES == 2 && WARP_N_TILES == 4, "tile mismatch");

    constexpr int WARPS_PER_BLOCK = WARPS_M * WARPS_N; // 8
    constexpr int THREADS_PER_BLOCK = WARPS_PER_BLOCK * 32; // 256

    __shared__ __align__(32) __half shmemA[BLOCK_M * SMEM_A_LD];
    __shared__ __align__(32) __half shmemB[BLOCK_K * SMEM_B_LD];

    int const tid = static_cast<int>(threadIdx.x);
    int const warp_id = tid >> 5;
    int const lane_id = tid & 31;
    if (warp_id >= WARPS_PER_BLOCK) {
        return;
    }

    int const warp_m = warp_id % WARPS_M; // 0..3
    int const warp_n = warp_id / WARPS_M; // 0..1

    int const block_m = static_cast<int>(blockIdx.y) * BLOCK_M;
    int const block_n = static_cast<int>(blockIdx.x) * BLOCK_N;

    int const warp_tile_m = block_m + warp_m * (WARP_M_TILES * 16); // 32 rows
    int const warp_tile_n = block_n + warp_n * (WARP_N_TILES * 16); // 64 cols

    // Accumulators:
    // c[m_sub][n_sub][2] where:
    // - m_sub in {0,1} selects 16-row group within the 32 rows
    // - n_sub in {0..7} selects 8-col group within the 64 cols
    // - the 2 regs correspond to two rows (row and row+8), each packed as half2
    uint32_t c[2][8][2];
#pragma unroll
    for (int mi = 0; mi < 2; ++mi) {
#pragma unroll
        for (int nj = 0; nj < 8; ++nj) {
            c[mi][nj][0] = 0u;
            c[mi][nj][1] = 0u;
        }
    }

    // Cooperative gmem->smem copy (same as v7: int4 loads, padded LD).
    constexpr int A_INT4_PER_ROW = BLOCK_K / 8;
    constexpr int A_INT4_TOTAL = (BLOCK_M * BLOCK_K) / 8;
    constexpr int B_INT4_PER_ROW = BLOCK_N / 8;
    constexpr int B_INT4_TOTAL = (BLOCK_K * BLOCK_N) / 8;
    static_assert((A_INT4_TOTAL % THREADS_PER_BLOCK) == 0, "A copy mismatch");
    static_assert((B_INT4_TOTAL % THREADS_PER_BLOCK) == 0, "B copy mismatch");
    constexpr int A_ITERS = A_INT4_TOTAL / THREADS_PER_BLOCK; // 2
    constexpr int B_ITERS = B_INT4_TOTAL / THREADS_PER_BLOCK; // 2

    for (int k_block = 0; k_block < kK; k_block += BLOCK_K) {
        // Load A tile into shared (row-major).
#pragma unroll
        for (int it = 0; it < A_ITERS; ++it) {
            int const a_int4_idx = tid + it * THREADS_PER_BLOCK;
            int const a_row = a_int4_idx / A_INT4_PER_ROW;
            int const a_seg = a_int4_idx - a_row * A_INT4_PER_ROW;
            int const a_col = a_seg * 8;

            __half const *a_gmem =
                A + (block_m + a_row) * kK + (k_block + a_col);
            int4 const v = *reinterpret_cast<int4 const *>(a_gmem);
            *reinterpret_cast<int4 *>(shmemA + a_row * SMEM_A_LD + a_col) = v;
        }

        // Load B tile into shared (row-major).
#pragma unroll
        for (int it = 0; it < B_ITERS; ++it) {
            int const b_int4_idx = tid + it * THREADS_PER_BLOCK;
            int const b_row = b_int4_idx / B_INT4_PER_ROW;
            int const b_seg = b_int4_idx - b_row * B_INT4_PER_ROW;
            int const b_col = b_seg * 8;

            __half const *b_gmem =
                B + (k_block + b_row) * kN + (block_n + b_col);
            int4 const v = *reinterpret_cast<int4 const *>(b_gmem);
            *reinterpret_cast<int4 *>(shmemB + b_row * SMEM_B_LD + b_col) = v;
        }

        __syncthreads();

        // Two mma steps for BK=32: kk in {0,16}.
#pragma unroll
        for (int kk = 0; kk < BLOCK_K; kk += 16) {
            // Load A fragments for the two 16-row groups.
            uint32_t a_frag[2][4];
#pragma unroll
            for (int mi = 0; mi < 2; ++mi) {
                int const a_row0 = warp_m * 32 + mi * 16 + (lane_id % 16);
                int const a_col0 = kk + (lane_id / 16) * 8;
                uint32_t const addr_a = __cvta_generic_to_shared(
                    shmemA + a_row0 * SMEM_A_LD + a_col0);
                ldmatrix_x4(a_frag[mi][0], a_frag[mi][1], a_frag[mi][2],
                            a_frag[mi][3], addr_a);
            }

            // Load B fragments for the eight 8-col groups.
            uint32_t b_frag[8][2];
#pragma unroll
            for (int nj = 0; nj < 8; ++nj) {
                int const b_row0 = kk + (lane_id % 16);
                int const b_col0 = warp_n * 64 + nj * 8;
                uint32_t const addr_b = __cvta_generic_to_shared(
                    shmemB + b_row0 * SMEM_B_LD + b_col0);
                ldmatrix_x2_trans(b_frag[nj][0], b_frag[nj][1], addr_b);
            }

            // MMA: for each (mi, nj) sub-tile.
#pragma unroll
            for (int mi = 0; mi < 2; ++mi) {
#pragma unroll
                for (int nj = 0; nj < 8; ++nj) {
                    mma_sync_m16n8k16_row_col_f16(
                        c[mi][nj][0], c[mi][nj][1], a_frag[mi][0],
                        a_frag[mi][1], a_frag[mi][2], a_frag[mi][3],
                        b_frag[nj][0], b_frag[nj][1]);
                }
            }
        }

        __syncthreads();
    }

    // Store accumulators to global C (row-major).
    // Fragment mapping for m16n8k16:
    // - group_id = lane_id >> 2 (0..7), tid_in_group = lane_id & 3 (0..3)
    // - each lane owns a 2x2 block: rows {group_id, group_id+8},
    //   cols {2*tid_in_group, 2*tid_in_group+1}.
    int const group_id = lane_id >> 2;
    int const tid_in_group = lane_id & 3;
    int const c_row0 = group_id;
    int const c_row1 = group_id + 8;
    int const c_col0 = tid_in_group * 2;

    // Store as two half2 (packed in uint32) per 16x8 sub-tile.
#pragma unroll
    for (int mi = 0; mi < 2; ++mi) {
        int const base_m = warp_tile_m + mi * 16;
#pragma unroll
        for (int nj = 0; nj < 8; ++nj) {
            int const base_n = warp_tile_n + nj * 8;
            int const g_row0 = base_m + c_row0;
            int const g_row1 = base_m + c_row1;
            int const g_col0 = base_n + c_col0;

            uint32_t *c_ptr0 = reinterpret_cast<uint32_t *>(
                C + g_row0 * kN + g_col0);
            uint32_t *c_ptr1 = reinterpret_cast<uint32_t *>(
                C + g_row1 * kN + g_col0);
            *c_ptr0 = c[mi][nj][0];
            *c_ptr1 = c[mi][nj][1];
        }
    }
}

#if 0
// Same as gemm_tc_wmma_smem_padded_acc, but uses cp.async for gmem->smem copies.
// This is a single-stage (no double-buffering) variant, intended to:
// - reduce register pressure (avoid staging int4 in registers)
// - potentially reduce gmem->smem copy overhead as compute gets faster (FP16 acc)
template <int BLOCK_M, int BLOCK_N, int BLOCK_K, int WARPS_M, int WARPS_N,
          int SMEM_PAD_A, int SMEM_PAD_B, typename AccT, typename OutT>
__global__ void gemm_tc_wmma_smem_padded_acc_cpasync(
    const __half *__restrict__ A, const __half *__restrict__ B,
    OutT *__restrict__ C) {
    static_assert(BLOCK_K % kWmmaK == 0, "BLOCK_K must be a multiple of 16");
    static_assert((BLOCK_M % (WARPS_M * kWmmaM)) == 0, "invalid WARPS_M");
    static_assert((BLOCK_N % (WARPS_N * kWmmaN)) == 0, "invalid WARPS_N");

    constexpr int SMEM_A_LD = BLOCK_K + SMEM_PAD_A;
    constexpr int SMEM_B_LD = BLOCK_N + SMEM_PAD_B;
    static_assert((SMEM_A_LD % 8) == 0, "wmma requires ldm multiple of 8");
    static_assert((SMEM_B_LD % 8) == 0, "wmma requires ldm multiple of 8");

    using namespace nvcuda;

    constexpr int WARP_M_TILES = BLOCK_M / (WARPS_M * kWmmaM);
    constexpr int WARP_N_TILES = BLOCK_N / (WARPS_N * kWmmaN);
    constexpr int WARPS_PER_BLOCK = WARPS_M * WARPS_N;
    constexpr int THREADS_PER_BLOCK = WARPS_PER_BLOCK * 32;

    __shared__ __align__(32) __half shmemA[BLOCK_M * SMEM_A_LD];
    __shared__ __align__(32) __half shmemB[BLOCK_K * SMEM_B_LD];

    int const tid = static_cast<int>(threadIdx.x);
    int const warp_id = tid >> 5;
    if (warp_id >= WARPS_PER_BLOCK) {
        return;
    }

    int const warp_m = warp_id % WARPS_M;
    int const warp_n = warp_id / WARPS_M;

    int const block_m = static_cast<int>(blockIdx.y) * BLOCK_M;
    int const block_n = static_cast<int>(blockIdx.x) * BLOCK_N;

    int const warp_tile_m = block_m + warp_m * (WARP_M_TILES * kWmmaM);
    int const warp_tile_n = block_n + warp_n * (WARP_N_TILES * kWmmaN);

    wmma::fragment<wmma::accumulator, kWmmaM, kWmmaN, kWmmaK, AccT>
        acc[WARP_M_TILES][WARP_N_TILES];

#pragma unroll
    for (int i = 0; i < WARP_M_TILES; ++i) {
#pragma unroll
        for (int j = 0; j < WARP_N_TILES; ++j) {
            wmma::fill_fragment(acc[i][j], frag_zero<AccT>());
        }
    }

    constexpr int A_INT4_PER_ROW = BLOCK_K / 8;
    constexpr int A_INT4_TOTAL = (BLOCK_M * BLOCK_K) / 8;
    constexpr int B_INT4_PER_ROW = BLOCK_N / 8;
    constexpr int B_INT4_TOTAL = (BLOCK_K * BLOCK_N) / 8;
    static_assert((A_INT4_TOTAL % THREADS_PER_BLOCK) == 0,
                  "A loads not divisible by threads");
    static_assert((B_INT4_TOTAL % THREADS_PER_BLOCK) == 0,
                  "B loads not divisible by threads");
    constexpr int A_ITERS = A_INT4_TOTAL / THREADS_PER_BLOCK;
    constexpr int B_ITERS = B_INT4_TOTAL / THREADS_PER_BLOCK;

    for (int k_block = 0; k_block < kK; k_block += BLOCK_K) {
#pragma unroll
        for (int it = 0; it < A_ITERS; ++it) {
            int const a_int4_idx = tid + it * THREADS_PER_BLOCK;
            int const a_row = a_int4_idx / A_INT4_PER_ROW;
            int const a_seg = a_int4_idx - a_row * A_INT4_PER_ROW;
            int const a_col = a_seg * 8;

            __half const *a_gmem =
                A + (block_m + a_row) * kK + (k_block + a_col);
            void *a_smem = shmemA + a_row * SMEM_A_LD + a_col;
            cp_async_cg_16B(a_smem, a_gmem);
        }

#pragma unroll
        for (int it = 0; it < B_ITERS; ++it) {
            int const b_int4_idx = tid + it * THREADS_PER_BLOCK;
            int const b_row = b_int4_idx / B_INT4_PER_ROW;
            int const b_seg = b_int4_idx - b_row * B_INT4_PER_ROW;
            int const b_col = b_seg * 8;

            __half const *b_gmem =
                B + (k_block + b_row) * kN + (block_n + b_col);
            void *b_smem = shmemB + b_row * SMEM_B_LD + b_col;
            cp_async_cg_16B(b_smem, b_gmem);
        }

        cp_async_commit();
        cp_async_wait_all();
        __syncthreads();

        for (int kk = 0; kk < BLOCK_K; kk += kWmmaK) {
            wmma::fragment<wmma::matrix_a, kWmmaM, kWmmaN, kWmmaK, __half,
                           wmma::row_major>
                a_frag[WARP_M_TILES];
            wmma::fragment<wmma::matrix_b, kWmmaM, kWmmaN, kWmmaK, __half,
                           wmma::row_major>
                b_frag[WARP_N_TILES];

#pragma unroll
            for (int i = 0; i < WARP_M_TILES; ++i) {
                __half const *a_ptr =
                    shmemA + (warp_m * (WARP_M_TILES * kWmmaM) + i * kWmmaM) *
                                 SMEM_A_LD +
                    kk;
                wmma::load_matrix_sync(a_frag[i], a_ptr, SMEM_A_LD);
            }

#pragma unroll
            for (int j = 0; j < WARP_N_TILES; ++j) {
                __half const *b_ptr =
                    shmemB + kk * SMEM_B_LD +
                    (warp_n * (WARP_N_TILES * kWmmaN) + j * kWmmaN);
                wmma::load_matrix_sync(b_frag[j], b_ptr, SMEM_B_LD);
            }

#pragma unroll
            for (int i = 0; i < WARP_M_TILES; ++i) {
#pragma unroll
                for (int j = 0; j < WARP_N_TILES; ++j) {
                    wmma::mma_sync(acc[i][j], a_frag[i], b_frag[j], acc[i][j]);
                }
            }
        }

        __syncthreads();
    }

#pragma unroll
    for (int i = 0; i < WARP_M_TILES; ++i) {
#pragma unroll
        for (int j = 0; j < WARP_N_TILES; ++j) {
            OutT *c_ptr = C + (warp_tile_m + i * kWmmaM) * kN +
                          (warp_tile_n + j * kWmmaN);
            wmma::store_matrix_sync(c_ptr, acc[i][j], kN, wmma::mem_row_major);
        }
    }
}

// Variant: store B tile in shared as column-major and use WMMA matrix_b col_major.
// This avoids the WMMA row-major-B path (which may use transposed loads internally),
// at the cost of doing an explicit tile transpose during gmem->smem copy for B.
template <int BLOCK_M, int BLOCK_N, int BLOCK_K, int WARPS_M, int WARPS_N,
          int SMEM_PAD_A, int SMEM_PAD_B, typename AccT, typename OutT>
__global__ void gemm_tc_wmma_smem_padded_acc_bcol(const __half *__restrict__ A,
                                                  const __half *__restrict__ B,
                                                  OutT *__restrict__ C) {
    static_assert(BLOCK_K % kWmmaK == 0, "BLOCK_K must be a multiple of 16");
    static_assert((BLOCK_M % (WARPS_M * kWmmaM)) == 0, "invalid WARPS_M");
    static_assert((BLOCK_N % (WARPS_N * kWmmaN)) == 0, "invalid WARPS_N");

    constexpr int SMEM_A_LD = BLOCK_K + SMEM_PAD_A;
    // For column-major B, leading dimension is number of rows (K).
    constexpr int SMEM_B_LD = BLOCK_K + SMEM_PAD_B;
    static_assert((SMEM_A_LD % 8) == 0, "wmma requires ldm multiple of 8");
    static_assert((SMEM_B_LD % 8) == 0, "wmma requires ldm multiple of 8");

    using namespace nvcuda;

    constexpr int WARP_M_TILES = BLOCK_M / (WARPS_M * kWmmaM);
    constexpr int WARP_N_TILES = BLOCK_N / (WARPS_N * kWmmaN);
    constexpr int WARPS_PER_BLOCK = WARPS_M * WARPS_N;
    constexpr int THREADS_PER_BLOCK = WARPS_PER_BLOCK * 32;

    __shared__ __align__(32) __half shmemA[BLOCK_M * SMEM_A_LD];
    // B stored as [BLOCK_N columns][SMEM_B_LD rows] (column-major).
    __shared__ __align__(32) __half shmemB[BLOCK_N * SMEM_B_LD];

    int const tid = static_cast<int>(threadIdx.x);
    int const warp_id = tid >> 5;
    if (warp_id >= WARPS_PER_BLOCK) {
        return;
    }

    int const warp_m = warp_id % WARPS_M;
    int const warp_n = warp_id / WARPS_M;

    int const block_m = static_cast<int>(blockIdx.y) * BLOCK_M;
    int const block_n = static_cast<int>(blockIdx.x) * BLOCK_N;

    int const warp_tile_m = block_m + warp_m * (WARP_M_TILES * kWmmaM);
    int const warp_tile_n = block_n + warp_n * (WARP_N_TILES * kWmmaN);

    wmma::fragment<wmma::accumulator, kWmmaM, kWmmaN, kWmmaK, AccT>
        acc[WARP_M_TILES][WARP_N_TILES];

#pragma unroll
    for (int i = 0; i < WARP_M_TILES; ++i) {
#pragma unroll
        for (int j = 0; j < WARP_N_TILES; ++j) {
            wmma::fill_fragment(acc[i][j], frag_zero<AccT>());
        }
    }

    // Cooperative copy:
    // - A tile: row-major in shared (vectorized int4 stores).
    // - B tile: transpose into shared column-major (scatter half stores).
    constexpr int A_INT4_PER_ROW = BLOCK_K / 8;
    constexpr int A_INT4_TOTAL = (BLOCK_M * BLOCK_K) / 8;
    constexpr int B_INT4_PER_ROW = BLOCK_N / 8;
    constexpr int B_INT4_TOTAL = (BLOCK_K * BLOCK_N) / 8;
    static_assert((A_INT4_TOTAL % THREADS_PER_BLOCK) == 0,
                  "A loads not divisible by threads");
    static_assert((B_INT4_TOTAL % THREADS_PER_BLOCK) == 0,
                  "B loads not divisible by threads");
    constexpr int A_ITERS = A_INT4_TOTAL / THREADS_PER_BLOCK;
    constexpr int B_ITERS = B_INT4_TOTAL / THREADS_PER_BLOCK;

    for (int k_block = 0; k_block < kK; k_block += BLOCK_K) {
#pragma unroll
        for (int it = 0; it < A_ITERS; ++it) {
            int const a_int4_idx = tid + it * THREADS_PER_BLOCK;
            int const a_row = a_int4_idx / A_INT4_PER_ROW;
            int const a_seg = a_int4_idx - a_row * A_INT4_PER_ROW;
            int const a_col = a_seg * 8;

            __half const *a_gmem =
                A + (block_m + a_row) * kK + (k_block + a_col);
            int4 const v = *reinterpret_cast<int4 const *>(a_gmem);
            *reinterpret_cast<int4 *>(shmemA + a_row * SMEM_A_LD + a_col) = v;
        }

#pragma unroll
        for (int it = 0; it < B_ITERS; ++it) {
            int const b_int4_idx = tid + it * THREADS_PER_BLOCK;
            int const b_row = b_int4_idx / B_INT4_PER_ROW;
            int const b_seg = b_int4_idx - b_row * B_INT4_PER_ROW;
            int const b_col = b_seg * 8;

            __half const *b_gmem =
                B + (k_block + b_row) * kN + (block_n + b_col);
            uint4 const u = *reinterpret_cast<uint4 const *>(b_gmem);

            __half2 const h01 = *reinterpret_cast<__half2 const *>(&u.x);
            __half2 const h23 = *reinterpret_cast<__half2 const *>(&u.y);
            __half2 const h45 = *reinterpret_cast<__half2 const *>(&u.z);
            __half2 const h67 = *reinterpret_cast<__half2 const *>(&u.w);

            // Store into shared as column-major: (col, row) -> col*ld + row.
            shmemB[(b_col + 0) * SMEM_B_LD + b_row] = __low2half(h01);
            shmemB[(b_col + 1) * SMEM_B_LD + b_row] = __high2half(h01);
            shmemB[(b_col + 2) * SMEM_B_LD + b_row] = __low2half(h23);
            shmemB[(b_col + 3) * SMEM_B_LD + b_row] = __high2half(h23);
            shmemB[(b_col + 4) * SMEM_B_LD + b_row] = __low2half(h45);
            shmemB[(b_col + 5) * SMEM_B_LD + b_row] = __high2half(h45);
            shmemB[(b_col + 6) * SMEM_B_LD + b_row] = __low2half(h67);
            shmemB[(b_col + 7) * SMEM_B_LD + b_row] = __high2half(h67);
        }

        __syncthreads();

        for (int kk = 0; kk < BLOCK_K; kk += kWmmaK) {
            wmma::fragment<wmma::matrix_a, kWmmaM, kWmmaN, kWmmaK, __half,
                           wmma::row_major>
                a_frag[WARP_M_TILES];
            wmma::fragment<wmma::matrix_b, kWmmaM, kWmmaN, kWmmaK, __half,
                           wmma::col_major>
                b_frag[WARP_N_TILES];

#pragma unroll
            for (int i = 0; i < WARP_M_TILES; ++i) {
                __half const *a_ptr =
                    shmemA + (warp_m * (WARP_M_TILES * kWmmaM) + i * kWmmaM) *
                                 SMEM_A_LD +
                    kk;
                wmma::load_matrix_sync(a_frag[i], a_ptr, SMEM_A_LD);
            }

#pragma unroll
            for (int j = 0; j < WARP_N_TILES; ++j) {
                int const col0 =
                    (warp_n * (WARP_N_TILES * kWmmaN) + j * kWmmaN);
                __half const *b_ptr = shmemB + col0 * SMEM_B_LD + kk;
                wmma::load_matrix_sync(b_frag[j], b_ptr, SMEM_B_LD);
            }

#pragma unroll
            for (int i = 0; i < WARP_M_TILES; ++i) {
#pragma unroll
                for (int j = 0; j < WARP_N_TILES; ++j) {
                    wmma::mma_sync(acc[i][j], a_frag[i], b_frag[j], acc[i][j]);
                }
            }
        }

        __syncthreads();
    }

#pragma unroll
    for (int i = 0; i < WARP_M_TILES; ++i) {
#pragma unroll
        for (int j = 0; j < WARP_N_TILES; ++j) {
            OutT *c_ptr = C + (warp_tile_m + i * kWmmaM) * kN +
                          (warp_tile_n + j * kWmmaN);
            wmma::store_matrix_sync(c_ptr, acc[i][j], kN, wmma::mem_row_major);
        }
    }
}
#endif

// -----------------------------
// Host utilities: reference, checking, timing
// -----------------------------
static void fill_random_half(std::vector<__half> &h, uint32_t seed,
                             float low = -1.0f, float high = 1.0f) {
    std::mt19937 rng(seed);
    std::uniform_real_distribution<float> dist(low, high);
    for (auto &x : h) {
        float const v = dist(rng);
        x = __float2half_rn(v);
    }
}

static void cpu_reference_subset_rowmajor(const std::vector<__half> &A,
                                          const std::vector<__half> &B,
                                          std::vector<float> &C_ref,
                                          int verify_m, int verify_n,
                                          bool b_col_major) {
    // A: MxK row-major
    // B: KxN, either row-major or column-major storage (same logical matrix)
    // C: MxN row-major
    assert(static_cast<int>(C_ref.size()) == verify_m * verify_n);
    for (int m = 0; m < verify_m; ++m) {
        for (int n = 0; n < verify_n; ++n) {
            float acc = 0.0f;
            for (int k = 0; k < kK; ++k) {
                float const a = __half2float(A[m * kK + k]);
                int const b_idx = b_col_major ? (n * kK + k) : (k * kN + n);
                float const b = __half2float(B[b_idx]);
                acc = std::fmaf(a, b, acc);
            }
            C_ref[m * verify_n + n] = acc;
        }
    }
}

static void pack_col_major_from_row_major(const std::vector<__half> &B_row,
                                          std::vector<__half> &B_col) {
    assert(B_row.size() == static_cast<size_t>(kK) * kN);
    assert(B_col.size() == static_cast<size_t>(kK) * kN);
    for (int k = 0; k < kK; ++k) {
        for (int n = 0; n < kN; ++n) {
            B_col[n * kK + k] = B_row[k * kN + n];
        }
    }
}

struct ErrorStats {
    float max_abs = 0.0f;
    float max_rel = 0.0f;
    int max_abs_m = -1;
    int max_abs_n = -1;
};

static ErrorStats compare_subset(const std::vector<float> &C,
                                 const std::vector<float> &C_ref,
                                 int verify_m, int verify_n) {
    assert(C.size() == C_ref.size());
    ErrorStats s{};
    for (int m = 0; m < verify_m; ++m) {
        for (int n = 0; n < verify_n; ++n) {
            float const got = C[m * verify_n + n];
            float const ref = C_ref[m * verify_n + n];
            float const abs_err = std::abs(got - ref);
            float const denom = std::max(1e-6f, std::abs(ref));
            float const rel_err = abs_err / denom;
            if (abs_err > s.max_abs) {
                s.max_abs = abs_err;
                s.max_abs_m = m;
                s.max_abs_n = n;
            }
            if (rel_err > s.max_rel) {
                s.max_rel = rel_err;
            }
        }
    }
    return s;
}

static float time_kernel_ms(std::function<void(cudaStream_t)> const &launch,
                            cudaStream_t stream, int warmup, int repeats,
                            int trials, float &avg_ms_out) {
    cudaEvent_t start{}, stop{};
    CHECK_CUDA(cudaEventCreate(&start));
    CHECK_CUDA(cudaEventCreate(&stop));

    for (int i = 0; i < warmup; ++i) {
        launch(stream);
    }
    CHECK_CUDA(cudaStreamSynchronize(stream));

    std::vector<float> trial_ms;
    trial_ms.reserve(trials);

    for (int t = 0; t < trials; ++t) {
        CHECK_CUDA(cudaEventRecord(start, stream));
        for (int i = 0; i < repeats; ++i) {
            launch(stream);
        }
        CHECK_CUDA(cudaEventRecord(stop, stream));
        CHECK_CUDA(cudaEventSynchronize(stop));
        CHECK_LAST_CUDA();

        float ms = 0.0f;
        CHECK_CUDA(cudaEventElapsedTime(&ms, start, stop));
        trial_ms.push_back(ms / repeats);
    }

    CHECK_CUDA(cudaEventDestroy(start));
    CHECK_CUDA(cudaEventDestroy(stop));

    float best = trial_ms[0];
    float sum = 0.0f;
    for (float x : trial_ms) {
        best = std::min(best, x);
        sum += x;
    }
    avg_ms_out = sum / trial_ms.size();
    return best;
}

static KernelVersion parse_kernel(std::string const &s) {
    if (s == "v0" || s == "global") {
        return KernelVersion::V0_GlobalWmmaLoads;
    }
    if (s == "v1" || s == "smem") {
        return KernelVersion::V1_SmemTiled_8warps_bk32;
    }
    if (s == "v6" || s == "pad") {
        return KernelVersion::V6_SmemPadded_128x128_8warps_bk32;
    }
    if (s == "v7" || s == "fp16acc" || s == "best") {
        return KernelVersion::V7_SmemPaddedFp16Acc_128x128_8warps_bk32;
    }
    if (s == "v8" || s == "bcol") {
        return KernelVersion::V8_SmemPaddedFp16Acc_BcolGlobal_128x128_8warps_bk32;
    }
    if (s == "v9" || s == "mma") {
        return KernelVersion::V9_MmaSyncFp16Acc_128x128_8warps_bk32;
    }
    std::cerr << "Unknown --kernel=... value: " << s
              << " (expected v0|v1|v6|v7|v8|v9 or global|smem|pad|fp16acc|best|bcol|mma)"
              << std::endl;
    std::exit(EXIT_FAILURE);
}

static void print_usage(char const *argv0) {
    std::cout << "Usage: " << argv0
              << " [--kernel=v0|v1|v6|v7|v8|v9]"
                 " [--warmup=10] [--iters=100] [--trials=5]\n"
                 "       [--verify_m=128] [--verify_n=128] [--skip_check]\n";
}

int main(int argc, char **argv) {
    KernelVersion kernel = KernelVersion::V7_SmemPaddedFp16Acc_128x128_8warps_bk32;
    int warmup = 10;
    int iters = 100;
    int trials = 5;
    int verify_m = 128;
    int verify_n = 128;
    bool do_check = true;

    for (int i = 1; i < argc; ++i) {
        std::string arg(argv[i]);

        auto eat = [&](std::string const &prefix) -> std::string {
            if (arg.compare(0, prefix.size(), prefix) == 0) {
                return arg.substr(prefix.size());
            }
            return std::string();
        };

        if (arg == "--help" || arg == "-h") {
            print_usage(argv[0]);
            return 0;
        }
        if (arg == "--skip_check") {
            do_check = false;
            continue;
        }

        {
            std::string v = eat("--kernel=");
            if (!v.empty()) {
                kernel = parse_kernel(v);
                continue;
            }
        }
        {
            std::string v = eat("--warmup=");
            if (!v.empty()) {
                warmup = std::stoi(v);
                continue;
            }
        }
        {
            std::string v = eat("--iters=");
            if (!v.empty()) {
                iters = std::stoi(v);
                continue;
            }
        }
        {
            std::string v = eat("--trials=");
            if (!v.empty()) {
                trials = std::stoi(v);
                continue;
            }
        }
        {
            std::string v = eat("--verify_m=");
            if (!v.empty()) {
                verify_m = std::stoi(v);
                continue;
            }
        }
        {
            std::string v = eat("--verify_n=");
            if (!v.empty()) {
                verify_n = std::stoi(v);
                continue;
            }
        }

        std::cerr << "Unknown arg: " << arg << std::endl;
        print_usage(argv[0]);
        return 1;
    }

    if (verify_m <= 0 || verify_m > kM || verify_n <= 0 || verify_n > kN) {
        std::cerr << "Invalid verify size: verify_m=" << verify_m
                  << " verify_n=" << verify_n << std::endl;
        return 1;
    }

    std::cout << "GEMM: C[MxN] = A[MxK] * B[KxN]\n"
              << "  A/B: FP16 (half)\n"
              << "  M=N=K=4096 (fixed)\n";

    std::string kernel_name;
    std::string c_type = "FP32";
    bool c_is_fp16 = false;
    std::string b_layout = "row_major";
    bool b_col_major = false;
    int tile_m = 0;
    int tile_n = 0;
    int warps_m = 0;
    int warps_n = 0;
    int warps_per_block = 0;
    int block_k = 0;
    int warp_m_tiles = 0;
    int warp_n_tiles = 0;
    switch (kernel) {
    case KernelVersion::V0_GlobalWmmaLoads:
        kernel_name = "v0_global_wmma_loads";
        tile_m = 128;
        tile_n = 128;
        warps_m = 4;
        warps_n = 2;
        warps_per_block = 8;
        block_k = 16; // conceptual WMMA K step
        warp_m_tiles = 2;
        warp_n_tiles = 4;
        break;
    case KernelVersion::V1_SmemTiled_8warps_bk32:
        kernel_name = "v1_smem_tiled_8warps_bk32";
        tile_m = 128;
        tile_n = 128;
        warps_m = 4;
        warps_n = 2;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 2;
        warp_n_tiles = 4;
        break;
    case KernelVersion::V6_SmemPadded_128x128_8warps_bk32:
        kernel_name = "v6_smem_padded_128x128_8warps_bk32";
        tile_m = 128;
        tile_n = 128;
        warps_m = 4;
        warps_n = 2;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 2;
        warp_n_tiles = 4;
        break;
    case KernelVersion::V7_SmemPaddedFp16Acc_128x128_8warps_bk32:
        kernel_name = "v7_smem_padded_fp16acc_128x128_8warps_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        tile_m = 128;
        tile_n = 128;
        warps_m = 4;
        warps_n = 2;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 2;
        warp_n_tiles = 4;
        break;
    case KernelVersion::V8_SmemPaddedFp16Acc_BcolGlobal_128x128_8warps_bk32:
        kernel_name = "v8_smem_padded_fp16acc_bcol_global_128x128_8warps_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "col_major";
        b_col_major = true;
        tile_m = 128;
        tile_n = 128;
        warps_m = 4;
        warps_n = 2;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 2;
        warp_n_tiles = 4;
        break;
    case KernelVersion::V9_MmaSyncFp16Acc_128x128_8warps_bk32:
        kernel_name = "v9_mmasync_fp16acc_128x128_8warps_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        tile_m = 128;
        tile_n = 128;
        warps_m = 4;
        warps_n = 2;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 2;
        warp_n_tiles = 4;
        break;
    default:
        kernel_name = "unknown";
        break;
    }
    std::cout << "Kernel config:\n";
    std::cout << "  selected kernel: " << kernel_name << "\n";
    std::cout << "  CTA tile: " << tile_m << "x" << tile_n << "\n";
    std::cout << "  warps/block: " << warps_per_block
              << " (" << warps_per_block * 32 << " threads)\n";
    std::cout << "  warp grid: " << warps_m << "x" << warps_n << "\n";
    std::cout << "  warp tiles: " << warp_m_tiles << "x" << warp_n_tiles
              << " WMMA tiles (each 16x16)\n";
    if (block_k > 0) {
        std::cout << "  K tile (BLOCK_K): " << block_k << "\n";
    }
    std::cout << "  output C: " << c_type << "\n";
    std::cout << "  B layout: " << b_layout << "\n";

    // Host buffers
    std::vector<__half> hA(static_cast<size_t>(kM) * kK);
    std::vector<__half> hB_row(static_cast<size_t>(kK) * kN);
    std::vector<__half> hB_col(static_cast<size_t>(kK) * kN);

    fill_random_half(hA, 0);
    fill_random_half(hB_row, 1);
    pack_col_major_from_row_major(hB_row, hB_col);

    // Device buffers
    __half *dA = nullptr;
    __half *dB_row = nullptr;
    __half *dB_col = nullptr;
    float *dC_f32 = nullptr;
    __half *dC_f16 = nullptr;
    CHECK_CUDA(cudaMalloc(&dA, static_cast<size_t>(kM) * kK * sizeof(__half)));
    CHECK_CUDA(cudaMalloc(&dB_row,
                          static_cast<size_t>(kK) * kN * sizeof(__half)));
    CHECK_CUDA(cudaMalloc(&dB_col,
                          static_cast<size_t>(kK) * kN * sizeof(__half)));
    if (c_is_fp16) {
        CHECK_CUDA(cudaMalloc(&dC_f16,
                              static_cast<size_t>(kM) * kN * sizeof(__half)));
    } else {
        CHECK_CUDA(cudaMalloc(&dC_f32,
                              static_cast<size_t>(kM) * kN * sizeof(float)));
    }

    CHECK_CUDA(cudaMemcpy(dA, hA.data(),
                          static_cast<size_t>(kM) * kK * sizeof(__half),
                          cudaMemcpyHostToDevice));
    CHECK_CUDA(cudaMemcpy(dB_row, hB_row.data(),
                          static_cast<size_t>(kK) * kN * sizeof(__half),
                          cudaMemcpyHostToDevice));
    CHECK_CUDA(cudaMemcpy(dB_col, hB_col.data(),
                          static_cast<size_t>(kK) * kN * sizeof(__half),
                          cudaMemcpyHostToDevice));

    cudaStream_t stream{};
    CHECK_CUDA(cudaStreamCreate(&stream));

    dim3 const block(warps_per_block * 32, 1, 1);
    dim3 const grid(kN / tile_n, kM / tile_m, 1);

    auto launch = [&](cudaStream_t s) {
        if (kernel == KernelVersion::V0_GlobalWmmaLoads) {
            gemm_tc_wmma_v0_global<<<grid, block, 0, s>>>(dA, dB_row, dC_f32);
        } else if (kernel == KernelVersion::V1_SmemTiled_8warps_bk32) {
            gemm_tc_wmma_smem<128, 128, 32, 4, 2><<<grid, block, 0, s>>>(dA, dB_row,
                                                                          dC_f32);
        } else if (kernel == KernelVersion::V6_SmemPadded_128x128_8warps_bk32) {
            // Pad 8 half on the leading dimension (keeps ldm multiple-of-8).
            gemm_tc_wmma_smem_padded<128, 128, 32, 4, 2, 8, 8>
                <<<grid, block, 0, s>>>(dA, dB_row, dC_f32);
        } else if (kernel ==
                   KernelVersion::V7_SmemPaddedFp16Acc_128x128_8warps_bk32) {
            gemm_tc_wmma_smem_padded_acc<128, 128, 32, 4, 2, 8, 8, __half, __half>
                <<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::V8_SmemPaddedFp16Acc_BcolGlobal_128x128_8warps_bk32) {
            gemm_tc_wmma_smem_padded_acc_BcolGlobal<128, 128, 32, 4, 2, 8, 8,
                                                    __half, __half>
                <<<grid, block, 0, s>>>(dA, dB_col, dC_f16);
        } else if (
            kernel == KernelVersion::V9_MmaSyncFp16Acc_128x128_8warps_bk32) {
            gemm_tc_mma_smem_padded_fp16acc<128, 128, 32, 4, 2, 8, 8>
                <<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else {
            // Should be unreachable.
        }
        CHECK_LAST_CUDA();
    };

    // Correctness check: compare a subset against CPU float reference.
    if (do_check) {
        std::cout << "\n[Correctness] verify subset: " << verify_m << "x"
                  << verify_n << " (m,n from [0,0])\n";
        // Run once.
        launch(stream);
        CHECK_CUDA(cudaStreamSynchronize(stream));

        std::vector<float> hC_subset(static_cast<size_t>(verify_m) * verify_n);
        std::vector<float> hC_ref(static_cast<size_t>(verify_m) * verify_n);

        if (c_is_fp16) {
            std::vector<__half> hC_subset_half(
                static_cast<size_t>(verify_m) * verify_n);
            CHECK_CUDA(cudaMemcpy2D(
                hC_subset_half.data(),
                static_cast<size_t>(verify_n) * sizeof(__half), dC_f16,
                static_cast<size_t>(kN) * sizeof(__half),
                static_cast<size_t>(verify_n) * sizeof(__half), verify_m,
                cudaMemcpyDeviceToHost));
            for (size_t i = 0; i < hC_subset.size(); ++i) {
                hC_subset[i] = __half2float(hC_subset_half[i]);
            }
        } else {
            CHECK_CUDA(cudaMemcpy2D(
                hC_subset.data(), static_cast<size_t>(verify_n) * sizeof(float),
                dC_f32, static_cast<size_t>(kN) * sizeof(float),
                static_cast<size_t>(verify_n) * sizeof(float), verify_m,
                cudaMemcpyDeviceToHost));
        }

        auto t0 = std::chrono::high_resolution_clock::now();
        cpu_reference_subset_rowmajor(hA, b_col_major ? hB_col : hB_row, hC_ref,
                                      verify_m, verify_n, b_col_major);
        auto t1 = std::chrono::high_resolution_clock::now();
        double const cpu_ms =
            std::chrono::duration<double, std::milli>(t1 - t0).count();

        ErrorStats const err =
            compare_subset(hC_subset, hC_ref, verify_m, verify_n);

        std::cout << "  cpu_ref_time_ms: " << std::fixed << std::setprecision(3)
                  << cpu_ms << "\n";
        std::cout << "  max_abs_err: " << std::scientific << err.max_abs
                  << " at (" << err.max_abs_m << "," << err.max_abs_n << ")\n";
        std::cout << "  max_rel_err: " << std::scientific << err.max_rel
                  << "\n";

        // Pragmatic thresholds:
        // - FP32 acc/store: allow moderate drift (different reduction order)
        // - FP16 acc/store: expect larger drift; loosen thresholds.
        float const abs_threshold = c_is_fp16 ? 2.0f : 5e-2f;
        float const rel_threshold = c_is_fp16 ? 5e-2f : 5e-3f;

        bool const pass = (err.max_abs <= abs_threshold) ||
                          (err.max_rel <= rel_threshold);
        std::cout << "  threshold: abs<=" << std::scientific << abs_threshold
                  << " OR rel<=" << std::scientific << rel_threshold << "\n";
        std::cout << "  result: " << (pass ? "PASS" : "FAIL") << "\n";
        if (!pass) {
            std::cout << "  Hint: try --kernel=v0 for sanity or relax thresholds "
                         "if needed.\n";
            CHECK_CUDA(cudaStreamDestroy(stream));
            CHECK_CUDA(cudaFree(dA));
            CHECK_CUDA(cudaFree(dB_row));
            CHECK_CUDA(cudaFree(dB_col));
            if (dC_f32) {
                CHECK_CUDA(cudaFree(dC_f32));
            }
            if (dC_f16) {
                CHECK_CUDA(cudaFree(dC_f16));
            }
            return 2;
        }
    }

    // Benchmark
    std::cout << "\n[Benchmark]\n"
              << "  warmup: " << warmup << "\n"
              << "  iters: " << iters << "\n"
              << "  trials: " << trials << "\n";

    float avg_ms = 0.0f;
    float const best_ms = time_kernel_ms(launch, stream, warmup, iters, trials, avg_ms);

    double const flops = 2.0 * static_cast<double>(kM) * kN * kK;
    double const best_tflops = flops / (static_cast<double>(best_ms) * 1e-3) / 1e12;
    double const avg_tflops = flops / (static_cast<double>(avg_ms) * 1e-3) / 1e12;

    std::cout << std::fixed << std::setprecision(4);
    std::cout << "  best_ms: " << best_ms << "\n";
    std::cout << "  avg_ms:  " << avg_ms << "\n";
    std::cout << "  best_TFLOPS: " << best_tflops << "\n";
    std::cout << "  avg_TFLOPS:  " << avg_tflops << "\n";
    std::cout << "  grid: (" << grid.x << "," << grid.y << "," << grid.z << ")\n";
    std::cout << "  block: (" << block.x << "," << block.y << "," << block.z
              << ")\n";

    CHECK_CUDA(cudaStreamDestroy(stream));
    CHECK_CUDA(cudaFree(dA));
    CHECK_CUDA(cudaFree(dB_row));
    CHECK_CUDA(cudaFree(dB_col));
    if (dC_f32) {
        CHECK_CUDA(cudaFree(dC_f32));
    }
    if (dC_f16) {
        CHECK_CUDA(cudaFree(dC_f16));
    }

    return 0;
}
