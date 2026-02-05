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
    V10_SmemPaddedFp16Acc_Skew16_128x128_8warps_bk32 = 10,
    V11_MmaSyncFp16Acc_128x128_8warps_bk64 = 11,
    V12_MmaSyncFp16Acc_BSwizzle_128x128_8warps_bk32 = 12,
    V13_WmmaFp16Acc_128x64_8warps_bk32 = 13,
    V14_WmmaFp16Acc_Pipelined_128x128_8warps_bk32 = 14,
    V15_WmmaFp16Acc_PadB0_128x128_8warps_bk32 = 15,
    V16_MmaPermutedBcolFp16Acc_128x128_warp2x4_bk32 = 16,
    V17_MmaPermutedBcolCpAsync3Fp16Acc_128x128_warp2x4_bk32 = 17,
    V18_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_bk32 = 18,
    V19_MmaPermutedBcolCpAsync2StreamAFp16Acc_128x128_warp2x4_bk32 = 19,
    V20_MmaPermutedBcolCpAsync2Lb3Fp16Acc_128x128_warp2x4_bk32 = 20,
    V21_MmaPermutedBcolCpAsync2SplitAccFp16Acc_128x128_warp2x4_bk32 = 21,
    V22_MmaPermutedBcolLdStPipe2Fp16Acc_128x128_warp2x4_bk32 = 22,
    V23_MmaPermutedBcolCpAsync2Fp16Acc_128x256_warp2x4_bk32 = 23,
    V24_MmaPermutedBcolCpAsync3Fp16Acc_128x256_warp2x4_bk32 = 24,
    V25_MmaPermutedBcolCpAsync2Fp16Acc_128x256_warp2x4_splitk_bk32 = 25,
    V26_MmaPermutedBcolCpAsync2Fp16Acc_128x256_warp2x8_bk32 = 26,
    V27_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_bk64 = 27,
    V28_MmaPermutedBcolCpAsync2Fp16Acc_128x256_warp2x8_allcopy_bk32 = 28,
    V29_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x2_bk32 = 29,
    V30_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_k2pass_bk32 = 30,
    V31_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_xor1_bk32 = 31,
    V32_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_padcol1_bk32 = 32,
    V33_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_nol2_bk32 = 33,
    V34_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_k2pass_bk32 = 34,
    V35_MmaPermutedBcolCpAsync2Fp16Acc_128x256_warp2x4_splitk_lb2_bk32 = 35,
    V36_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_xor1_storefix_bk32 = 36,
    V37_MmaCutlassLikeTN_CpAsync3Fp16Acc_128x256_warp2x4_bk32 = 37,
    V38_MmaCutlassLikeTN_CpAsync3Fp16Acc_128x256_warp2x4_bk32_opt = 38,
    V39_MmaCutlassLikeTN_CpAsync3Fp16Acc_256x128_warp4x2_bk32 = 39,
    V40_MmaCutlassLikeTN_CpAsync3Fp16Acc_128x256_warp2x4_bk32_interleaved = 40,
    V41_MmaCutlassLikeTN_CpAsync3Fp16Acc_128x256_warp2x4_bk32_interleaved_bcross32 = 41,
    V42_MmaCutlassLikeTN_CutlassStyleMainloopFp16Acc_128x256_warp2x4_bk32 = 42,
    V43_MmaCutlassLikeTN_CutlassStyleMainloopStreamAFp16Acc_128x256_warp2x4_bk32 = 43,
    V44_MmaCutlassLikeTN_CutlassStyleMainloopFastStageFp16Acc_128x256_warp2x4_bk32 = 44,
    V45_MmaCutlassLikeTN_CutlassStyleMainloopFastStageCaFp16Acc_128x256_warp2x4_bk32 = 45,
    V46_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfFp16Acc_128x256_warp2x4_bk32 = 46,
    V47_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseFp16Acc_128x256_warp2x4_bk32 = 47,
    V48_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseLateK0LdFp16Acc_128x256_warp2x4_bk32 = 48,
    V49_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYFp16Acc_128x256_warp2x4_bk32 = 49,
    V50_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfStreamAFp16Acc_128x256_warp2x4_bk32 = 50,
    V51_MmaCutlassLikeTN_CutlassStyleMainloopMacLoopInterleavedSwapXYFp16Acc_128x256_warp2x4_bk32 = 51,
    V52_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitFp16Acc_128x256_warp2x4_bk32 = 52,
    V53_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYMmaLdgstsInterleavedFp16Acc_128x256_warp2x4_bk32 = 53,
    V54_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYStreamBFp16Acc_128x256_warp2x4_bk32 = 54,
    V55_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitWarpStaggerNbFp16Acc_128x256_warp2x4_bk32 = 55,
    V56_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitHmmasLdgstsAltFp16Acc_128x256_warp2x4_bk32 = 56,
    V57_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSplitCopy4wA4wBFp16Acc_128x256_warp2x4_bk32 = 57,
    V58_MmaCutlassLikeTN_CpAsync2Fp16Acc_128x256_warp2x4_lowreg_lb2_swapxy = 58,
    V59_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitStagecolAFp16Acc_128x256_warp2x4_bk32 = 59,
    V60_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitPadB8Fp16Acc_128x256_warp2x4_bk32 = 60,
    V61_MmaCutlassLikeTN_CpAsync2Fp16Acc_128x256_warp2x4_bk64_s2_swapxy = 61,
    V62_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitNbSpreadFp16Acc_128x256_warp2x4_bk32 = 62,
    V63_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitCaFp16Acc_128x256_warp2x4_bk32 = 63,
    V64_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitBCross32Fp16Acc_128x256_warp2x4_bk32 = 64,
    V65_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragFp16Acc_128x256_warp2x4_bk32 = 65,
    V66_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8Fp16Acc_128x256_warp2x4_bk32 = 66,
    V67_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitEpilogueVec8Fp16Acc_128x256_warp2x4_bk32 = 67,
    V68_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitEpilogueWarpScratchVec8Fp16Acc_128x256_warp2x4_bk32 = 68,
    V69_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitEpilogueVec8SmemCPad8Fp16Acc_128x256_warp2x4_bk32 = 69,
    V70_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8Fp16Acc_128x256_warp2x4_bk32 = 70,
    V71_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8PtrIncFp16Acc_128x256_warp2x4_bk32 = 71,
    V72_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8DynSmemFp16Acc_128x256_warp2x4_bk32 = 72,
    V73_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8CaFp16Acc_128x256_warp2x4_bk32 = 73,
    V74_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8StageWrapFp16Acc_128x256_warp2x4_bk32 = 74,
    V75_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragStreamBEpilogueVec8SmemCPad8Fp16Acc_128x256_warp2x4_bk32 = 75,
    V76_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8Maxnreg160Fp16Acc_128x256_warp2x4_bk32 = 76,
    V77_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8Maxnreg152Fp16Acc_128x256_warp2x4_bk32 = 77,
    V78_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8ContigCopyFp16Acc_128x256_warp2x4_bk32 = 78,
    V79_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4Fp16Acc_128x256_warp2x4_bk32 = 79,
    V80_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmFp16Acc_128x256_warp2x4_bk32 = 80,
    V81_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmA64ImmFp16Acc_128x256_warp2x4_bk32 = 81,
    V82_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmA64ImmIlCpFp16Acc_128x256_warp2x4_bk32 = 82,
    V83_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffFp16Acc_128x256_warp2x4_bk32 = 83,
    V84_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmEpistoreFp16Acc_128x256_warp2x4_bk32 = 84,
    V86_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffLdsmPipeFp16Acc_128x256_warp2x4_bk32 = 86,
    V87_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffFragdbufFp16Acc_128x256_warp2x4_bk32 = 87,
    V88_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYMidwaitFragpipeFp16Acc_128x256_warp2x4_bk32 = 88,
    V89_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitCpinterleaveFp16Acc_128x256_warp2x4_bk32 = 89,
    V90_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYMidwaitCpinterleaveFragpipeFp16Acc_128x256_warp2x4_bk32 = 90,
    V91_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffStage3UnrollFp16Acc_128x256_warp2x4_bk32 = 91,
    V92_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitWarpSpecCopyA2B4Fp16Acc_128x256_warp2x4_bk32 = 92,
    V93_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffLdsmInterleaveFp16Acc_128x256_warp2x4_bk32 = 93,
    V94_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffLdsmLdgstsInterleaveFp16Acc_128x256_warp2x4_bk32 = 94,
    V95_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffBReuseNMajorFp16Acc_128x256_warp2x4_bk32 = 95,
    V96_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffBReuseABoundaryFp16Acc_128x256_warp2x4_bk32 = 96,
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
// cp.async helpers (sm80+)
// - Used for overlapping gmem->smem copies with compute.
// - We only use 16B copies (int4 / 8 half) and a simple 2-stage ping-pong.
// -----------------------------
__device__ __forceinline__ void cp_async_cg_16B(void *smem_ptr,
                                                void const *gmem_ptr) {
    uint32_t smem_addr = __cvta_generic_to_shared(smem_ptr);
    // Intentionally omit the `"memory"` clobber (matches CUTLASS' practice) to
    // give the compiler more freedom to schedule cp.async around compute.
    asm volatile("cp.async.cg.shared.global [%0], [%1], 16;\n"
                 :
                 : "r"(smem_addr), "l"(gmem_ptr));
}

__device__ __forceinline__ void cp_async_cg_L2_16B(void *smem_ptr,
                                                   void const *gmem_ptr) {
    // `.L2::128B` matches the cache policy used in several high-perf matmul
    // kernels (e.g., spatters' mma-matmul worklog).
    uint32_t smem_addr = __cvta_generic_to_shared(smem_ptr);
    asm volatile("cp.async.cg.shared.global.L2::128B [%0], [%1], 16;\n"
                 :
                 : "r"(smem_addr), "l"(gmem_ptr));
}

__device__ __forceinline__ void cp_async_cg_L2_16B_addr(uint32_t smem_addr,
                                                        void const *gmem_ptr) {
    // Same as cp_async_cg_L2_16B(), but takes a precomputed shared-memory address
    // to avoid repeated `cvta.to.shared` in hot loops.
    asm volatile("cp.async.cg.shared.global.L2::128B [%0], [%1], 16;\n"
                 :
                 : "r"(smem_addr), "l"(gmem_ptr));
}

__device__ __forceinline__ void cp_async_cg_L2_256B_16B_addr(uint32_t smem_addr,
                                                             void const *gmem_ptr) {
    // Variant of cp.async with a larger L2 cache hint line.
    // Some kernels benefit from different `.L2::` policies depending on access
    // patterns and L2 behavior on the target GPU.
    asm volatile("cp.async.cg.shared.global.L2::256B [%0], [%1], 16;\n"
                 :
                 : "r"(smem_addr), "l"(gmem_ptr));
}

__device__ __forceinline__ void cp_async_ca_L2_16B_addr(uint32_t smem_addr,
                                                        void const *gmem_ptr) {
    // CUTLASS uses `cp.async.ca.shared.global[.L2::128B]` for SM80+ mainloops.
    // On Ada (sm_89) this can reduce cp.async latency vs `.cg` in some cases.
    asm volatile("cp.async.ca.shared.global.L2::128B [%0], [%1], 16;\n"
                 :
                 : "r"(smem_addr), "l"(gmem_ptr));
}

__device__ __forceinline__ void cp_async_commit_group() {
    asm volatile("cp.async.commit_group;\n" ::);
}

template <int N>
__device__ __forceinline__ void cp_async_wait_group() {
    asm volatile("cp.async.wait_group %0;\n" : : "n"(N));
}

template <bool USE_L2_HINT>
__device__ __forceinline__ void cp_async_cg_selected_16B(void *smem_ptr,
                                                         void const *gmem_ptr);
template <>
__device__ __forceinline__ void cp_async_cg_selected_16B<false>(
    void *smem_ptr, void const *gmem_ptr) {
    cp_async_cg_16B(smem_ptr, gmem_ptr);
}
template <>
__device__ __forceinline__ void cp_async_cg_selected_16B<true>(
    void *smem_ptr, void const *gmem_ptr) {
    cp_async_cg_L2_16B(smem_ptr, gmem_ptr);
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

// Same math as `gemm_tc_wmma_smem_padded_acc`, but uses a 2-stage cp.async
// pipeline (double-buffered shared memory) to overlap gmem->smem copies with
// Tensor Core compute.
template <int BLOCK_M, int BLOCK_N, int BLOCK_K, int WARPS_M, int WARPS_N,
          int SMEM_PAD_A, int SMEM_PAD_B, typename AccT, typename OutT>
__global__ void gemm_tc_wmma_smem_padded_acc_pipelined(
    const __half *__restrict__ A, const __half *__restrict__ B,
    OutT *__restrict__ C) {
    static_assert(BLOCK_K % kWmmaK == 0, "BLOCK_K must be a multiple of 16");
    static_assert((BLOCK_M % (WARPS_M * kWmmaM)) == 0, "invalid WARPS_M");
    static_assert((BLOCK_N % (WARPS_N * kWmmaN)) == 0, "invalid WARPS_N");
    static_assert(BLOCK_K == 32, "This pipelined kernel is tuned for BK=32.");

    constexpr int SMEM_A_LD = BLOCK_K + SMEM_PAD_A;
    constexpr int SMEM_B_LD = BLOCK_N + SMEM_PAD_B;
    static_assert((SMEM_A_LD % 8) == 0, "wmma requires ldm multiple of 8");
    static_assert((SMEM_B_LD % 8) == 0, "wmma requires ldm multiple of 8");

    using namespace nvcuda;

    constexpr int WARP_M_TILES = BLOCK_M / (WARPS_M * kWmmaM);
    constexpr int WARP_N_TILES = BLOCK_N / (WARPS_N * kWmmaN);
    constexpr int WARPS_PER_BLOCK = WARPS_M * WARPS_N;
    constexpr int THREADS_PER_BLOCK = WARPS_PER_BLOCK * 32;

    constexpr int A_STAGE_ELEMS = BLOCK_M * SMEM_A_LD;
    constexpr int B_STAGE_ELEMS = BLOCK_K * SMEM_B_LD;

    // 2-stage ping-pong shared memory.
    __shared__ __align__(32) __half shmemA[2 * A_STAGE_ELEMS];
    __shared__ __align__(32) __half shmemB[2 * B_STAGE_ELEMS];

    int const tid = static_cast<int>(threadIdx.x);
    int const warp_id = tid >> 5;
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

    // Prefetch k_block=0 into stage 0.
    {
        __half *shA = shmemA;
        __half *shB = shmemB;
        int const k_block = 0;

#pragma unroll
        for (int it = 0; it < A_ITERS; ++it) {
            int const a_int4_idx = tid + it * THREADS_PER_BLOCK;
            int const a_row = a_int4_idx / A_INT4_PER_ROW;
            int const a_seg = a_int4_idx - a_row * A_INT4_PER_ROW;
            int const a_col = a_seg * 8;

            __half const *a_gmem =
                A + (block_m + a_row) * kK + (k_block + a_col);
            void *a_smem = shA + a_row * SMEM_A_LD + a_col;
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
            void *b_smem = shB + b_row * SMEM_B_LD + b_col;
            cp_async_cg_16B(b_smem, b_gmem);
        }

        cp_async_commit_group();
        cp_async_wait_group<0>();
        __syncthreads();
    }

    int stage = 0;
    for (int k_block = 0; k_block < kK; k_block += BLOCK_K) {
        int const next_k = k_block + BLOCK_K;
        int const next_stage = stage ^ 1;

        // Prefetch next tile (if any) into the other stage.
        if (next_k < kK) {
            __half *shA = shmemA + next_stage * A_STAGE_ELEMS;
            __half *shB = shmemB + next_stage * B_STAGE_ELEMS;

#pragma unroll
            for (int it = 0; it < A_ITERS; ++it) {
                int const a_int4_idx = tid + it * THREADS_PER_BLOCK;
                int const a_row = a_int4_idx / A_INT4_PER_ROW;
                int const a_seg = a_int4_idx - a_row * A_INT4_PER_ROW;
                int const a_col = a_seg * 8;

                __half const *a_gmem =
                    A + (block_m + a_row) * kK + (next_k + a_col);
                void *a_smem = shA + a_row * SMEM_A_LD + a_col;
                cp_async_cg_16B(a_smem, a_gmem);
            }

#pragma unroll
            for (int it = 0; it < B_ITERS; ++it) {
                int const b_int4_idx = tid + it * THREADS_PER_BLOCK;
                int const b_row = b_int4_idx / B_INT4_PER_ROW;
                int const b_seg = b_int4_idx - b_row * B_INT4_PER_ROW;
                int const b_col = b_seg * 8;

                __half const *b_gmem =
                    B + (next_k + b_row) * kN + (block_n + b_col);
                void *b_smem = shB + b_row * SMEM_B_LD + b_col;
                cp_async_cg_16B(b_smem, b_gmem);
            }

            cp_async_commit_group();
        }

        __half const *shA = shmemA + stage * A_STAGE_ELEMS;
        __half const *shB = shmemB + stage * B_STAGE_ELEMS;

        // Compute using current stage.
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
                    shA + (warp_m * (WARP_M_TILES * kWmmaM) + i * kWmmaM) *
                               SMEM_A_LD +
                    kk;
                wmma::load_matrix_sync(a_frag[i], a_ptr, SMEM_A_LD);
            }

#pragma unroll
            for (int j = 0; j < WARP_N_TILES; ++j) {
                __half const *b_ptr =
                    shB + kk * SMEM_B_LD +
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

        // Ensure next stage is ready before switching.
        cp_async_wait_group<0>();
        __syncthreads();
        stage = next_stage;
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

// ldmatrix with a compile-time constant byte offset.
//
// This enables the compiler to emit SASS like `LDSM ... [Rbase+0x400]` and can
// reduce integer address arithmetic around the ldmatrix region.
template <int OFFSET_BYTES>
__device__ __forceinline__ void ldmatrix_x4_off(uint32_t &a0, uint32_t &a1,
                                                uint32_t &a2, uint32_t &a3,
                                                uint32_t smem_addr) {
    asm volatile(
        "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {%0,%1,%2,%3}, [%4+%5];\n"
        : "=r"(a0), "=r"(a1), "=r"(a2), "=r"(a3)
        : "r"(smem_addr), "n"(OFFSET_BYTES));
}

__device__ __forceinline__ void ldmatrix_x4_trans(uint32_t &b0, uint32_t &b1,
                                                  uint32_t &b2, uint32_t &b3,
                                                  uint32_t smem_addr) {
    asm volatile(
        "ldmatrix.sync.aligned.m8n8.x4.trans.shared.b16 {%0,%1,%2,%3}, [%4];\n"
        : "=r"(b0), "=r"(b1), "=r"(b2), "=r"(b3)
        : "r"(smem_addr));
}

template <int OFFSET_BYTES>
__device__ __forceinline__ void ldmatrix_x4_trans_off(uint32_t &b0,
                                                      uint32_t &b1,
                                                      uint32_t &b2,
                                                      uint32_t &b3,
                                                      uint32_t smem_addr) {
    asm volatile(
        "ldmatrix.sync.aligned.m8n8.x4.trans.shared.b16 {%0,%1,%2,%3}, [%4+%5];\n"
        : "=r"(b0), "=r"(b1), "=r"(b2), "=r"(b3)
        : "r"(smem_addr), "n"(OFFSET_BYTES));
}

__device__ __forceinline__ void ldmatrix_x2_trans(uint32_t &b0, uint32_t &b1,
                                                  uint32_t smem_addr) {
    asm volatile(
        "ldmatrix.sync.aligned.m8n8.x2.trans.shared.b16 {%0,%1}, [%2];\n"
        : "=r"(b0), "=r"(b1)
        : "r"(smem_addr));
}

__device__ __forceinline__ void ldmatrix_x2(uint32_t &b0, uint32_t &b1,
                                            uint32_t smem_addr) {
    asm volatile("ldmatrix.sync.aligned.m8n8.x2.shared.b16 {%0,%1}, [%2];\n"
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

__device__ __forceinline__ uint32_t add_rn_f16x2(uint32_t a, uint32_t b) {
    uint32_t out;
    asm volatile("add.rn.f16x2 %0, %1, %2;\n"
                 : "=r"(out)
                 : "r"(a), "r"(b));
    return out;
}

template <bool SWIZZLE_B>
__device__ __forceinline__ int b_smem_row(int logical_row, int vec_col) {
    (void)vec_col;
    return logical_row;
}

template <>
__device__ __forceinline__ int b_smem_row<true>(int logical_row, int vec_col) {
    // Simple XOR swizzle within 8-row groups, keyed by 8-half vector column.
    // This is a "minimal" swizzle intended to reduce bank conflicts for
    // ldmatrix on row-major B tiles.
    int const row_in = logical_row & 7;
    int const swizzled = row_in ^ (vec_col & 7);
    return (logical_row & ~7) + swizzled;
}

// Row-major swizzle mapping inspired by CUTLASS tensor-op shared-memory layouts.
//
// This maps logical (row, col) coordinates to a "permuted" physical address in
// shared memory intended to reduce ldmatrix bank conflicts.
//
// Notes:
// - `col` is in **half elements**.
// - The mapping works best when the shared leading dimension is >= 64 and
//   a multiple of 8 half (to keep 16B alignment for vectorized stores).
template <int LD>
__device__ __forceinline__ int swizzle_rm_offset(int row, int col) {
    int const vec_col = col >> 3; // 8 half per 16B vector
    int const tile_col = vec_col >> 3;
    int const tile_row = row >> 3;
    int const rc = vec_col & 7;
    int const rs = row & 7;

    int const ps = rc >> 1;
    int const pc = rs ^ ps;

    int const perm_row = tile_row * 8 + ps;
    int const perm_vec_col = tile_col * 8 + pc;

    return perm_row * LD + perm_vec_col * 8 + (col & 7);
}

// CUTLASS TensorOpMultiplicand (SM75+) pitch-linear row-major mapping (no dependency).
//
// This is a direct translation of the core swizzle in:
//   cutlass/layout/tensor_op_multiplicand_sm75.h :: TensorOpMultiplicand
//
// Semantics:
// - `row`/`col` are in **half elements**
// - row-major view (contiguous = col, strided = row)
// - returns an offset in **half elements** (from the base pointer)
template <int Crosswise, int LD>
__device__ __forceinline__ int tensorop_rm_offset(int row, int col) {
    static_assert((LD % 8) == 0, "LD must be multiple of 8 half (16B stride)");
    static_assert((64 % Crosswise) == 0,
                  "Crosswise must divide 64 for half (128b access)");

    constexpr int kElementsPerAccess = 8; // 128b / 16b
    constexpr int kTileShapeContig = 8;   // vectors per 128B smem line
    constexpr int kFactor = (kTileShapeContig * kElementsPerAccess) / Crosswise;
    static_assert(kFactor > 0, "kFactor must be positive");

    constexpr int kTileShapeStride =
        ((kTileShapeContig / kFactor) > (32 / kTileShapeContig))
            ? (kTileShapeContig / kFactor)
            : (32 / kTileShapeContig);

    constexpr int kPartContig = 4;
    constexpr int kPartStride = 4;

    // Vector indices (1 vector == 8 half == 16B).
    int const vec_c = col >> 3;
    int const vec_s = row / kFactor;

    // Fundamental tile (in units of vector accesses).
    int const tile_c_idx = vec_c / (kTileShapeContig / kFactor);
    int const tile_c_res =
        (vec_c % (kTileShapeContig / kFactor)) +
        ((row % kFactor) * (kTileShapeContig / kFactor));
    int const tile_s_res = vec_s % kTileShapeStride;

    // 4x4 partitions within the fundamental tile.
    int const part_c_idx = tile_c_res / kPartContig;
    int const part_s_idx = tile_s_res / kPartStride;
    int const part_c_res = tile_c_res % kPartContig;
    int const part_s_res = tile_s_res % kPartStride;

    // Swizzle.
    int const perm_vec_c = part_c_res ^ (part_s_res & 3);
    int const perm_part_c = part_c_idx ^ (part_s_idx & 1);

    // Final element location (in half elements).
    int const element_contig =
        (tile_c_idx * kTileShapeContig + perm_part_c * kPartContig + perm_vec_c) *
            kElementsPerAccess +
        (col & 7);
    int const element_strided = vec_s;

    return element_contig + element_strided * LD * kFactor;
}

template <int BLOCK_M, int BLOCK_N, int BLOCK_K, int WARPS_M, int WARPS_N,
          int SMEM_PAD_A, int SMEM_PAD_B, bool SWIZZLE_B = false>
__global__ void gemm_tc_mma_smem_padded_fp16acc(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(BLOCK_M == 128 && BLOCK_N == 128 &&
                      (BLOCK_K == 32 || BLOCK_K == 64),
                  "This kernel is currently tuned for 128x128x{32|64} tiles.");
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

    // Precompute shared-memory base addresses once per thread to avoid
    // `cvta.to.shared` in the inner loops.
    uint32_t const shmemA_base = __cvta_generic_to_shared(shmemA);
    uint32_t const shmemB_base = __cvta_generic_to_shared(shmemB);

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
            int const b_vec = b_col >> 3; // 8 half per vector
            int const b_row_s = b_smem_row<SWIZZLE_B>(b_row, b_vec);
            *reinterpret_cast<int4 *>(shmemB + b_row_s * SMEM_B_LD + b_col) = v;
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
                int const a_off = a_row0 * SMEM_A_LD + a_col0;
                uint32_t const addr_a =
                    shmemA_base + static_cast<uint32_t>(a_off << 1);
                ldmatrix_x4(a_frag[mi][0], a_frag[mi][1], a_frag[mi][2],
                            a_frag[mi][3], addr_a);
            }

            // Load B fragments for the eight 8-col groups.
            uint32_t b_frag[8][2];
#pragma unroll
            for (int nj = 0; nj < 8; ++nj) {
                int const b_row0 = kk + (lane_id % 16);
                int const b_col0 = warp_n * 64 + nj * 8;
                int const b_vec0 = b_col0 >> 3;
                int const b_row_s = b_smem_row<SWIZZLE_B>(b_row0, b_vec0);
                int const b_off = b_row_s * SMEM_B_LD + b_col0;
                uint32_t const addr_b =
                    shmemB_base + static_cast<uint32_t>(b_off << 1);
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

// -----------------------------
// Inline PTX MMA: permuted shared-memory layout (uint4) + optional cp.async pipeline.
//
// This closely follows the indexing/layout strategy in spatters/mma-matmul
// (Kernel 3.1: 128x128 tile, 2x4 warp layout, permuted shmem for ldmatrix).
//
// Key points:
// - Shared memory is organized as uint4 vectors (16B = 8 half). This makes the
//   permuted layout natural and avoids half-index swizzle mistakes.
// - B is expected to be **column-major** in global memory (same logical matrix).
// - Warp layout is 2x4 (8 warps/block). Each warp computes 64x32 output.
// - Each K-block is 32 half (= 4 uint4 vectors along K). We load both k-groups
//   (0..15 and 16..31) via `loadCol ^ 2`.
//
// Compared to our earlier v9 (row-major shared, ldmatrix.trans, 4x2 warps),
// this version aims to:
// - reduce ldmatrix bank conflicts via the permuted layout
// - reduce B-side ldmatrix count by switching to 2x4 warp layout
// - optionally remove the "post-compute" barrier via multi-stage cp.async
// -----------------------------
__launch_bounds__(256)
__global__ void gemm_tc_mma_permuted_bcol_fp16acc_128x128x32_warp2x4(
    const __half *__restrict__ A, const __half *__restrict__ B_col,
    __half *__restrict__ C) {
    constexpr int TILE_M = 128;
    constexpr int TILE_N = 128;
    constexpr int TILE_K = 32; // half
    constexpr int K_VEC = kK / 8; // 8 half per uint4
    static_assert((kK % TILE_K) == 0, "kK must be divisible by 32");
    static_assert((kK % 8) == 0, "kK must be divisible by 8");

    // Shared memory: 64x8 uint4 == 8192B == 128x32 half.
    __shared__ __align__(16) uint4 As[64][8];
    __shared__ __align__(16) uint4 Bs[64][8];

    int const thread_id = static_cast<int>(threadIdx.x);
    int const warp_id = thread_id >> 5;
    int const lane_id = thread_id & 31;

    // Warp layout: 2 (M) x 4 (N)
    int const warp_row = warp_id >> 2;      // warp_id / 4 -> {0,1}
    int const warp_col = warp_id & 3;       // warp_id % 4 -> {0..3}
    int const warp_offset_a = 32 * warp_row; // in permuted shmem "rows"
    int const warp_offset_b = 16 * warp_col; // in permuted shmem "rows"

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

    // Global tiles, vectorized as uint4 along K.
    uint4 const *globalA =
        reinterpret_cast<uint4 const *>(A + block_m * kK);
    uint4 const *globalB =
        reinterpret_cast<uint4 const *>(B_col + block_n * kK);

    // Permuted store indices (per lane).
    int const store_row = warp_id * 4 + (lane_id >> 3); // 0..31
    int const store_col = (lane_id & 7) ^ (lane_id >> 3); // 0..7

    // Permuted load indices (per lane).
    int const load_row_a = (lane_id & 15) >> 1; // 0..7
    int const load_col_a =
        ((lane_id >> 4) + 4 * (lane_id & 1)) ^ (load_row_a & 3);
    int const load_row_b = (lane_id & 7) >> 1; // 0..3
    int const load_col_b =
        ((lane_id >> 3) + 4 * (lane_id & 1)) ^ (load_row_b & 3);

    // Each lane loads one uint4 from the "top" 64 rows/cols and one from the
    // "bottom" 64 rows/cols (for the 128-wide tile).
    uint4 const *a_lane =
        globalA + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);
    uint4 const *b_lane =
        globalB + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);

    uint32_t const As_base = __cvta_generic_to_shared(&As[0][0]);
    uint32_t const Bs_base = __cvta_generic_to_shared(&Bs[0][0]);

    uint32_t aReg[4][8];
    uint32_t bReg[4][4];
    uint32_t c[4][4][2];
#pragma unroll
    for (int m = 0; m < 4; ++m) {
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            c[m][n][0] = 0u;
            c[m][n][1] = 0u;
        }
    }

    for (int k_iter = 0; k_iter < (kK / TILE_K); ++k_iter) {
        int const kStart = k_iter * (TILE_K / 8); // in uint4 units (4)

        // Cooperative gmem->smem copy into permuted layout.
        As[store_row][store_col] = a_lane[kStart];
        As[store_row + 32][store_col] = a_lane[64 * K_VEC + kStart];
        Bs[store_row][store_col] = b_lane[kStart];
        Bs[store_row + 32][store_col] = b_lane[64 * K_VEC + kStart];

        __syncthreads();

        // Load fragments for k=0..15 and k=16..31 from permuted shared memory.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            int const row = m * 8 + warp_offset_a + load_row_a;
            uint32_t const addr0 =
                As_base +
                static_cast<uint32_t>((row * 8 + load_col_a) * sizeof(uint4));
            uint32_t const addr1 =
                As_base + static_cast<uint32_t>(
                              (row * 8 + (load_col_a ^ 2)) * sizeof(uint4));
            ldmatrix_x4(aReg[m][0], aReg[m][1], aReg[m][2], aReg[m][3], addr0);
            ldmatrix_x4(aReg[m][4], aReg[m][5], aReg[m][6], aReg[m][7], addr1);
        }

#pragma unroll
        for (int n = 0; n < 4; ++n) {
            int const row = n * 4 + warp_offset_b + load_row_b;
            uint32_t const addr0 =
                Bs_base +
                static_cast<uint32_t>((row * 8 + load_col_b) * sizeof(uint4));
            uint32_t const addr1 =
                Bs_base + static_cast<uint32_t>(
                              (row * 8 + (load_col_b ^ 2)) * sizeof(uint4));
            ldmatrix_x2(bReg[n][0], bReg[n][1], addr0);
            ldmatrix_x2(bReg[n][2], bReg[n][3], addr1);
        }

        // MMA: two k-groups per K tile.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
#pragma unroll
            for (int n = 0; n < 4; ++n) {
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n][0], c[m][n][1], aReg[m][0], aReg[m][1], aReg[m][2],
                    aReg[m][3], bReg[n][0], bReg[n][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n][0], c[m][n][1], aReg[m][4], aReg[m][5], aReg[m][6],
                    aReg[m][7], bReg[n][2], bReg[n][3]);
            }
        }

        __syncthreads();
    }

    // Store accumulators to global C (row-major).
    int const group_id = lane_id >> 2;
    int const tid_in_group = lane_id & 3;
    int const c_row0 = group_id;
    int const c_row1 = group_id + 8;
    int const c_col0 = tid_in_group * 2;

#pragma unroll
    for (int m = 0; m < 4; ++m) {
        int const base_m = block_m + warp_row * 64 + m * 16;
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            int const base_n = block_n + warp_col * 32 + n * 8;
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

template <int N_STAGES, bool USE_L2_HINT = true, bool K2PASS = false>
__launch_bounds__(256)
__global__ void gemm_tc_mma_permuted_bcol_cpasync_fp16acc_128x128x32_warp2x4(
    const __half *__restrict__ A, const __half *__restrict__ B_col,
    __half *__restrict__ C) {
    static_assert(N_STAGES >= 2, "cp.async pipeline needs at least 2 stages");

    constexpr int TILE_M = 128;
    constexpr int TILE_N = 128;
    constexpr int TILE_K = 32; // half
    constexpr int K_VEC = kK / 8; // 8 half per uint4
    constexpr int K_BLOCKS = kK / TILE_K;
    constexpr int VEC_PER_KBLOCK = TILE_K / 8; // 4
    constexpr int STAGE_ROWS = 64;
    constexpr int STAGE_COLS = 8;
    constexpr int STAGE_BYTES = STAGE_ROWS * STAGE_COLS * sizeof(uint4); // 8192

    __shared__ __align__(16) uint4 As[N_STAGES * STAGE_ROWS][STAGE_COLS];
    __shared__ __align__(16) uint4 Bs[N_STAGES * STAGE_ROWS][STAGE_COLS];

    int const thread_id = static_cast<int>(threadIdx.x);
    int const warp_id = thread_id >> 5;
    int const lane_id = thread_id & 31;

    int const warp_row = warp_id >> 2;
    int const warp_col = warp_id & 3;
    int const warp_offset_a = 32 * warp_row;
    int const warp_offset_b = 16 * warp_col;

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

    uint4 const *globalA =
        reinterpret_cast<uint4 const *>(A + block_m * kK);
    uint4 const *globalB =
        reinterpret_cast<uint4 const *>(B_col + block_n * kK);

    int const store_row = warp_id * 4 + (lane_id >> 3); // 0..31
    int const store_col = (lane_id & 7) ^ (lane_id >> 3); // 0..7

    int const load_row_a = (lane_id & 15) >> 1; // 0..7
    int const load_col_a =
        ((lane_id >> 4) + 4 * (lane_id & 1)) ^ (load_row_a & 3);
    int const load_row_b = (lane_id & 7) >> 1; // 0..3
    int const load_col_b =
        ((lane_id >> 3) + 4 * (lane_id & 1)) ^ (load_row_b & 3);

    uint4 const *a_lane =
        globalA + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);
    uint4 const *b_lane =
        globalB + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);

    uint32_t const As_base = __cvta_generic_to_shared(&As[0][0]);
    uint32_t const Bs_base = __cvta_generic_to_shared(&Bs[0][0]);

    uint32_t aReg[4][8];
    uint32_t bReg[4][4];
    uint32_t c[4][4][2];
#pragma unroll
    for (int m = 0; m < 4; ++m) {
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            c[m][n][0] = 0u;
            c[m][n][1] = 0u;
        }
    }

    // Prefetch first (N_STAGES-1) K blocks.
#pragma unroll
    for (int stage = 0; stage < (N_STAGES - 1); ++stage) {
        int const kStart = stage * VEC_PER_KBLOCK;
        uint4 *aStore = &As[stage * STAGE_ROWS][0];
        uint4 *bStore = &Bs[stage * STAGE_ROWS][0];
        cp_async_cg_selected_16B<USE_L2_HINT>(
            aStore + (store_row * STAGE_COLS + store_col), a_lane + kStart);
        cp_async_cg_selected_16B<USE_L2_HINT>(
            aStore + ((store_row + 32) * STAGE_COLS + store_col),
            a_lane + (64 * K_VEC + kStart));
        cp_async_cg_selected_16B<USE_L2_HINT>(
            bStore + (store_row * STAGE_COLS + store_col), b_lane + kStart);
        cp_async_cg_selected_16B<USE_L2_HINT>(
            bStore + ((store_row + 32) * STAGE_COLS + store_col),
            b_lane + (64 * K_VEC + kStart));
        cp_async_commit_group();
    }

    for (int k_iter = 0; k_iter < K_BLOCKS; ++k_iter) {
        int const load_stage = k_iter % N_STAGES;
        int const store_stage = (k_iter + (N_STAGES - 1)) % N_STAGES;

        uint32_t const a_load_base =
            As_base + static_cast<uint32_t>(load_stage * STAGE_BYTES);
        uint32_t const b_load_base =
            Bs_base + static_cast<uint32_t>(load_stage * STAGE_BYTES);

        // Wait until the current stage is ready.
        cp_async_wait_group<N_STAGES - 2>();
        __syncthreads();

        // Load fragments for k=0..15 and k=16..31 from permuted shared memory.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            int const row = m * 8 + warp_offset_a + load_row_a;
            uint32_t const addr0 =
                a_load_base +
                static_cast<uint32_t>((row * 8 + load_col_a) * sizeof(uint4));
            uint32_t const addr1 =
                a_load_base + static_cast<uint32_t>(
                                  (row * 8 + (load_col_a ^ 2)) * sizeof(uint4));
            ldmatrix_x4(aReg[m][0], aReg[m][1], aReg[m][2], aReg[m][3], addr0);
            ldmatrix_x4(aReg[m][4], aReg[m][5], aReg[m][6], aReg[m][7], addr1);
        }

#pragma unroll
        for (int n = 0; n < 4; ++n) {
            int const row = n * 4 + warp_offset_b + load_row_b;
            uint32_t const addr0 =
                b_load_base +
                static_cast<uint32_t>((row * 8 + load_col_b) * sizeof(uint4));
            uint32_t const addr1 =
                b_load_base + static_cast<uint32_t>(
                                  (row * 8 + (load_col_b ^ 2)) * sizeof(uint4));
            ldmatrix_x2(bReg[n][0], bReg[n][1], addr0);
            ldmatrix_x2(bReg[n][2], bReg[n][3], addr1);
        }

        // Start next async copy.
        int kStart = (k_iter + (N_STAGES - 1)) * VEC_PER_KBLOCK;
        kStart = (kStart > (K_VEC - VEC_PER_KBLOCK)) ? (K_VEC - VEC_PER_KBLOCK)
                                                     : kStart;
        uint4 *aStore = &As[store_stage * STAGE_ROWS][0];
        uint4 *bStore = &Bs[store_stage * STAGE_ROWS][0];
        cp_async_cg_selected_16B<USE_L2_HINT>(
            aStore + (store_row * STAGE_COLS + store_col), a_lane + kStart);
        cp_async_cg_selected_16B<USE_L2_HINT>(
            aStore + ((store_row + 32) * STAGE_COLS + store_col),
            a_lane + (64 * K_VEC + kStart));
        cp_async_cg_selected_16B<USE_L2_HINT>(
            bStore + (store_row * STAGE_COLS + store_col), b_lane + kStart);
        cp_async_cg_selected_16B<USE_L2_HINT>(
            bStore + ((store_row + 32) * STAGE_COLS + store_col),
            b_lane + (64 * K_VEC + kStart));
        cp_async_commit_group();

        // MMA: two k-groups per K tile.
        //
        // By default we fuse k-group0+k-group1 back-to-back for each accumulator.
        // With `K2PASS=true`, we do k-group0 for all accumulators first, then
        // k-group1. This increases the distance between dependent updates of the
        // same accumulator and can improve tensor pipe utilization.
        if (K2PASS) {
#pragma unroll
            for (int m = 0; m < 4; ++m) {
#pragma unroll
                for (int n = 0; n < 4; ++n) {
                    mma_sync_m16n8k16_row_col_f16(
                        c[m][n][0], c[m][n][1], aReg[m][0], aReg[m][1],
                        aReg[m][2], aReg[m][3], bReg[n][0], bReg[n][1]);
                }
            }
#pragma unroll
            for (int m = 0; m < 4; ++m) {
#pragma unroll
                for (int n = 0; n < 4; ++n) {
                    mma_sync_m16n8k16_row_col_f16(
                        c[m][n][0], c[m][n][1], aReg[m][4], aReg[m][5],
                        aReg[m][6], aReg[m][7], bReg[n][2], bReg[n][3]);
                }
            }
        } else {
#pragma unroll
            for (int m = 0; m < 4; ++m) {
#pragma unroll
                for (int n = 0; n < 4; ++n) {
                    mma_sync_m16n8k16_row_col_f16(
                        c[m][n][0], c[m][n][1], aReg[m][0], aReg[m][1],
                        aReg[m][2], aReg[m][3], bReg[n][0], bReg[n][1]);
                    mma_sync_m16n8k16_row_col_f16(
                        c[m][n][0], c[m][n][1], aReg[m][4], aReg[m][5],
                        aReg[m][6], aReg[m][7], bReg[n][2], bReg[n][3]);
                }
            }
        }
    }

    // Store accumulators to global C (row-major).
    int const group_id = lane_id >> 2;
    int const tid_in_group = lane_id & 3;
    int const c_row0 = group_id;
    int const c_row1 = group_id + 8;
    int const c_col0 = tid_in_group * 2;

#pragma unroll
    for (int m = 0; m < 4; ++m) {
        int const base_m = block_m + warp_row * 64 + m * 16;
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            int const base_n = block_n + warp_col * 32 + n * 8;
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

// Same as v17/v18, but adds a small "padding column" in shared memory to skew
// the start address of each row (in units of uint4 / 16B). This is a classic
// trick to further reduce shared-memory bank conflicts for ldmatrix patterns.
//
// Layout notes:
// - store/load indices (store_row/store_col, load_row/load_col) remain in [0,7]
// - STAGE_COLS must be >= 8; columns [8..] are padding (unused)
template <int N_STAGES, int STAGE_COLS>
__launch_bounds__(256)
__global__ void gemm_tc_mma_permuted_bcol_cpasync_fp16acc_128x128x32_warp2x4_padcols(
    const __half *__restrict__ A, const __half *__restrict__ B_col,
    __half *__restrict__ C) {
    static_assert(N_STAGES >= 2, "cp.async pipeline needs at least 2 stages");
    static_assert(STAGE_COLS >= 8, "need at least 8 uint4 columns");

    constexpr int TILE_M = 128;
    constexpr int TILE_N = 128;
    constexpr int TILE_K = 32; // half
    constexpr int K_VEC = kK / 8; // 8 half per uint4
    constexpr int K_BLOCKS = kK / TILE_K;
    constexpr int VEC_PER_KBLOCK = TILE_K / 8; // 4
    constexpr int STAGE_ROWS = 64;
    constexpr int STAGE_BYTES = STAGE_ROWS * STAGE_COLS * sizeof(uint4);

    __shared__ __align__(16) uint4 As[N_STAGES * STAGE_ROWS][STAGE_COLS];
    __shared__ __align__(16) uint4 Bs[N_STAGES * STAGE_ROWS][STAGE_COLS];

    int const thread_id = static_cast<int>(threadIdx.x);
    int const warp_id = thread_id >> 5;
    int const lane_id = thread_id & 31;

    int const warp_row = warp_id >> 2;
    int const warp_col = warp_id & 3;
    int const warp_offset_a = 32 * warp_row;
    int const warp_offset_b = 16 * warp_col;

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

    uint4 const *globalA =
        reinterpret_cast<uint4 const *>(A + block_m * kK);
    uint4 const *globalB =
        reinterpret_cast<uint4 const *>(B_col + block_n * kK);

    int const store_row = warp_id * 4 + (lane_id >> 3); // 0..31
    int const store_col = (lane_id & 7) ^ (lane_id >> 3); // 0..7

    int const load_row_a = (lane_id & 15) >> 1; // 0..7
    int const load_col_a =
        ((lane_id >> 4) + 4 * (lane_id & 1)) ^ (load_row_a & 3);
    int const load_row_b = (lane_id & 7) >> 1; // 0..3
    int const load_col_b =
        ((lane_id >> 3) + 4 * (lane_id & 1)) ^ (load_row_b & 3);

    uint4 const *a_lane =
        globalA + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);
    uint4 const *b_lane =
        globalB + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);

    uint32_t const As_base = __cvta_generic_to_shared(&As[0][0]);
    uint32_t const Bs_base = __cvta_generic_to_shared(&Bs[0][0]);

    uint32_t aReg[4][8];
    uint32_t bReg[4][4];
    uint32_t c[4][4][2];
#pragma unroll
    for (int m = 0; m < 4; ++m) {
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            c[m][n][0] = 0u;
            c[m][n][1] = 0u;
        }
    }

#pragma unroll
    for (int stage = 0; stage < (N_STAGES - 1); ++stage) {
        int const kStart = stage * VEC_PER_KBLOCK;
        uint4 *aStore = &As[stage * STAGE_ROWS][0];
        uint4 *bStore = &Bs[stage * STAGE_ROWS][0];
        cp_async_cg_L2_16B(aStore + (store_row * STAGE_COLS + store_col),
                           a_lane + kStart);
        cp_async_cg_L2_16B(aStore + ((store_row + 32) * STAGE_COLS + store_col),
                           a_lane + (64 * K_VEC + kStart));
        cp_async_cg_L2_16B(bStore + (store_row * STAGE_COLS + store_col),
                           b_lane + kStart);
        cp_async_cg_L2_16B(bStore + ((store_row + 32) * STAGE_COLS + store_col),
                           b_lane + (64 * K_VEC + kStart));
        cp_async_commit_group();
    }

    for (int k_iter = 0; k_iter < K_BLOCKS; ++k_iter) {
        int const load_stage = k_iter % N_STAGES;
        int const store_stage = (k_iter + (N_STAGES - 1)) % N_STAGES;

        uint32_t const a_load_base =
            As_base + static_cast<uint32_t>(load_stage * STAGE_BYTES);
        uint32_t const b_load_base =
            Bs_base + static_cast<uint32_t>(load_stage * STAGE_BYTES);

        cp_async_wait_group<N_STAGES - 2>();
        __syncthreads();

#pragma unroll
        for (int m = 0; m < 4; ++m) {
            int const row = m * 8 + warp_offset_a + load_row_a;
            uint32_t const addr0 =
                a_load_base + static_cast<uint32_t>(
                                  (row * STAGE_COLS + load_col_a) * sizeof(uint4));
            uint32_t const addr1 =
                a_load_base + static_cast<uint32_t>(
                                  (row * STAGE_COLS + (load_col_a ^ 2)) * sizeof(uint4));
            ldmatrix_x4(aReg[m][0], aReg[m][1], aReg[m][2], aReg[m][3], addr0);
            ldmatrix_x4(aReg[m][4], aReg[m][5], aReg[m][6], aReg[m][7], addr1);
        }

#pragma unroll
        for (int n = 0; n < 4; ++n) {
            int const row = n * 4 + warp_offset_b + load_row_b;
            uint32_t const addr0 =
                b_load_base + static_cast<uint32_t>(
                                  (row * STAGE_COLS + load_col_b) * sizeof(uint4));
            uint32_t const addr1 =
                b_load_base + static_cast<uint32_t>(
                                  (row * STAGE_COLS + (load_col_b ^ 2)) * sizeof(uint4));
            ldmatrix_x2(bReg[n][0], bReg[n][1], addr0);
            ldmatrix_x2(bReg[n][2], bReg[n][3], addr1);
        }

        // Start next async copy.
        int kStart = (k_iter + (N_STAGES - 1)) * VEC_PER_KBLOCK;
        kStart = (kStart > (K_VEC - VEC_PER_KBLOCK)) ? (K_VEC - VEC_PER_KBLOCK)
                                                     : kStart;
        uint4 *aStore = &As[store_stage * STAGE_ROWS][0];
        uint4 *bStore = &Bs[store_stage * STAGE_ROWS][0];
        cp_async_cg_L2_16B(aStore + (store_row * STAGE_COLS + store_col),
                           a_lane + kStart);
        cp_async_cg_L2_16B(aStore + ((store_row + 32) * STAGE_COLS + store_col),
                           a_lane + (64 * K_VEC + kStart));
        cp_async_cg_L2_16B(bStore + (store_row * STAGE_COLS + store_col),
                           b_lane + kStart);
        cp_async_cg_L2_16B(bStore + ((store_row + 32) * STAGE_COLS + store_col),
                           b_lane + (64 * K_VEC + kStart));
        cp_async_commit_group();

#pragma unroll
        for (int m = 0; m < 4; ++m) {
#pragma unroll
            for (int n = 0; n < 4; ++n) {
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n][0], c[m][n][1], aReg[m][0], aReg[m][1], aReg[m][2],
                    aReg[m][3], bReg[n][0], bReg[n][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n][0], c[m][n][1], aReg[m][4], aReg[m][5], aReg[m][6],
                    aReg[m][7], bReg[n][2], bReg[n][3]);
            }
        }
    }

    int const group_id = lane_id >> 2;
    int const tid_in_group = lane_id & 3;
    int const c_row0 = group_id;
    int const c_row1 = group_id + 8;
    int const c_col0 = tid_in_group * 2;

#pragma unroll
    for (int m = 0; m < 4; ++m) {
        int const base_m = block_m + warp_row * 64 + m * 16;
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            int const base_n = block_n + warp_col * 32 + n * 8;
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

// 128x128 tile with 2x2 warps (4 warps/block), each warp computes 64x64 output.
//
// Motivation:
// - v17/v18 (2x4 warps, 64x32/warp) reaches ~155 TFLOPS but Nsight Compute shows
//   tensor pipe utilization ~80% with non-trivial `mio_throttle` + barrier stall.
// - Switching to 64x64/warp increases the MMA/ldmatrix ratio (A fragments are
//   reused across more N slices within a warp), which can reduce MIO pressure.
// - Using only 4 warps/block keeps per-block registers manageable, allowing
//   multiple CTAs per SM so barrier cost can still be hidden.
//
// Copy mapping notes:
// - A/B tiles are stored in the same proven permuted 64x8 uint4 layout.
// - With only 4 warps, we cover the full 128 rows/cols by doing 4 "replicas"
//   of the v18 store mapping: each thread issues 4 copies for A and 4 for B
//   (total 8 cp.async, matching 16KB / 16B = 1024 transactions per stage).
__launch_bounds__(128)
__global__ void gemm_tc_mma_permuted_bcol_cpasync2_fp16acc_128x128x32_warp2x2(
    const __half *__restrict__ A, const __half *__restrict__ B_col,
    __half *__restrict__ C) {
    constexpr int N_STAGES = 2;

    constexpr int TILE_M = 128;
    constexpr int TILE_N = 128;
    constexpr int TILE_K = 32; // half
    constexpr int K_VEC = kK / 8; // 8 half per uint4
    constexpr int K_BLOCKS = kK / TILE_K;
    constexpr int VEC_PER_KBLOCK = TILE_K / 8; // 4
    constexpr int STAGE_ROWS = 64;
    constexpr int STAGE_COLS = 8;
    constexpr int STAGE_BYTES = STAGE_ROWS * STAGE_COLS * sizeof(uint4); // 8192

    __shared__ __align__(16) uint4 As[N_STAGES * STAGE_ROWS][STAGE_COLS];
    __shared__ __align__(16) uint4 Bs[N_STAGES * STAGE_ROWS][STAGE_COLS];

    int const thread_id = static_cast<int>(threadIdx.x);
    int const warp_id = thread_id >> 5; // 0..3
    int const lane_id = thread_id & 31;

    // Warp layout: 2 (M) x 2 (N).
    int const warp_row = warp_id >> 1; // /2 -> {0,1}
    int const warp_col = warp_id & 1;  // %2 -> {0,1}

    int const warp_offset_a = 32 * warp_row;
    int const warp_offset_b = 32 * warp_col;

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

    uint4 const *globalA =
        reinterpret_cast<uint4 const *>(A + block_m * kK);
    uint4 const *globalB =
        reinterpret_cast<uint4 const *>(B_col + block_n * kK);

    // Base mapping covers a 32-row/32-col slice. We replicate it 4 times
    // (offsets 0,32,64,96) to cover the full 128 rows/cols.
    int const store_row_base = warp_id * 4 + (lane_id >> 3); // 0..15
    int const store_col = (lane_id & 7) ^ (lane_id >> 3);    // 0..7

    // Base lane pointers cover logical rows/cols 0..31.
    uint4 const *a_lane_base =
        globalA + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);
    uint4 const *b_lane_base =
        globalB + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);

    int const load_row_a = (lane_id & 15) >> 1; // 0..7
    int const load_col_a =
        ((lane_id >> 4) + 4 * (lane_id & 1)) ^ (load_row_a & 3);
    int const load_row_b = (lane_id & 7) >> 1; // 0..3
    int const load_col_b =
        ((lane_id >> 3) + 4 * (lane_id & 1)) ^ (load_row_b & 3);

    uint32_t const As_base = __cvta_generic_to_shared(&As[0][0]);
    uint32_t const Bs_base = __cvta_generic_to_shared(&Bs[0][0]);

    uint32_t aReg[4][8];
    uint32_t bReg[8][4];
    uint32_t c[4][8][2];
#pragma unroll
    for (int m = 0; m < 4; ++m) {
#pragma unroll
        for (int n = 0; n < 8; ++n) {
            c[m][n][0] = 0u;
            c[m][n][1] = 0u;
        }
    }

    // Prefetch stage 0 (kStart=0).
    {
        uint4 *aStore = &As[0][0];
        uint4 *bStore = &Bs[0][0];

#pragma unroll
        for (int rep = 0; rep < 4; ++rep) {
            int const store_row = store_row_base + rep * 16;
            int const base_off = rep * 32 * K_VEC;
            cp_async_cg_L2_16B(
                aStore + (store_row * STAGE_COLS + store_col),
                a_lane_base + (base_off + 0));
            cp_async_cg_L2_16B(
                bStore + (store_row * STAGE_COLS + store_col),
                b_lane_base + (base_off + 0));
        }
        cp_async_commit_group();
    }

    for (int k_iter = 0; k_iter < K_BLOCKS; ++k_iter) {
        int const load_stage = k_iter & 1;
        int const store_stage = load_stage ^ 1;

        uint32_t const a_load_base =
            As_base + static_cast<uint32_t>(load_stage * STAGE_BYTES);
        uint32_t const b_load_base =
            Bs_base + static_cast<uint32_t>(load_stage * STAGE_BYTES);

        cp_async_wait_group<0>();
        __syncthreads();

        // Start next async copy early (skip at tail).
        if (k_iter + 1 < K_BLOCKS) {
            int const kStart = (k_iter + 1) * VEC_PER_KBLOCK;
            uint4 *aStore = &As[store_stage * STAGE_ROWS][0];
            uint4 *bStore = &Bs[store_stage * STAGE_ROWS][0];

#pragma unroll
            for (int rep = 0; rep < 4; ++rep) {
                int const store_row = store_row_base + rep * 16;
                int const base_off = rep * 32 * K_VEC;
                cp_async_cg_L2_16B(
                    aStore + (store_row * STAGE_COLS + store_col),
                    a_lane_base + (base_off + kStart));
                cp_async_cg_L2_16B(
                    bStore + (store_row * STAGE_COLS + store_col),
                    b_lane_base + (base_off + kStart));
            }
            cp_async_commit_group();
        }

        // Load A regs (both k-groups).
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            int const row = m * 8 + warp_offset_a + load_row_a;
            uint32_t const addr0 =
                a_load_base +
                static_cast<uint32_t>((row * 8 + load_col_a) * sizeof(uint4));
            uint32_t const addr1 =
                a_load_base + static_cast<uint32_t>(
                                  (row * 8 + (load_col_a ^ 2)) * sizeof(uint4));
            ldmatrix_x4(aReg[m][0], aReg[m][1], aReg[m][2], aReg[m][3], addr0);
            ldmatrix_x4(aReg[m][4], aReg[m][5], aReg[m][6], aReg[m][7], addr1);
        }

        // Load B regs (both k-groups). 64 columns => 8 n-slices.
#pragma unroll
        for (int n = 0; n < 8; ++n) {
            int const row = n * 4 + warp_offset_b + load_row_b;
            uint32_t const addr0 =
                b_load_base +
                static_cast<uint32_t>((row * 8 + load_col_b) * sizeof(uint4));
            uint32_t const addr1 =
                b_load_base + static_cast<uint32_t>(
                                  (row * 8 + (load_col_b ^ 2)) * sizeof(uint4));
            ldmatrix_x2(bReg[n][0], bReg[n][1], addr0);
            ldmatrix_x2(bReg[n][2], bReg[n][3], addr1);
        }

        // MMA.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
#pragma unroll
            for (int n = 0; n < 8; ++n) {
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n][0], c[m][n][1], aReg[m][0], aReg[m][1], aReg[m][2],
                    aReg[m][3], bReg[n][0], bReg[n][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n][0], c[m][n][1], aReg[m][4], aReg[m][5], aReg[m][6],
                    aReg[m][7], bReg[n][2], bReg[n][3]);
            }
        }
    }

    // Store.
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

// 128x128 tile, 2x4 warps (same mapping as v18), but schedules MMA as two passes:
// - First pass computes k-group 0 (k=0..15) for all accumulators.
// - Second pass computes k-group 1 (k=16..31) for all accumulators.
//
// Rationale:
// - In v18, we execute two dependent `mma.sync` back-to-back per accumulator
//   (`k0` then `k1`). On Ada, this can create a tighter dependency chain and
//   reduce tensor pipe utilization.
// - Splitting into two passes increases the distance between dependent updates
//   of the same accumulator, giving the scheduler more room to hide MMA latency.
__launch_bounds__(256)
__global__ void gemm_tc_mma_permuted_bcol_cpasync2_fp16acc_128x128x32_warp2x4_k2pass(
    const __half *__restrict__ A, const __half *__restrict__ B_col,
    __half *__restrict__ C) {
    constexpr int N_STAGES = 2;

    constexpr int TILE_M = 128;
    constexpr int TILE_N = 128;
    constexpr int TILE_K = 32; // half
    constexpr int K_VEC = kK / 8; // 8 half per uint4
    constexpr int K_BLOCKS = kK / TILE_K;
    constexpr int VEC_PER_KBLOCK = TILE_K / 8; // 4
    constexpr int STAGE_ROWS = 64;
    constexpr int STAGE_COLS = 8;
    constexpr int STAGE_BYTES = STAGE_ROWS * STAGE_COLS * sizeof(uint4); // 8192

    __shared__ __align__(16) uint4 As[N_STAGES * STAGE_ROWS][STAGE_COLS];
    __shared__ __align__(16) uint4 Bs[N_STAGES * STAGE_ROWS][STAGE_COLS];

    int const thread_id = static_cast<int>(threadIdx.x);
    int const warp_id = thread_id >> 5;
    int const lane_id = thread_id & 31;

    // Warp layout: 2 (M) x 4 (N).
    int const warp_row = warp_id >> 2;
    int const warp_col = warp_id & 3;
    int const warp_offset_a = 32 * warp_row;
    int const warp_offset_b = 16 * warp_col;

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

    uint4 const *globalA =
        reinterpret_cast<uint4 const *>(A + block_m * kK);
    uint4 const *globalB =
        reinterpret_cast<uint4 const *>(B_col + block_n * kK);

    int const store_row = warp_id * 4 + (lane_id >> 3); // 0..31
    int const store_col = (lane_id & 7) ^ (lane_id >> 3); // 0..7

    int const load_row_a = (lane_id & 15) >> 1; // 0..7
    int const load_col_a =
        ((lane_id >> 4) + 4 * (lane_id & 1)) ^ (load_row_a & 3);
    int const load_row_b = (lane_id & 7) >> 1; // 0..3
    int const load_col_b =
        ((lane_id >> 3) + 4 * (lane_id & 1)) ^ (load_row_b & 3);

    uint4 const *a_lane =
        globalA + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);
    uint4 const *b_lane =
        globalB + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);

    uint32_t const As_base = __cvta_generic_to_shared(&As[0][0]);
    uint32_t const Bs_base = __cvta_generic_to_shared(&Bs[0][0]);

    uint32_t aReg[4][8];
    uint32_t bReg[4][4];
    uint32_t c[4][4][2];
#pragma unroll
    for (int m = 0; m < 4; ++m) {
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            c[m][n][0] = 0u;
            c[m][n][1] = 0u;
        }
    }

    // Prefetch stage 0.
    {
        uint4 *aStore = &As[0][0];
        uint4 *bStore = &Bs[0][0];

        cp_async_cg_L2_16B(aStore + (store_row * STAGE_COLS + store_col),
                           a_lane + 0);
        cp_async_cg_L2_16B(aStore + ((store_row + 32) * STAGE_COLS + store_col),
                           a_lane + (64 * K_VEC + 0));
        cp_async_cg_L2_16B(bStore + (store_row * STAGE_COLS + store_col),
                           b_lane + 0);
        cp_async_cg_L2_16B(bStore + ((store_row + 32) * STAGE_COLS + store_col),
                           b_lane + (64 * K_VEC + 0));
        cp_async_commit_group();
    }

    for (int k_iter = 0; k_iter < K_BLOCKS; ++k_iter) {
        int const load_stage = k_iter & 1;
        int const store_stage = load_stage ^ 1;

        uint32_t const a_load_base =
            As_base + static_cast<uint32_t>(load_stage * STAGE_BYTES);
        uint32_t const b_load_base =
            Bs_base + static_cast<uint32_t>(load_stage * STAGE_BYTES);

        cp_async_wait_group<0>();
        __syncthreads();

        // Start next async copy early (skip at tail).
        if (k_iter + 1 < K_BLOCKS) {
            int const kStart = (k_iter + 1) * VEC_PER_KBLOCK;
            uint4 *aStore = &As[store_stage * STAGE_ROWS][0];
            uint4 *bStore = &Bs[store_stage * STAGE_ROWS][0];

            cp_async_cg_L2_16B(aStore + (store_row * STAGE_COLS + store_col),
                               a_lane + kStart);
            cp_async_cg_L2_16B(
                aStore + ((store_row + 32) * STAGE_COLS + store_col),
                a_lane + (64 * K_VEC + kStart));
            cp_async_cg_L2_16B(bStore + (store_row * STAGE_COLS + store_col),
                               b_lane + kStart);
            cp_async_cg_L2_16B(
                bStore + ((store_row + 32) * STAGE_COLS + store_col),
                b_lane + (64 * K_VEC + kStart));
            cp_async_commit_group();
        }

        // Load A regs (both k-groups).
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            int const row = m * 8 + warp_offset_a + load_row_a;
            uint32_t const addr0 =
                a_load_base +
                static_cast<uint32_t>((row * 8 + load_col_a) * sizeof(uint4));
            uint32_t const addr1 =
                a_load_base + static_cast<uint32_t>(
                                  (row * 8 + (load_col_a ^ 2)) * sizeof(uint4));
            ldmatrix_x4(aReg[m][0], aReg[m][1], aReg[m][2], aReg[m][3], addr0);
            ldmatrix_x4(aReg[m][4], aReg[m][5], aReg[m][6], aReg[m][7], addr1);
        }

        // Load B regs (both k-groups).
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            int const row = n * 4 + warp_offset_b + load_row_b;
            uint32_t const addr0 =
                b_load_base +
                static_cast<uint32_t>((row * 8 + load_col_b) * sizeof(uint4));
            uint32_t const addr1 =
                b_load_base + static_cast<uint32_t>(
                                  (row * 8 + (load_col_b ^ 2)) * sizeof(uint4));
            ldmatrix_x2(bReg[n][0], bReg[n][1], addr0);
            ldmatrix_x2(bReg[n][2], bReg[n][3], addr1);
        }

        // MMA pass 1: k-group 0 (k=0..15).
#pragma unroll
        for (int m = 0; m < 4; ++m) {
#pragma unroll
            for (int n = 0; n < 4; ++n) {
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n][0], c[m][n][1], aReg[m][0], aReg[m][1], aReg[m][2],
                    aReg[m][3], bReg[n][0], bReg[n][1]);
            }
        }

        // MMA pass 2: k-group 1 (k=16..31).
#pragma unroll
        for (int m = 0; m < 4; ++m) {
#pragma unroll
            for (int n = 0; n < 4; ++n) {
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n][0], c[m][n][1], aReg[m][4], aReg[m][5], aReg[m][6],
                    aReg[m][7], bReg[n][2], bReg[n][3]);
            }
        }
    }

    int const group_id = lane_id >> 2;
    int const tid_in_group = lane_id & 3;
    int const c_row0 = group_id;
    int const c_row1 = group_id + 8;
    int const c_col0 = tid_in_group * 2;

#pragma unroll
    for (int m = 0; m < 4; ++m) {
        int const base_m = block_m + warp_row * 64 + m * 16;
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            int const base_n = block_n + warp_col * 32 + n * 8;
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

// 128x128 tile, 2x4 warps (same as v18), but uses a different k-group toggle
// for the second half of TILE_K:
// - baseline v18/v17 use `load_col ^ 2`
// - this experimental variant uses `load_col ^ 1` (inspired by CUTLASS'
//   documented k-group XOR update sequence)
//
// NOTE: this is an experiment; keep it separate from v18 to avoid regressing
// the known-good baseline.
__launch_bounds__(256)
__global__ void gemm_tc_mma_permuted_bcol_cpasync2_fp16acc_128x128x32_warp2x4_xor1(
    const __half *__restrict__ A, const __half *__restrict__ B_col,
    __half *__restrict__ C) {
    constexpr int N_STAGES = 2;

    constexpr int TILE_M = 128;
    constexpr int TILE_N = 128;
    constexpr int TILE_K = 32; // half
    constexpr int K_VEC = kK / 8; // 8 half per uint4
    constexpr int K_BLOCKS = kK / TILE_K;
    constexpr int VEC_PER_KBLOCK = TILE_K / 8; // 4
    constexpr int STAGE_ROWS = 64;
    constexpr int STAGE_COLS = 8;
    constexpr int STAGE_BYTES = STAGE_ROWS * STAGE_COLS * sizeof(uint4); // 8192

    __shared__ __align__(16) uint4 As[N_STAGES * STAGE_ROWS][STAGE_COLS];
    __shared__ __align__(16) uint4 Bs[N_STAGES * STAGE_ROWS][STAGE_COLS];

    int const thread_id = static_cast<int>(threadIdx.x);
    int const warp_id = thread_id >> 5;
    int const lane_id = thread_id & 31;

    int const warp_row = warp_id >> 2;
    int const warp_col = warp_id & 3;
    int const warp_offset_a = 32 * warp_row;
    int const warp_offset_b = 16 * warp_col;

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

    uint4 const *globalA =
        reinterpret_cast<uint4 const *>(A + block_m * kK);
    uint4 const *globalB =
        reinterpret_cast<uint4 const *>(B_col + block_n * kK);

    int const store_row = warp_id * 4 + (lane_id >> 3); // 0..31
    int const store_col = (lane_id & 7) ^ (lane_id >> 3); // 0..7

    int const load_row_a = (lane_id & 15) >> 1; // 0..7
    int const load_col_a =
        ((lane_id >> 4) + 4 * (lane_id & 1)) ^ (load_row_a & 3);
    int const load_row_b = (lane_id & 7) >> 1; // 0..3
    int const load_col_b =
        ((lane_id >> 3) + 4 * (lane_id & 1)) ^ (load_row_b & 3);

    uint4 const *a_lane =
        globalA + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);
    uint4 const *b_lane =
        globalB + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);

    uint32_t const As_base = __cvta_generic_to_shared(&As[0][0]);
    uint32_t const Bs_base = __cvta_generic_to_shared(&Bs[0][0]);

    uint32_t aReg[4][8];
    uint32_t bReg[4][4];
    uint32_t c[4][4][2];
#pragma unroll
    for (int m = 0; m < 4; ++m) {
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            c[m][n][0] = 0u;
            c[m][n][1] = 0u;
        }
    }

    // Prefetch stage 0.
    {
        uint4 *aStore = &As[0][0];
        uint4 *bStore = &Bs[0][0];

        cp_async_cg_L2_16B(aStore + (store_row * STAGE_COLS + store_col),
                           a_lane + 0);
        cp_async_cg_L2_16B(aStore + ((store_row + 32) * STAGE_COLS + store_col),
                           a_lane + (64 * K_VEC + 0));
        cp_async_cg_L2_16B(bStore + (store_row * STAGE_COLS + store_col),
                           b_lane + 0);
        cp_async_cg_L2_16B(bStore + ((store_row + 32) * STAGE_COLS + store_col),
                           b_lane + (64 * K_VEC + 0));
        cp_async_commit_group();
    }

    for (int k_iter = 0; k_iter < K_BLOCKS; ++k_iter) {
        int const load_stage = k_iter & 1;
        int const store_stage = load_stage ^ 1;

        uint32_t const a_load_base =
            As_base + static_cast<uint32_t>(load_stage * STAGE_BYTES);
        uint32_t const b_load_base =
            Bs_base + static_cast<uint32_t>(load_stage * STAGE_BYTES);

        cp_async_wait_group<0>();
        __syncthreads();

        // Load A fragments for k=0..15 and k=16..31.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            int const row = m * 8 + warp_offset_a + load_row_a;
            uint32_t const addr0 =
                a_load_base +
                static_cast<uint32_t>((row * 8 + load_col_a) * sizeof(uint4));
            uint32_t const addr1 =
                a_load_base + static_cast<uint32_t>(
                                  (row * 8 + (load_col_a ^ 1)) * sizeof(uint4));
            ldmatrix_x4(aReg[m][0], aReg[m][1], aReg[m][2], aReg[m][3], addr0);
            ldmatrix_x4(aReg[m][4], aReg[m][5], aReg[m][6], aReg[m][7], addr1);
        }

        // Load B fragments for 32 columns (4 n-slices) within the warp tile.
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            int const row = n * 4 + warp_offset_b + load_row_b;
            uint32_t const addr0 =
                b_load_base +
                static_cast<uint32_t>((row * 8 + load_col_b) * sizeof(uint4));
            uint32_t const addr1 =
                b_load_base + static_cast<uint32_t>(
                                  (row * 8 + (load_col_b ^ 1)) * sizeof(uint4));
            ldmatrix_x2(bReg[n][0], bReg[n][1], addr0);
            ldmatrix_x2(bReg[n][2], bReg[n][3], addr1);
        }

        // Start next async copy (skip at tail).
        if (k_iter + 1 < K_BLOCKS) {
            int const kStart = (k_iter + 1) * VEC_PER_KBLOCK;
            uint4 *aStore = &As[store_stage * STAGE_ROWS][0];
            uint4 *bStore = &Bs[store_stage * STAGE_ROWS][0];

            cp_async_cg_L2_16B(aStore + (store_row * STAGE_COLS + store_col),
                               a_lane + kStart);
            cp_async_cg_L2_16B(
                aStore + ((store_row + 32) * STAGE_COLS + store_col),
                a_lane + (64 * K_VEC + kStart));
            cp_async_cg_L2_16B(bStore + (store_row * STAGE_COLS + store_col),
                               b_lane + kStart);
            cp_async_cg_L2_16B(
                bStore + ((store_row + 32) * STAGE_COLS + store_col),
                b_lane + (64 * K_VEC + kStart));
            cp_async_commit_group();
        }

        // MMA: two k-groups per K tile.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
#pragma unroll
            for (int n = 0; n < 4; ++n) {
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n][0], c[m][n][1], aReg[m][0], aReg[m][1], aReg[m][2],
                    aReg[m][3], bReg[n][0], bReg[n][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n][0], c[m][n][1], aReg[m][4], aReg[m][5], aReg[m][6],
                    aReg[m][7], bReg[n][2], bReg[n][3]);
            }
        }
    }

    int const group_id = lane_id >> 2;
    int const tid_in_group = lane_id & 3;
    int const c_row0 = group_id;
    int const c_row1 = group_id + 8;
    int const c_col0 = tid_in_group * 2;

#pragma unroll
    for (int m = 0; m < 4; ++m) {
        int const base_m = block_m + warp_row * 64 + m * 16;
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            int const base_n = block_n + warp_col * 32 + n * 8;
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

// Follow-up experiment for v31:
// - v31 changes the k-group toggle from `^2` to `^1` (closer to the CUTLASS
//   documented k-group XOR sequence), which improves perf but breaks correctness.
// - Hypothesis: correctness can be recovered by also permuting the *store-side*
//   shared-memory columns for the lanes contributing to the second half of the
//   K tile. We attempt a minimal tweak: add an extra XOR based on `lane_id & 2`.
//
// NOTE: this is an experiment and may still be incorrect.
__launch_bounds__(256)
__global__ void
gemm_tc_mma_permuted_bcol_cpasync2_fp16acc_128x128x32_warp2x4_xor1_storefix(
    const __half *__restrict__ A, const __half *__restrict__ B_col,
    __half *__restrict__ C) {
    constexpr int N_STAGES = 2;

    constexpr int TILE_M = 128;
    constexpr int TILE_N = 128;
    constexpr int TILE_K = 32; // half
    constexpr int K_VEC = kK / 8; // 8 half per uint4
    constexpr int K_BLOCKS = kK / TILE_K;
    constexpr int VEC_PER_KBLOCK = TILE_K / 8; // 4
    constexpr int STAGE_ROWS = 64;
    constexpr int STAGE_COLS = 8;
    constexpr int STAGE_BYTES = STAGE_ROWS * STAGE_COLS * sizeof(uint4); // 8192

    __shared__ __align__(16) uint4 As[N_STAGES * STAGE_ROWS][STAGE_COLS];
    __shared__ __align__(16) uint4 Bs[N_STAGES * STAGE_ROWS][STAGE_COLS];

    int const thread_id = static_cast<int>(threadIdx.x);
    int const warp_id = thread_id >> 5;
    int const lane_id = thread_id & 31;

    int const warp_row = warp_id >> 2;
    int const warp_col = warp_id & 3;
    int const warp_offset_a = 32 * warp_row;
    int const warp_offset_b = 16 * warp_col;

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

    uint4 const *globalA = reinterpret_cast<uint4 const *>(A + block_m * kK);
    uint4 const *globalB = reinterpret_cast<uint4 const *>(B_col + block_n * kK);

    int const store_row = warp_id * 4 + (lane_id >> 3); // 0..31
    int const store_col = ((lane_id & 7) ^ (lane_id >> 3)) ^ ((lane_id & 2) >> 1);

    int const load_row_a = (lane_id & 15) >> 1; // 0..7
    int const load_col_a =
        ((lane_id >> 4) + 4 * (lane_id & 1)) ^ (load_row_a & 3);
    int const load_row_b = (lane_id & 7) >> 1; // 0..3
    int const load_col_b =
        ((lane_id >> 3) + 4 * (lane_id & 1)) ^ (load_row_b & 3);

    uint4 const *a_lane =
        globalA + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);
    uint4 const *b_lane =
        globalB + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);

    uint32_t const As_base = __cvta_generic_to_shared(&As[0][0]);
    uint32_t const Bs_base = __cvta_generic_to_shared(&Bs[0][0]);

    uint32_t aReg[4][8];
    uint32_t bReg[4][4];
    uint32_t c[4][4][2];
#pragma unroll
    for (int m = 0; m < 4; ++m) {
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            c[m][n][0] = 0u;
            c[m][n][1] = 0u;
        }
    }

    // Prefetch stage 0.
    {
        uint4 *aStore = &As[0][0];
        uint4 *bStore = &Bs[0][0];

        cp_async_cg_L2_16B(aStore + (store_row * STAGE_COLS + store_col),
                           a_lane + 0);
        cp_async_cg_L2_16B(aStore + ((store_row + 32) * STAGE_COLS + store_col),
                           a_lane + (64 * K_VEC + 0));
        cp_async_cg_L2_16B(bStore + (store_row * STAGE_COLS + store_col),
                           b_lane + 0);
        cp_async_cg_L2_16B(bStore + ((store_row + 32) * STAGE_COLS + store_col),
                           b_lane + (64 * K_VEC + 0));
        cp_async_commit_group();
    }

    for (int k_iter = 0; k_iter < K_BLOCKS; ++k_iter) {
        int const load_stage = k_iter & 1;
        int const store_stage = load_stage ^ 1;

        uint32_t const a_load_base =
            As_base + static_cast<uint32_t>(load_stage * STAGE_BYTES);
        uint32_t const b_load_base =
            Bs_base + static_cast<uint32_t>(load_stage * STAGE_BYTES);

        cp_async_wait_group<0>();
        __syncthreads();

        // Load A fragments for k=0..15 and k=16..31.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            int const row = m * 8 + warp_offset_a + load_row_a;
            uint32_t const addr0 =
                a_load_base +
                static_cast<uint32_t>((row * 8 + load_col_a) * sizeof(uint4));
            uint32_t const addr1 =
                a_load_base + static_cast<uint32_t>(
                                  (row * 8 + (load_col_a ^ 1)) * sizeof(uint4));
            ldmatrix_x4(aReg[m][0], aReg[m][1], aReg[m][2], aReg[m][3], addr0);
            ldmatrix_x4(aReg[m][4], aReg[m][5], aReg[m][6], aReg[m][7], addr1);
        }

        // Load B fragments for 32 columns (4 n-slices) within the warp tile.
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            int const row = n * 4 + warp_offset_b + load_row_b;
            uint32_t const addr0 =
                b_load_base +
                static_cast<uint32_t>((row * 8 + load_col_b) * sizeof(uint4));
            uint32_t const addr1 =
                b_load_base + static_cast<uint32_t>(
                                  (row * 8 + (load_col_b ^ 1)) * sizeof(uint4));
            ldmatrix_x2(bReg[n][0], bReg[n][1], addr0);
            ldmatrix_x2(bReg[n][2], bReg[n][3], addr1);
        }

        // Start next async copy (skip at tail).
        if (k_iter + 1 < K_BLOCKS) {
            int const kStart = (k_iter + 1) * VEC_PER_KBLOCK;
            uint4 *aStore = &As[store_stage * STAGE_ROWS][0];
            uint4 *bStore = &Bs[store_stage * STAGE_ROWS][0];

            cp_async_cg_L2_16B(aStore + (store_row * STAGE_COLS + store_col),
                               a_lane + kStart);
            cp_async_cg_L2_16B(
                aStore + ((store_row + 32) * STAGE_COLS + store_col),
                a_lane + (64 * K_VEC + kStart));
            cp_async_cg_L2_16B(bStore + (store_row * STAGE_COLS + store_col),
                               b_lane + kStart);
            cp_async_cg_L2_16B(
                bStore + ((store_row + 32) * STAGE_COLS + store_col),
                b_lane + (64 * K_VEC + kStart));
            cp_async_commit_group();
        }

        // MMA: two k-groups per K tile.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
#pragma unroll
            for (int n = 0; n < 4; ++n) {
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n][0], c[m][n][1], aReg[m][0], aReg[m][1], aReg[m][2],
                    aReg[m][3], bReg[n][0], bReg[n][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n][0], c[m][n][1], aReg[m][4], aReg[m][5], aReg[m][6],
                    aReg[m][7], bReg[n][2], bReg[n][3]);
            }
        }
    }

    int const group_id = lane_id >> 2;
    int const tid_in_group = lane_id & 3;
    int const c_row0 = group_id;
    int const c_row1 = group_id + 8;
    int const c_col0 = tid_in_group * 2;

#pragma unroll
    for (int m = 0; m < 4; ++m) {
        int const base_m = block_m + warp_row * 64 + m * 16;
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            int const base_n = block_n + warp_col * 32 + n * 8;
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

// Cutlass-inspired tiling (shape only; implementation is hand-written):
// - CTA: 128x256 output tile
// - Warp tile: 64x64 (so 8 warps arranged as 2x4 cover 128x256)
// - Instruction: mma.sync.m16n8k16 (row.col) with FP16 accumulate/store
// - Shared memory uses the same "permuted" layout as v17/v18, but we load/store
//   B in two independent 128-column segments (each segment uses a 64x8 uint4
//   layout) to keep the ldmatrix address math identical to the proven 128-wide
//   case.
//
// This should increase the ratio of Tensor Core work (mma) to overhead
// (ldmatrix/cp.async/barriers), which is the main limiter once memory latency is
// mostly hidden.
template <int N_STAGES>
__launch_bounds__(256)
__global__ void gemm_tc_mma_permuted_bcol_cpasync_fp16acc_128x256x32_warp2x4_warp64x64(
    const __half *__restrict__ A, const __half *__restrict__ B_col,
    __half *__restrict__ C) {
    static_assert(N_STAGES >= 2, "cp.async pipeline needs at least 2 stages");

    constexpr int TILE_M = 128;
    constexpr int TILE_N = 256;
    constexpr int TILE_K = 32; // half
    constexpr int K_VEC = kK / 8; // 8 half per uint4
    constexpr int K_BLOCKS = kK / TILE_K;
    constexpr int VEC_PER_KBLOCK = TILE_K / 8; // 4

    // Shared layout for A: identical to v17/v18 (one 128x32 half tile).
    constexpr int A_STAGE_ROWS = 64;
    constexpr int A_STAGE_COLS = 8;
    constexpr int A_STAGE_BYTES = A_STAGE_ROWS * A_STAGE_COLS * sizeof(uint4);

    // Shared layout for B: two independent 128-column segments.
    // Each segment is stored as a 128x32 half tile => 64x8 uint4.
    constexpr int B_STAGE_ROWS = 64;
    constexpr int B_STAGE_COLS = 8;
    constexpr int B_STAGE_BYTES = B_STAGE_ROWS * B_STAGE_COLS * sizeof(uint4);

    __shared__ __align__(16) uint4 As[N_STAGES * A_STAGE_ROWS][A_STAGE_COLS];
    __shared__ __align__(16) uint4 Bs0[N_STAGES * B_STAGE_ROWS][B_STAGE_COLS];
    __shared__ __align__(16) uint4 Bs1[N_STAGES * B_STAGE_ROWS][B_STAGE_COLS];

    int const thread_id = static_cast<int>(threadIdx.x);
    int const warp_id = thread_id >> 5;
    int const lane_id = thread_id & 31;

    // Warp layout: 2 (M) x 4 (N).
    int const warp_row = warp_id >> 2; // /4 -> {0,1}
    int const warp_col = warp_id & 3;  // %4 -> {0..3}

    // Each warp computes 64x64 output:
    // - warp_row selects 64 rows
    // - warp_col selects 64 columns
    int const warp_offset_a = 32 * warp_row;
    int const warp_col_in_seg = warp_col & 1; // {0,1} within a 128-wide segment
    int const warp_offset_b = 32 * warp_col_in_seg;
    int const warp_b_segment = warp_col >> 1; // 0: cols [0..127], 1: [128..255]

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

    uint4 const *globalA =
        reinterpret_cast<uint4 const *>(A + block_m * kK);
    uint4 const *globalB =
        reinterpret_cast<uint4 const *>(B_col + block_n * kK);

    // Permuted store indices (per lane), identical to v17/v18.
    int const store_row = warp_id * 4 + (lane_id >> 3); // 0..31
    int const store_col = (lane_id & 7) ^ (lane_id >> 3); // 0..7

    // Permuted load indices (per lane), identical to v17/v18.
    int const load_row_a = (lane_id & 15) >> 1; // 0..7
    int const load_col_a =
        ((lane_id >> 4) + 4 * (lane_id & 1)) ^ (load_row_a & 3);
    int const load_row_b = (lane_id & 7) >> 1; // 0..3
    int const load_col_b =
        ((lane_id >> 3) + 4 * (lane_id & 1)) ^ (load_row_b & 3);

    // Lane pointers into global tiles (vectorized along K, identical to v17/v18).
    uint4 const *a_lane =
        globalA + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);
    uint4 const *b_lane =
        globalB + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);

    uint32_t const As_base = __cvta_generic_to_shared(&As[0][0]);
    uint32_t const Bs0_base = __cvta_generic_to_shared(&Bs0[0][0]);
    uint32_t const Bs1_base = __cvta_generic_to_shared(&Bs1[0][0]);

    uint32_t aReg[4][8];
    uint32_t bReg[8][4];
    uint32_t c[4][8][2];
#pragma unroll
    for (int m = 0; m < 4; ++m) {
#pragma unroll
        for (int n = 0; n < 8; ++n) {
            c[m][n][0] = 0u;
            c[m][n][1] = 0u;
        }
    }

    // Prefetch first (N_STAGES-1) K blocks.
#pragma unroll
    for (int stage = 0; stage < (N_STAGES - 1); ++stage) {
        int const kStart = stage * VEC_PER_KBLOCK;
        uint4 *aStore = &As[stage * A_STAGE_ROWS][0];
        uint4 *b0Store = &Bs0[stage * B_STAGE_ROWS][0];
        uint4 *b1Store = &Bs1[stage * B_STAGE_ROWS][0];

        // A: top + bottom halves.
        cp_async_cg_L2_16B(aStore + (store_row * A_STAGE_COLS + store_col),
                           a_lane + kStart);
        cp_async_cg_L2_16B(
            aStore + ((store_row + 32) * A_STAGE_COLS + store_col),
            a_lane + (64 * K_VEC + kStart));

        // B segment 0: columns [0..127] (top + bottom halves).
        cp_async_cg_L2_16B(b0Store + (store_row * B_STAGE_COLS + store_col),
                           b_lane + kStart);
        cp_async_cg_L2_16B(
            b0Store + ((store_row + 32) * B_STAGE_COLS + store_col),
            b_lane + (64 * K_VEC + kStart));

        // B segment 1: columns [128..255] (top + bottom halves).
        cp_async_cg_L2_16B(b1Store + (store_row * B_STAGE_COLS + store_col),
                           b_lane + (128 * K_VEC + kStart));
        cp_async_cg_L2_16B(
            b1Store + ((store_row + 32) * B_STAGE_COLS + store_col),
            b_lane + (192 * K_VEC + kStart));

        cp_async_commit_group();
    }

    for (int k_iter = 0; k_iter < K_BLOCKS; ++k_iter) {
        int const load_stage = k_iter % N_STAGES;
        int const store_stage = (k_iter + (N_STAGES - 1)) % N_STAGES;

        uint32_t const a_load_base =
            As_base + static_cast<uint32_t>(load_stage * A_STAGE_BYTES);
        uint32_t const b0_load_base =
            Bs0_base + static_cast<uint32_t>(load_stage * B_STAGE_BYTES);
        uint32_t const b1_load_base =
            Bs1_base + static_cast<uint32_t>(load_stage * B_STAGE_BYTES);
        uint32_t const b_load_base = (warp_b_segment == 0) ? b0_load_base
                                                           : b1_load_base;

        // Wait until the current stage is ready.
        cp_async_wait_group<N_STAGES - 2>();
        __syncthreads();

        // Load A fragments for k=0..15 and k=16..31.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            int const row = m * 8 + warp_offset_a + load_row_a;
            uint32_t const addr0 =
                a_load_base +
                static_cast<uint32_t>((row * 8 + load_col_a) * sizeof(uint4));
            uint32_t const addr1 =
                a_load_base + static_cast<uint32_t>(
                                  (row * 8 + (load_col_a ^ 2)) * sizeof(uint4));
            ldmatrix_x4(aReg[m][0], aReg[m][1], aReg[m][2], aReg[m][3], addr0);
            ldmatrix_x4(aReg[m][4], aReg[m][5], aReg[m][6], aReg[m][7], addr1);
        }

        // Load B fragments for 64 columns (8 n-slices) within the selected
        // 128-column segment.
#pragma unroll
        for (int n = 0; n < 8; ++n) {
            int const row = n * 4 + warp_offset_b + load_row_b;
            uint32_t const addr0 =
                b_load_base +
                static_cast<uint32_t>((row * 8 + load_col_b) * sizeof(uint4));
            uint32_t const addr1 =
                b_load_base + static_cast<uint32_t>(
                                  (row * 8 + (load_col_b ^ 2)) * sizeof(uint4));
            ldmatrix_x2(bReg[n][0], bReg[n][1], addr0);
            ldmatrix_x2(bReg[n][2], bReg[n][3], addr1);
        }

        // Start next async copy (skip at tail to avoid extra work).
        if (k_iter + (N_STAGES - 1) < K_BLOCKS) {
            int const kStart = (k_iter + (N_STAGES - 1)) * VEC_PER_KBLOCK;

            uint4 *aStore = &As[store_stage * A_STAGE_ROWS][0];
            uint4 *b0Store = &Bs0[store_stage * B_STAGE_ROWS][0];
            uint4 *b1Store = &Bs1[store_stage * B_STAGE_ROWS][0];

            cp_async_cg_L2_16B(aStore + (store_row * A_STAGE_COLS + store_col),
                               a_lane + kStart);
            cp_async_cg_L2_16B(
                aStore + ((store_row + 32) * A_STAGE_COLS + store_col),
                a_lane + (64 * K_VEC + kStart));

            cp_async_cg_L2_16B(b0Store + (store_row * B_STAGE_COLS + store_col),
                               b_lane + kStart);
            cp_async_cg_L2_16B(
                b0Store + ((store_row + 32) * B_STAGE_COLS + store_col),
                b_lane + (64 * K_VEC + kStart));

            cp_async_cg_L2_16B(b1Store + (store_row * B_STAGE_COLS + store_col),
                               b_lane + (128 * K_VEC + kStart));
            cp_async_cg_L2_16B(
                b1Store + ((store_row + 32) * B_STAGE_COLS + store_col),
                b_lane + (192 * K_VEC + kStart));

            cp_async_commit_group();
        }

        // MMA: two k-groups per K tile.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
#pragma unroll
            for (int n = 0; n < 8; ++n) {
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n][0], c[m][n][1], aReg[m][0], aReg[m][1], aReg[m][2],
                    aReg[m][3], bReg[n][0], bReg[n][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n][0], c[m][n][1], aReg[m][4], aReg[m][5], aReg[m][6],
                    aReg[m][7], bReg[n][2], bReg[n][3]);
            }
        }
    }

    // Store accumulators to global C (row-major).
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

// CUTLASS-like (shape + key tactics) hand-written kernel (no CUTLASS dependency):
// - A: row-major (MxK)
// - B: row-major (KxN)
// - C: row-major (MxN)
// - Threadblock: 128x256x32
// - Warp tile:   64x64 (8 warps arranged 2x4)
//
// Main idea vs our v23/v24 (B_col + ldmatrix.x2):
// - Stage B as KxN (row-major) and load it with `ldmatrix.x4.trans`, which
//   naturally provides two adjacent 16x8 B fragments (N=8 each) per load. This
//   halves the number of B-side ldmatrix instructions vs x2.
//
// Shared-memory layout:
// - Uses a CUTLASS TensorOpMultiplicand-style swizzle (`tensorop_rm_offset`) for
//   both A (Crosswise=32) and B (Crosswise=64). This keeps all accesses aligned
//   to 16B vectors while permuting within the tile to reduce bank conflicts.
template <int N_STAGES>
__launch_bounds__(256)
__global__ void gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(N_STAGES >= 2, "cp.async pipeline needs at least 2 stages");

    constexpr int TILE_M = 128;
    constexpr int TILE_N = 256;
    constexpr int TILE_K = 32; // half
    constexpr int K_BLOCKS = kK / TILE_K;

    constexpr int WARPS_PER_BLOCK = 8;
    constexpr int THREADS_PER_BLOCK = WARPS_PER_BLOCK * 32;

    constexpr int A_STAGE_ELEMS = TILE_M * TILE_K; // 4096 half
    constexpr int B_STAGE_ELEMS = TILE_K * TILE_N; // 8192 half
    constexpr int A_STAGE_BYTES = A_STAGE_ELEMS * static_cast<int>(sizeof(__half));
    constexpr int B_STAGE_BYTES = B_STAGE_ELEMS * static_cast<int>(sizeof(__half));

    __shared__ __align__(128) __half As[N_STAGES * A_STAGE_ELEMS];
    __shared__ __align__(128) __half Bs[N_STAGES * B_STAGE_ELEMS];

    int const tid = static_cast<int>(threadIdx.x);
    int const warp_id = tid >> 5;
    int const lane_id = tid & 31;
    if (warp_id >= WARPS_PER_BLOCK) {
        return;
    }

    // Warp layout: 2x4 covering 128x256 output.
    int const warp_row = warp_id >> 2; // 0..1
    int const warp_col = warp_id & 3;  // 0..3

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

    uint32_t const As_base = __cvta_generic_to_shared(As);
    uint32_t const Bs_base = __cvta_generic_to_shared(Bs);

    // Accumulators for 64x64 output per warp: m in 0..3 (64 rows), n in 0..7 (64 cols).
    uint32_t c[4][8][2];
#pragma unroll
    for (int m = 0; m < 4; ++m) {
#pragma unroll
        for (int n = 0; n < 8; ++n) {
            c[m][n][0] = 0u;
            c[m][n][1] = 0u;
        }
    }

    // Cooperative gmem->smem copy: 16B vectors.
    constexpr int A_INT4_PER_ROW = TILE_K / 8; // 4
    constexpr int A_INT4_TOTAL = (TILE_M * TILE_K) / 8; // 512
    static_assert((A_INT4_TOTAL % THREADS_PER_BLOCK) == 0, "A copy mismatch");
    constexpr int A_ITERS = A_INT4_TOTAL / THREADS_PER_BLOCK; // 2

    constexpr int B_INT4_PER_ROW = TILE_N / 8; // 32
    constexpr int B_INT4_TOTAL = (TILE_K * TILE_N) / 8; // 1024
    static_assert((B_INT4_TOTAL % THREADS_PER_BLOCK) == 0, "B copy mismatch");
    constexpr int B_ITERS = B_INT4_TOTAL / THREADS_PER_BLOCK; // 4

    // Prefetch first (N_STAGES-1) K blocks.
#pragma unroll
    for (int stage = 0; stage < (N_STAGES - 1); ++stage) {
        int const k_tile = stage * TILE_K;
        uint32_t const a_store_base =
            As_base + static_cast<uint32_t>(stage * A_STAGE_BYTES);
        uint32_t const b_store_base =
            Bs_base + static_cast<uint32_t>(stage * B_STAGE_BYTES);

#pragma unroll
        for (int it = 0; it < A_ITERS; ++it) {
            int const idx = tid + it * THREADS_PER_BLOCK;
            int const a_row = idx / A_INT4_PER_ROW;
            int const a_seg = idx - a_row * A_INT4_PER_ROW;
            int const a_col = a_seg * 8;
            void const *gmem_ptr =
                A + (block_m + a_row) * kK + (k_tile + a_col);
            int const smem_off = tensorop_rm_offset<32, TILE_K>(a_row, a_col);
            uint32_t const smem_addr =
                a_store_base + static_cast<uint32_t>(smem_off << 1);
            cp_async_cg_L2_16B_addr(smem_addr, gmem_ptr);
        }

#pragma unroll
        for (int it = 0; it < B_ITERS; ++it) {
            int const idx = tid + it * THREADS_PER_BLOCK;
            int const b_row = idx / B_INT4_PER_ROW; // 0..31 (K)
            int const b_seg = idx - b_row * B_INT4_PER_ROW;
            int const b_col = b_seg * 8; // 0..248 (N)
            void const *gmem_ptr =
                B + (k_tile + b_row) * kN + (block_n + b_col);
            int const smem_off = tensorop_rm_offset<64, TILE_N>(b_row, b_col);
            uint32_t const smem_addr =
                b_store_base + static_cast<uint32_t>(smem_off << 1);
            cp_async_cg_L2_16B_addr(smem_addr, gmem_ptr);
        }

        cp_async_commit_group();
    }

    for (int k_iter = 0; k_iter < K_BLOCKS; ++k_iter) {
        int const load_stage = k_iter % N_STAGES;
        int const store_stage = (k_iter + (N_STAGES - 1)) % N_STAGES;

        uint32_t const a_load_base =
            As_base + static_cast<uint32_t>(load_stage * A_STAGE_BYTES);
        uint32_t const b_load_base =
            Bs_base + static_cast<uint32_t>(load_stage * B_STAGE_BYTES);

        // Wait for the current stage to be ready.
        cp_async_wait_group<N_STAGES - 2>();
        __syncthreads();

        // Start next async copy.
        int k_prefetch = k_iter + (N_STAGES - 1);
        k_prefetch = (k_prefetch >= K_BLOCKS) ? (K_BLOCKS - 1) : k_prefetch;
        int const k_tile = k_prefetch * TILE_K;

        uint32_t const a_store_base =
            As_base + static_cast<uint32_t>(store_stage * A_STAGE_BYTES);
        uint32_t const b_store_base =
            Bs_base + static_cast<uint32_t>(store_stage * B_STAGE_BYTES);

#pragma unroll
        for (int it = 0; it < A_ITERS; ++it) {
            int const idx = tid + it * THREADS_PER_BLOCK;
            int const a_row = idx / A_INT4_PER_ROW;
            int const a_seg = idx - a_row * A_INT4_PER_ROW;
            int const a_col = a_seg * 8;
            void const *gmem_ptr =
                A + (block_m + a_row) * kK + (k_tile + a_col);
            int const smem_off = tensorop_rm_offset<32, TILE_K>(a_row, a_col);
            uint32_t const smem_addr =
                a_store_base + static_cast<uint32_t>(smem_off << 1);
            cp_async_cg_L2_16B_addr(smem_addr, gmem_ptr);
        }

#pragma unroll
        for (int it = 0; it < B_ITERS; ++it) {
            int const idx = tid + it * THREADS_PER_BLOCK;
            int const b_row = idx / B_INT4_PER_ROW;
            int const b_seg = idx - b_row * B_INT4_PER_ROW;
            int const b_col = b_seg * 8;
            void const *gmem_ptr =
                B + (k_tile + b_row) * kN + (block_n + b_col);
            int const smem_off = tensorop_rm_offset<64, TILE_N>(b_row, b_col);
            uint32_t const smem_addr =
                b_store_base + static_cast<uint32_t>(smem_off << 1);
            cp_async_cg_L2_16B_addr(smem_addr, gmem_ptr);
        }
        cp_async_commit_group();

        // Compute using the current stage.
#pragma unroll
        for (int kk = 0; kk < TILE_K; kk += 16) {
            // Load B for 64 columns per warp via 4x (16 columns) ldmatrix.x4.trans.
            uint32_t bReg4[4][4];
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const b_row = kk + (lane_id & 15);
                int const b_col =
                    warp_col * 64 + nb * 16 + ((lane_id >> 4) * 8);
                int const b_off = tensorop_rm_offset<64, TILE_N>(b_row, b_col);
                uint32_t const addr_b =
                    b_load_base + static_cast<uint32_t>(b_off << 1);
                ldmatrix_x4_trans(bReg4[nb][0], bReg4[nb][1], bReg4[nb][2],
                                  bReg4[nb][3], addr_b);
            }

            // Stream A per m-slice.
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                int const a_row = warp_row * 64 + m * 16 + (lane_id & 15);
                int const a_col = kk + ((lane_id >> 4) * 8);
                int const a_off = tensorop_rm_offset<32, TILE_K>(a_row, a_col);
                uint32_t const addr_a =
                    a_load_base + static_cast<uint32_t>(a_off << 1);
                uint32_t a0, a1, a2, a3;
                ldmatrix_x4(a0, a1, a2, a3, addr_a);

#pragma unroll
                for (int nb = 0; nb < 4; ++nb) {
                    int const n0 = nb * 2;
                    int const n1 = nb * 2 + 1;
                    mma_sync_m16n8k16_row_col_f16(
                        c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                        bReg4[nb][0], bReg4[nb][1]);
                    mma_sync_m16n8k16_row_col_f16(
                        c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                        bReg4[nb][2], bReg4[nb][3]);
                }
            }
        }
    }

    // Store accumulators to global C (row-major).
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

// v38: same math/tiling as v37, but removes hot-loop address computation and
// reduces ldmatrix/cp.async contention.
//
// Key changes:
// - Precompute (per-thread) gmem deltas + smem offsets for cp.async vector
//   copies (A_ITERS/B_ITERS vectors per stage).
// - Precompute (per-thread) ldmatrix addresses for the two k-groups (kk=0/16).
// - Issue cp.async for the next stage *after* loading the first k-group
//   operands (ldmatrix), so the next long MMA run separates cp.async from
//   ldmatrix. This reduces MIO throttle seen when cp.async is placed adjacent
//   to ldmatrix.
template <int N_STAGES>
__launch_bounds__(256)
__global__ void
gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_opt(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(N_STAGES >= 2, "cp.async pipeline needs at least 2 stages");

    constexpr int TILE_M = 128;
    constexpr int TILE_N = 256;
    constexpr int TILE_K = 32; // half
    constexpr int K_BLOCKS = kK / TILE_K;

    constexpr int WARPS_PER_BLOCK = 8;
    constexpr int THREADS_PER_BLOCK = WARPS_PER_BLOCK * 32;

    constexpr int A_STAGE_ELEMS = TILE_M * TILE_K; // 4096 half
    constexpr int B_STAGE_ELEMS = TILE_K * TILE_N; // 8192 half
    constexpr int A_STAGE_BYTES = A_STAGE_ELEMS * static_cast<int>(sizeof(__half));
    constexpr int B_STAGE_BYTES = B_STAGE_ELEMS * static_cast<int>(sizeof(__half));

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

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

    uint32_t const As_base = __cvta_generic_to_shared(As);
    uint32_t const Bs_base = __cvta_generic_to_shared(Bs);

    // Accumulators for 64x64 output per warp: m in 0..3 (64 rows), n in 0..7 (64 cols).
    uint32_t c[4][8][2];
#pragma unroll
    for (int m = 0; m < 4; ++m) {
#pragma unroll
        for (int n = 0; n < 8; ++n) {
            c[m][n][0] = 0u;
            c[m][n][1] = 0u;
        }
    }

    // Cooperative gmem->smem copy: 16B vectors.
    constexpr int A_INT4_PER_ROW = TILE_K / 8; // 4
    constexpr int A_INT4_TOTAL = (TILE_M * TILE_K) / 8; // 512
    static_assert((A_INT4_TOTAL % THREADS_PER_BLOCK) == 0, "A copy mismatch");
    constexpr int A_ITERS = A_INT4_TOTAL / THREADS_PER_BLOCK; // 2

    constexpr int B_INT4_PER_ROW = TILE_N / 8; // 32
    constexpr int B_INT4_TOTAL = (TILE_K * TILE_N) / 8; // 1024
    static_assert((B_INT4_TOTAL % THREADS_PER_BLOCK) == 0, "B copy mismatch");
    constexpr int B_ITERS = B_INT4_TOTAL / THREADS_PER_BLOCK; // 4

    // Precompute per-thread cp.async smem offsets (bytes) and gmem deltas (half elems).
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
            static_cast<uint32_t>(tensorop_rm_offset<32, TILE_K>(a_row, a_col) << 1);
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
            static_cast<uint32_t>(tensorop_rm_offset<64, TILE_N>(b_row, b_col) << 1);
    }

    // Precompute per-thread ldmatrix addresses (bytes) within one stage for kk=0 and kk=16.
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

    // Prefetch first (N_STAGES-1) K blocks.
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

    for (int k_iter = 0; k_iter < K_BLOCKS; ++k_iter) {
        int const load_stage = k_iter % N_STAGES;
        int const store_stage = (k_iter + (N_STAGES - 1)) % N_STAGES;

        uint32_t const a_load_base =
            As_base + static_cast<uint32_t>(load_stage * A_STAGE_BYTES);
        uint32_t const b_load_base =
            Bs_base + static_cast<uint32_t>(load_stage * B_STAGE_BYTES);

        // Wait for the current stage to be ready.
        cp_async_wait_group<N_STAGES - 2>();
        __syncthreads();

        // ---- kk = 0 (k-group 0) ----
        uint32_t bReg4[4][4];
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[0][nb];
            ldmatrix_x4_trans(bReg4[nb][0], bReg4[nb][1], bReg4[nb][2],
                              bReg4[nb][3], addr_b);
        }

        uint32_t aReg4[4][4];
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base + a_ld_off_bytes[0][m];
            ldmatrix_x4(aReg4[m][0], aReg4[m][1], aReg4[m][2], aReg4[m][3],
                        addr_a);
        }

        // Start next async copy (skip at tail).
        int const k_prefetch = k_iter + (N_STAGES - 1);
        if (k_prefetch < K_BLOCKS) {
            int const k_tile = k_prefetch * TILE_K;
            __half const *gA_base = A + block_m * kK + k_tile;
            __half const *gB_base = B + k_tile * kN + block_n;

            uint32_t const a_store_base =
                As_base + static_cast<uint32_t>(store_stage * A_STAGE_BYTES);
            uint32_t const b_store_base =
                Bs_base + static_cast<uint32_t>(store_stage * B_STAGE_BYTES);

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

        // MMA for kk=0
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const a0 = aReg4[m][0];
            uint32_t const a1 = aReg4[m][1];
            uint32_t const a2 = aReg4[m][2];
            uint32_t const a3 = aReg4[m][3];
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg4[nb][0], bReg4[nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg4[nb][2], bReg4[nb][3]);
            }
        }

        // ---- kk = 16 (k-group 1) ----
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[1][nb];
            ldmatrix_x4_trans(bReg4[nb][0], bReg4[nb][1], bReg4[nb][2],
                              bReg4[nb][3], addr_b);
        }

#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base + a_ld_off_bytes[1][m];
            uint32_t a0, a1, a2, a3;
            ldmatrix_x4(a0, a1, a2, a3, addr_a);
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg4[nb][0], bReg4[nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg4[nb][2], bReg4[nb][3]);
            }
        }
    }

    // Store accumulators to global C (row-major).
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

// v40: same math/layout as v37, but uses a more CUTLASS-like *schedule* by
// interleaving the 6 cp.async copies for the "next" stage with the kk=0 MMA.
//
// Motivation:
// - In CUTLASS/CUTE SASS, `LDGSTS` (async gmem->smem) is frequently interleaved
//   with `HMMA` in the main loop, instead of being a single burst before
//   compute.
// - Our v37 issues all cp.async copies as a burst and then does MMA, which can
//   leave throughput on the table due to MIO/issue throttling.
template <int N_STAGES>
__launch_bounds__(256)
__global__ void
gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_interleaved(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(N_STAGES >= 2, "cp.async pipeline needs at least 2 stages");

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

    // Warp layout: 2x4 covering 128x256 output.
    int const warp_row = warp_id >> 2; // 0..1
    int const warp_col = warp_id & 3;  // 0..3

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

    uint32_t const As_base = __cvta_generic_to_shared(As);
    uint32_t const Bs_base = __cvta_generic_to_shared(Bs);

    // Accumulators for 64x64 output per warp: m in 0..3 (64 rows), n in 0..7
    // (64 cols).
    uint32_t c[4][8][2];
#pragma unroll
    for (int m = 0; m < 4; ++m) {
#pragma unroll
        for (int n = 0; n < 8; ++n) {
            c[m][n][0] = 0u;
            c[m][n][1] = 0u;
        }
    }

    // Cooperative gmem->smem copy: 16B vectors.
    constexpr int A_INT4_PER_ROW = TILE_K / 8;              // 4
    constexpr int A_INT4_TOTAL = (TILE_M * TILE_K) / 8;     // 512
    constexpr int A_ITERS = A_INT4_TOTAL / THREADS_PER_BLOCK; // 2

    constexpr int B_INT4_PER_ROW = TILE_N / 8;              // 32
    constexpr int B_INT4_TOTAL = (TILE_K * TILE_N) / 8;     // 1024
    constexpr int B_ITERS = B_INT4_TOTAL / THREADS_PER_BLOCK; // 4

    // Precompute per-thread cp.async smem offsets (bytes) and gmem deltas (half
    // elems).
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

    // Precompute per-thread ldmatrix addresses (bytes) within one stage for
    // kk=0 and kk=16.
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

    // Prefetch first (N_STAGES-1) K blocks.
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

    for (int k_iter = 0; k_iter < K_BLOCKS; ++k_iter) {
        int const load_stage = k_iter % N_STAGES;
        int const store_stage = (k_iter + (N_STAGES - 1)) % N_STAGES;

        uint32_t const a_load_base =
            As_base + static_cast<uint32_t>(load_stage * A_STAGE_BYTES);
        uint32_t const b_load_base =
            Bs_base + static_cast<uint32_t>(load_stage * B_STAGE_BYTES);

        // Wait for the current stage to be ready.
        cp_async_wait_group<N_STAGES - 2>();
        __syncthreads();

        // Compute the next prefetch base pointers. Guarded by `do_prefetch`.
        int const k_prefetch = k_iter + (N_STAGES - 1);
        bool const do_prefetch = (k_prefetch < K_BLOCKS);

        // Avoid computing out-of-bounds pointers when the prefetch is disabled.
        int const k_tile = do_prefetch ? (k_prefetch * TILE_K) : 0;
        __half const *gA_pref = A + block_m * kK + k_tile;
        __half const *gB_pref = B + k_tile * kN + block_n;

        uint32_t const a_store_base =
            As_base + static_cast<uint32_t>(store_stage * A_STAGE_BYTES);
        uint32_t const b_store_base =
            Bs_base + static_cast<uint32_t>(store_stage * B_STAGE_BYTES);

        // ---- kk = 0 (k-group 0) ----
        uint32_t bReg4[4][4];
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[0][nb];
            ldmatrix_x4_trans(bReg4[nb][0], bReg4[nb][1], bReg4[nb][2],
                              bReg4[nb][3], addr_b);
        }

        uint32_t aReg4[4][4];
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base + a_ld_off_bytes[0][m];
            ldmatrix_x4(aReg4[m][0], aReg4[m][1], aReg4[m][2], aReg4[m][3],
                        addr_a);
        }

        // MMA for kk=0, interleaving cp.async copies for the next stage.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const a0 = aReg4[m][0];
            uint32_t const a1 = aReg4[m][1];
            uint32_t const a2 = aReg4[m][2];
            uint32_t const a3 = aReg4[m][3];
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg4[nb][0], bReg4[nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg4[nb][2], bReg4[nb][3]);
            }

            // Spread the 6 copies (A=2, B=4) across the kk=0 MMA.
            if (do_prefetch) {
                if (m == 0) {
                    cp_async_cg_L2_16B_addr(a_store_base + a_smem_off_bytes[0],
                                            gA_pref + a_gmem_delta[0]);
                } else if (m == 1) {
                    cp_async_cg_L2_16B_addr(b_store_base + b_smem_off_bytes[0],
                                            gB_pref + b_gmem_delta[0]);
                    cp_async_cg_L2_16B_addr(b_store_base + b_smem_off_bytes[1],
                                            gB_pref + b_gmem_delta[1]);
                } else if (m == 2) {
                    cp_async_cg_L2_16B_addr(a_store_base + a_smem_off_bytes[1],
                                            gA_pref + a_gmem_delta[1]);
                } else { // m == 3
                    cp_async_cg_L2_16B_addr(b_store_base + b_smem_off_bytes[2],
                                            gB_pref + b_gmem_delta[2]);
                    cp_async_cg_L2_16B_addr(b_store_base + b_smem_off_bytes[3],
                                            gB_pref + b_gmem_delta[3]);
                    cp_async_commit_group();
                }
            }
        }

        // ---- kk = 16 (k-group 1) ----
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[1][nb];
            ldmatrix_x4_trans(bReg4[nb][0], bReg4[nb][1], bReg4[nb][2],
                              bReg4[nb][3], addr_b);
        }

#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base + a_ld_off_bytes[1][m];
            uint32_t a0, a1, a2, a3;
            ldmatrix_x4(a0, a1, a2, a3, addr_a);
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg4[nb][0], bReg4[nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg4[nb][2], bReg4[nb][3]);
            }
        }
    }

    // Store accumulators to global C (row-major).
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

// v41: v40 but changes the B-side `TensorOpMultiplicand` Crosswise from 64 -> 32.
//
// Motivation:
// - For fp16 (128b access = 8 half), Crosswise=32 implies kFactor=2 and a
//   fundamental tile of 8x4 vectors, which is the configuration CUTLASS
//   commonly uses for bank-conflict-free ldmatrix patterns.
// - Our v37/v40 used Crosswise=64 (kFactor=1, 8x8 vector tile) for B because
//   B is staged row-major with a 256-wide contiguous dimension. This may not be
//   optimal for `ldmatrix.x4.trans` and could be leaving bank conflicts.
template <int N_STAGES>
__launch_bounds__(256)
__global__ void
gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_interleaved_bcross32(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(N_STAGES >= 2, "cp.async pipeline needs at least 2 stages");

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

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

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
            static_cast<uint32_t>(tensorop_rm_offset<32, TILE_N>(b_row, b_col)
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
                tensorop_rm_offset<32, TILE_N>(b_row, b_col) << 1);
        }
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            int const a_row = warp_row * 64 + m * 16 + (lane_id & 15);
            int const a_col = kk + ((lane_id >> 4) * 8);
            a_ld_off_bytes[kk_idx][m] = static_cast<uint32_t>(
                tensorop_rm_offset<32, TILE_K>(a_row, a_col) << 1);
        }
    }

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

    for (int k_iter = 0; k_iter < K_BLOCKS; ++k_iter) {
        int const load_stage = k_iter % N_STAGES;
        int const store_stage = (k_iter + (N_STAGES - 1)) % N_STAGES;

        uint32_t const a_load_base =
            As_base + static_cast<uint32_t>(load_stage * A_STAGE_BYTES);
        uint32_t const b_load_base =
            Bs_base + static_cast<uint32_t>(load_stage * B_STAGE_BYTES);

        cp_async_wait_group<N_STAGES - 2>();
        __syncthreads();

        int const k_prefetch = k_iter + (N_STAGES - 1);
        bool const do_prefetch = (k_prefetch < K_BLOCKS);

        int const k_tile = do_prefetch ? (k_prefetch * TILE_K) : 0;
        __half const *gA_pref = A + block_m * kK + k_tile;
        __half const *gB_pref = B + k_tile * kN + block_n;

        uint32_t const a_store_base =
            As_base + static_cast<uint32_t>(store_stage * A_STAGE_BYTES);
        uint32_t const b_store_base =
            Bs_base + static_cast<uint32_t>(store_stage * B_STAGE_BYTES);

        uint32_t bReg4[4][4];
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[0][nb];
            ldmatrix_x4_trans(bReg4[nb][0], bReg4[nb][1], bReg4[nb][2],
                              bReg4[nb][3], addr_b);
        }

        uint32_t aReg4[4][4];
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base + a_ld_off_bytes[0][m];
            ldmatrix_x4(aReg4[m][0], aReg4[m][1], aReg4[m][2], aReg4[m][3],
                        addr_a);
        }

#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const a0 = aReg4[m][0];
            uint32_t const a1 = aReg4[m][1];
            uint32_t const a2 = aReg4[m][2];
            uint32_t const a3 = aReg4[m][3];
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg4[nb][0], bReg4[nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg4[nb][2], bReg4[nb][3]);
            }

            if (do_prefetch) {
                if (m == 0) {
                    cp_async_cg_L2_16B_addr(a_store_base + a_smem_off_bytes[0],
                                            gA_pref + a_gmem_delta[0]);
                } else if (m == 1) {
                    cp_async_cg_L2_16B_addr(b_store_base + b_smem_off_bytes[0],
                                            gB_pref + b_gmem_delta[0]);
                    cp_async_cg_L2_16B_addr(b_store_base + b_smem_off_bytes[1],
                                            gB_pref + b_gmem_delta[1]);
                } else if (m == 2) {
                    cp_async_cg_L2_16B_addr(a_store_base + a_smem_off_bytes[1],
                                            gA_pref + a_gmem_delta[1]);
                } else { // m == 3
                    cp_async_cg_L2_16B_addr(b_store_base + b_smem_off_bytes[2],
                                            gB_pref + b_gmem_delta[2]);
                    cp_async_cg_L2_16B_addr(b_store_base + b_smem_off_bytes[3],
                                            gB_pref + b_gmem_delta[3]);
                    cp_async_commit_group();
                }
            }
        }

#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[1][nb];
            ldmatrix_x4_trans(bReg4[nb][0], bReg4[nb][1], bReg4[nb][2],
                              bReg4[nb][3], addr_b);
        }

#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base + a_ld_off_bytes[1][m];
            uint32_t a0, a1, a2, a3;
            ldmatrix_x4(a0, a1, a2, a3, addr_a);
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg4[nb][0], bReg4[nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg4[nb][2], bReg4[nb][3]);
            }
        }
    }

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

// v42: rewrite the v37/v40 kernel with a CUTLASS-style 2-kgroup mainloop.
//
// Key idea:
// - K tile = 32 has 2 warp gemm iterations (kgroup0: kk=0, kgroup1: kk=16).
// - Load fragments for the *next* kgroup before computing the current one.
// - Issue the cp.async stage copy + gmem_wait (wait_group + syncthreads) *between*
//   kgroup0 and kgroup1, so the block does useful MMA work after the barrier.
//
// This matches the structure in CUTLASS `MmaMultistage` and aims to reduce:
// - `warp_issue_stalled_barrier` (barrier hidden behind kgroup1 MMA)
// - `warp_issue_stalled_mio_throttle` (ldmatrix/cp.async spread out)
template <int N_STAGES>
__launch_bounds__(256)
__global__ void
gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(N_STAGES >= 2, "cp.async pipeline needs at least 2 stages");

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

    __shared__ __align__(16) __half As[N_STAGES * A_STAGE_ELEMS];
    __shared__ __align__(16) __half Bs[N_STAGES * B_STAGE_ELEMS];

    int const tid = static_cast<int>(threadIdx.x);
    int const warp_id = tid >> 5;
    int const lane_id = tid & 31;
    if (warp_id >= WARPS_PER_BLOCK) {
        return;
    }

    int const warp_row = warp_id >> 2; // 0..1
    int const warp_col = warp_id & 3;  // 0..3

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

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

    // Cooperative gmem->smem copy: 16B vectors.
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

    // Per-thread ldmatrix addresses (bytes) within one stage for kk=0 and kk=16.
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

    int load_stage = 0;
    int store_stage = (N_STAGES - 1);
    uint32_t a_load_base =
        As_base + static_cast<uint32_t>(load_stage * A_STAGE_BYTES);
    uint32_t b_load_base =
        Bs_base + static_cast<uint32_t>(load_stage * B_STAGE_BYTES);

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

    for (int k_iter = 0; k_iter < K_BLOCKS; ++k_iter) {
        // Load kgroup1 (kk=16) into slot 1 (current stage).
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[1][nb];
            ldmatrix_x4_trans(bReg[1][nb][0], bReg[1][nb][1], bReg[1][nb][2],
                              bReg[1][nb][3], addr_b);
        }
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base + a_ld_off_bytes[1][m];
            ldmatrix_x4(aReg[1][m][0], aReg[1][m][1], aReg[1][m][2], aReg[1][m][3],
                        addr_a);
        }

        // MMA: kgroup0 (kk=0) using slot 0.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const a0 = aReg[0][m][0];
            uint32_t const a1 = aReg[0][m][1];
            uint32_t const a2 = aReg[0][m][2];
            uint32_t const a3 = aReg[0][m][3];
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg[0][nb][0], bReg[0][nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg[0][nb][2], bReg[0][nb][3]);
            }
        }

        // Prefetch next K tile into store_stage (two tiles ahead).
        int const k_prefetch = k_iter + (N_STAGES - 1);
        bool const do_prefetch = (k_prefetch < K_BLOCKS);
        int const k_tile = do_prefetch ? (k_prefetch * TILE_K) : 0;

        __half const *gA_pref = A + block_m * kK + k_tile;
        __half const *gB_pref = B + k_tile * kN + block_n;

        uint32_t const a_store_base =
            As_base + static_cast<uint32_t>(store_stage * A_STAGE_BYTES);
        uint32_t const b_store_base =
            Bs_base + static_cast<uint32_t>(store_stage * B_STAGE_BYTES);

        if (do_prefetch) {
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
        }
        cp_async_commit_group();

        // Wait for the next read stage and advance stage pointers (CUTLASS gmem_wait).
        cp_async_wait_group<N_STAGES - 2>();
        __syncthreads();

        load_stage = (load_stage + 1) % N_STAGES;
        store_stage = (store_stage + 1) % N_STAGES;
        a_load_base = As_base + static_cast<uint32_t>(load_stage * A_STAGE_BYTES);
        b_load_base = Bs_base + static_cast<uint32_t>(load_stage * B_STAGE_BYTES);

        // Load next iteration's kgroup0 (kk=0) into slot 0 (new stage).
        if (k_iter + 1 < K_BLOCKS) {
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

        // MMA: kgroup1 (kk=16) using slot 1 (old stage, already in regs).
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const a0 = aReg[1][m][0];
            uint32_t const a1 = aReg[1][m][1];
            uint32_t const a2 = aReg[1][m][2];
            uint32_t const a3 = aReg[1][m][3];
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg[1][nb][0], bReg[1][nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg[1][nb][2], bReg[1][nb][3]);
            }
        }
    }

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

// v43: v42 but reduces register pressure by streaming A fragments (don't keep
// A for both kgroups resident in registers).
//
// Technique:
// - Keep B fragments for kgroup0/kgroup1 in registers (needed for reuse across m).
// - Load A fragments per m-slice right before the corresponding HMMA group.
// - For kgroup1, reload A from the *old* stage after we advance stage pointers
//   (old stage base is kept in a register).
//
// Goal: reduce REG (v42 is high) and increase HMMA pipe active %.
template <int N_STAGES>
__launch_bounds__(256)
__global__ void
gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_streamA(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(N_STAGES >= 2, "cp.async pipeline needs at least 2 stages");

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

    __shared__ __align__(16) __half As[N_STAGES * A_STAGE_ELEMS];
    __shared__ __align__(16) __half Bs[N_STAGES * B_STAGE_ELEMS];

    int const tid = static_cast<int>(threadIdx.x);
    int const warp_id = tid >> 5;
    int const lane_id = tid & 31;
    if (warp_id >= WARPS_PER_BLOCK) {
        return;
    }

    int const warp_row = warp_id >> 2; // 0..1
    int const warp_col = warp_id & 3;  // 0..3

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

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

    cp_async_wait_group<N_STAGES - 2>();
    __syncthreads();

    int load_stage = 0;
    int store_stage = (N_STAGES - 1);
    uint32_t a_load_base =
        As_base + static_cast<uint32_t>(load_stage * A_STAGE_BYTES);
    uint32_t b_load_base =
        Bs_base + static_cast<uint32_t>(load_stage * B_STAGE_BYTES);

    // B fragments: slot 0 = kgroup0, slot 1 = kgroup1.
    uint32_t bReg[2][4][4];

    // Initial B load: kgroup0 (kk=0) into slot 0.
#pragma unroll
    for (int nb = 0; nb < 4; ++nb) {
        uint32_t const addr_b = b_load_base + b_ld_off_bytes[0][nb];
        ldmatrix_x4_trans(bReg[0][nb][0], bReg[0][nb][1], bReg[0][nb][2],
                          bReg[0][nb][3], addr_b);
    }

    for (int k_iter = 0; k_iter < K_BLOCKS; ++k_iter) {
        // Snapshot old stage base pointers (used for kgroup1 A reload).
        uint32_t const a_load_base_k = a_load_base;
        uint32_t const b_load_base_k = b_load_base;

        // Load B for kgroup1 (kk=16) into slot 1.
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base_k + b_ld_off_bytes[1][nb];
            ldmatrix_x4_trans(bReg[1][nb][0], bReg[1][nb][1], bReg[1][nb][2],
                              bReg[1][nb][3], addr_b);
        }

        // MMA: kgroup0 (kk=0), streaming A per m-slice.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base_k + a_ld_off_bytes[0][m];
            uint32_t a0, a1, a2, a3;
            ldmatrix_x4(a0, a1, a2, a3, addr_a);
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg[0][nb][0], bReg[0][nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg[0][nb][2], bReg[0][nb][3]);
            }
        }

        // Prefetch next K tile into store_stage.
        int const k_prefetch = k_iter + (N_STAGES - 1);
        bool const do_prefetch = (k_prefetch < K_BLOCKS);
        int const k_tile = do_prefetch ? (k_prefetch * TILE_K) : 0;

        __half const *gA_pref = A + block_m * kK + k_tile;
        __half const *gB_pref = B + k_tile * kN + block_n;

        uint32_t const a_store_base =
            As_base + static_cast<uint32_t>(store_stage * A_STAGE_BYTES);
        uint32_t const b_store_base =
            Bs_base + static_cast<uint32_t>(store_stage * B_STAGE_BYTES);

        if (do_prefetch) {
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
        }
        cp_async_commit_group();

        cp_async_wait_group<N_STAGES - 2>();
        __syncthreads();

        load_stage = (load_stage + 1) % N_STAGES;
        store_stage = (store_stage + 1) % N_STAGES;
        a_load_base = As_base + static_cast<uint32_t>(load_stage * A_STAGE_BYTES);
        b_load_base = Bs_base + static_cast<uint32_t>(load_stage * B_STAGE_BYTES);

        // Load next iteration's B kgroup0 (kk=0) into slot 0.
        if (k_iter + 1 < K_BLOCKS) {
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                uint32_t const addr_b = b_load_base + b_ld_off_bytes[0][nb];
                ldmatrix_x4_trans(bReg[0][nb][0], bReg[0][nb][1], bReg[0][nb][2],
                                  bReg[0][nb][3], addr_b);
            }
        }

        // MMA: kgroup1 (kk=16), reload A from the old stage base.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base_k + a_ld_off_bytes[1][m];
            uint32_t a0, a1, a2, a3;
            ldmatrix_x4(a0, a1, a2, a3, addr_a);
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg[1][nb][0], bReg[1][nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg[1][nb][2], bReg[1][nb][3]);
            }
        }
    }

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

// v44: v42 but removes expensive `% N_STAGES` math from the hot loop by
// advancing stage base pointers with add+wrap (CUTLASS iterator-style).
//
// In v42 SASS we observed `UIMAD.WIDE ... 0x55555556` etc (mod/div by 3) inside
// the main loop, which eats issue bandwidth and reduces HMMA active %.
template <int N_STAGES>
__launch_bounds__(256)
__global__ void
gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(N_STAGES >= 2, "cp.async pipeline needs at least 2 stages");

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

    __shared__ __align__(16) __half As[N_STAGES * A_STAGE_ELEMS];
    __shared__ __align__(16) __half Bs[N_STAGES * B_STAGE_ELEMS];

    int const tid = static_cast<int>(threadIdx.x);
    int const warp_id = tid >> 5;
    int const lane_id = tid & 31;
    if (warp_id >= WARPS_PER_BLOCK) {
        return;
    }

    int const warp_row = warp_id >> 2; // 0..1
    int const warp_col = warp_id & 3;  // 0..3

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

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

    for (int k_iter = 0; k_iter < K_BLOCKS; ++k_iter) {
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
            ldmatrix_x4(aReg[1][m][0], aReg[1][m][1], aReg[1][m][2], aReg[1][m][3],
                        addr_a);
        }

        // MMA: kgroup0 (kk=0) using slot 0.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const a0 = aReg[0][m][0];
            uint32_t const a1 = aReg[0][m][1];
            uint32_t const a2 = aReg[0][m][2];
            uint32_t const a3 = aReg[0][m][3];
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg[0][nb][0], bReg[0][nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg[0][nb][2], bReg[0][nb][3]);
            }
        }

        int const k_prefetch = k_iter + (N_STAGES - 1);
        bool const do_prefetch = (k_prefetch < K_BLOCKS);
        int const k_tile = do_prefetch ? (k_prefetch * TILE_K) : 0;

        __half const *gA_pref = A + block_m * kK + k_tile;
        __half const *gB_pref = B + k_tile * kN + block_n;

        if (do_prefetch) {
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
        }
        cp_async_commit_group();

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
        if (k_iter + 1 < K_BLOCKS) {
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

        // MMA: kgroup1 (kk=16) using slot 1 (old stage, already in regs).
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const a0 = aReg[1][m][0];
            uint32_t const a1 = aReg[1][m][1];
            uint32_t const a2 = aReg[1][m][2];
            uint32_t const a3 = aReg[1][m][3];
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg[1][nb][0], bReg[1][nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg[1][nb][2], bReg[1][nb][3]);
            }
        }
    }

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

// v39: same core tactics as v37 (row-major B + ldmatrix.x4.trans + 3-stage
// cp.async), but swaps the CTA tile to 256x128.
//
// Motivation:
// - Profiling the reference CUTLASS/CUTE kernel on this machine shows a grid of
//   (32,16) for M=N=4096, which corresponds to a 256x128 C tile.
// - With M=N, tiling "orientation" only permutes which operand gets the larger
//   threadblock footprint. This can change cp.async utilization and stall mix.
template <int N_STAGES>
__launch_bounds__(256)
__global__ void gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_256x128x32_warp4x2(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(N_STAGES >= 2, "cp.async pipeline needs at least 2 stages");

    constexpr int TILE_M = 256;
    constexpr int TILE_N = 128;
    constexpr int TILE_K = 32; // half
    constexpr int K_BLOCKS = kK / TILE_K;

    constexpr int WARPS_PER_BLOCK = 8;
    constexpr int THREADS_PER_BLOCK = WARPS_PER_BLOCK * 32;

    constexpr int A_STAGE_ELEMS = TILE_M * TILE_K; // 8192 half
    constexpr int B_STAGE_ELEMS = TILE_K * TILE_N; // 4096 half
    constexpr int A_STAGE_BYTES = A_STAGE_ELEMS * static_cast<int>(sizeof(__half));
    constexpr int B_STAGE_BYTES = B_STAGE_ELEMS * static_cast<int>(sizeof(__half));

    __shared__ __align__(16) __half As[N_STAGES * A_STAGE_ELEMS];
    __shared__ __align__(16) __half Bs[N_STAGES * B_STAGE_ELEMS];

    int const tid = static_cast<int>(threadIdx.x);
    int const warp_id = tid >> 5;
    int const lane_id = tid & 31;
    if (warp_id >= WARPS_PER_BLOCK) {
        return;
    }

    // Warp layout: 4x2 covering 256x128 output.
    int const warp_row = warp_id & 3;  // 0..3
    int const warp_col = warp_id >> 2; // 0..1

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

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

    // Cooperative gmem->smem copy: 16B vectors.
    constexpr int A_INT4_PER_ROW = TILE_K / 8; // 4
    constexpr int A_INT4_TOTAL = (TILE_M * TILE_K) / 8; // 1024
    static_assert((A_INT4_TOTAL % THREADS_PER_BLOCK) == 0, "A copy mismatch");
    constexpr int A_ITERS = A_INT4_TOTAL / THREADS_PER_BLOCK; // 4

    constexpr int B_INT4_PER_ROW = TILE_N / 8; // 16
    constexpr int B_INT4_TOTAL = (TILE_K * TILE_N) / 8; // 512
    static_assert((B_INT4_TOTAL % THREADS_PER_BLOCK) == 0, "B copy mismatch");
    constexpr int B_ITERS = B_INT4_TOTAL / THREADS_PER_BLOCK; // 2

    // Prefetch first (N_STAGES-1) K blocks.
#pragma unroll
    for (int stage = 0; stage < (N_STAGES - 1); ++stage) {
        int const k_tile = stage * TILE_K;
        uint32_t const a_store_base =
            As_base + static_cast<uint32_t>(stage * A_STAGE_BYTES);
        uint32_t const b_store_base =
            Bs_base + static_cast<uint32_t>(stage * B_STAGE_BYTES);

#pragma unroll
        for (int it = 0; it < A_ITERS; ++it) {
            int const idx = tid + it * THREADS_PER_BLOCK;
            int const a_row = idx / A_INT4_PER_ROW;
            int const a_seg = idx - a_row * A_INT4_PER_ROW;
            int const a_col = a_seg * 8;
            void const *gmem_ptr =
                A + (block_m + a_row) * kK + (k_tile + a_col);
            int const smem_off = tensorop_rm_offset<32, TILE_K>(a_row, a_col);
            uint32_t const smem_addr =
                a_store_base + static_cast<uint32_t>(smem_off << 1);
            cp_async_cg_L2_16B_addr(smem_addr, gmem_ptr);
        }

#pragma unroll
        for (int it = 0; it < B_ITERS; ++it) {
            int const idx = tid + it * THREADS_PER_BLOCK;
            int const b_row = idx / B_INT4_PER_ROW; // 0..31 (K)
            int const b_seg = idx - b_row * B_INT4_PER_ROW;
            int const b_col = b_seg * 8; // 0..120 (N)
            void const *gmem_ptr =
                B + (k_tile + b_row) * kN + (block_n + b_col);
            int const smem_off = tensorop_rm_offset<64, TILE_N>(b_row, b_col);
            uint32_t const smem_addr =
                b_store_base + static_cast<uint32_t>(smem_off << 1);
            cp_async_cg_L2_16B_addr(smem_addr, gmem_ptr);
        }

        cp_async_commit_group();
    }

    for (int k_iter = 0; k_iter < K_BLOCKS; ++k_iter) {
        int const load_stage = k_iter % N_STAGES;
        int const store_stage = (k_iter + (N_STAGES - 1)) % N_STAGES;

        uint32_t const a_load_base =
            As_base + static_cast<uint32_t>(load_stage * A_STAGE_BYTES);
        uint32_t const b_load_base =
            Bs_base + static_cast<uint32_t>(load_stage * B_STAGE_BYTES);

        // Wait for the current stage to be ready.
        cp_async_wait_group<N_STAGES - 2>();
        __syncthreads();

        // Start next async copy (skip at tail).
        int const k_prefetch = k_iter + (N_STAGES - 1);
        if (k_prefetch < K_BLOCKS) {
            int const k_tile = k_prefetch * TILE_K;
            uint32_t const a_store_base =
                As_base + static_cast<uint32_t>(store_stage * A_STAGE_BYTES);
            uint32_t const b_store_base =
                Bs_base + static_cast<uint32_t>(store_stage * B_STAGE_BYTES);

#pragma unroll
            for (int it = 0; it < A_ITERS; ++it) {
                int const idx = tid + it * THREADS_PER_BLOCK;
                int const a_row = idx / A_INT4_PER_ROW;
                int const a_seg = idx - a_row * A_INT4_PER_ROW;
                int const a_col = a_seg * 8;
                void const *gmem_ptr =
                    A + (block_m + a_row) * kK + (k_tile + a_col);
                int const smem_off =
                    tensorop_rm_offset<32, TILE_K>(a_row, a_col);
                uint32_t const smem_addr =
                    a_store_base + static_cast<uint32_t>(smem_off << 1);
                cp_async_cg_L2_16B_addr(smem_addr, gmem_ptr);
            }

#pragma unroll
            for (int it = 0; it < B_ITERS; ++it) {
                int const idx = tid + it * THREADS_PER_BLOCK;
                int const b_row = idx / B_INT4_PER_ROW;
                int const b_seg = idx - b_row * B_INT4_PER_ROW;
                int const b_col = b_seg * 8;
                void const *gmem_ptr =
                    B + (k_tile + b_row) * kN + (block_n + b_col);
                int const smem_off =
                    tensorop_rm_offset<64, TILE_N>(b_row, b_col);
                uint32_t const smem_addr =
                    b_store_base + static_cast<uint32_t>(smem_off << 1);
                cp_async_cg_L2_16B_addr(smem_addr, gmem_ptr);
            }
            cp_async_commit_group();
        }

        // Compute using the current stage.
#pragma unroll
        for (int kk = 0; kk < TILE_K; kk += 16) {
            // Load B for 64 columns per warp via 4x (16 columns) ldmatrix.x4.trans.
            uint32_t bReg4[4][4];
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const b_row = kk + (lane_id & 15);
                int const b_col =
                    warp_col * 64 + nb * 16 + ((lane_id >> 4) * 8);
                int const b_off = tensorop_rm_offset<64, TILE_N>(b_row, b_col);
                uint32_t const addr_b =
                    b_load_base + static_cast<uint32_t>(b_off << 1);
                ldmatrix_x4_trans(bReg4[nb][0], bReg4[nb][1], bReg4[nb][2],
                                  bReg4[nb][3], addr_b);
            }

            // Stream A per m-slice.
#pragma unroll
            for (int m = 0; m < 4; ++m) {
                int const a_row = warp_row * 64 + m * 16 + (lane_id & 15);
                int const a_col = kk + ((lane_id >> 4) * 8);
                int const a_off = tensorop_rm_offset<32, TILE_K>(a_row, a_col);
                uint32_t const addr_a =
                    a_load_base + static_cast<uint32_t>(a_off << 1);
                uint32_t a0, a1, a2, a3;
                ldmatrix_x4(a0, a1, a2, a3, addr_a);

#pragma unroll
                for (int nb = 0; nb < 4; ++nb) {
                    int const n0 = nb * 2;
                    int const n1 = nb * 2 + 1;
                    mma_sync_m16n8k16_row_col_f16(
                        c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                        bReg4[nb][0], bReg4[nb][1]);
                    mma_sync_m16n8k16_row_col_f16(
                        c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                        bReg4[nb][2], bReg4[nb][3]);
                }
            }
        }
    }

    // Store accumulators to global C (row-major).
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

// v45: v44 but uses `cp.async.ca` instead of `cp.async.cg`.
//
// Hypothesis:
// - On Ada (sm_89), `cp.async.ca` can reduce latency vs `.cg` in some cases.
// - Even though this GEMM is compute-bound, lower cp.async overhead can still
//   improve HMMA pipe active %.
template <int N_STAGES>
__launch_bounds__(256)
__global__ void
gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_ca(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(N_STAGES >= 2, "cp.async pipeline needs at least 2 stages");

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

    __shared__ __align__(16) __half As[N_STAGES * A_STAGE_ELEMS];
    __shared__ __align__(16) __half Bs[N_STAGES * B_STAGE_ELEMS];

    int const tid = static_cast<int>(threadIdx.x);
    int const warp_id = tid >> 5;
    int const lane_id = tid & 31;
    if (warp_id >= WARPS_PER_BLOCK) {
        return;
    }

    int const warp_row = warp_id >> 2; // 0..1
    int const warp_col = warp_id & 3;  // 0..3

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

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
            cp_async_ca_L2_16B_addr(a_store_base + a_smem_off_bytes[it],
                                    gA_base + a_gmem_delta[it]);
        }
#pragma unroll
        for (int it = 0; it < B_ITERS; ++it) {
            cp_async_ca_L2_16B_addr(b_store_base + b_smem_off_bytes[it],
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

    for (int k_iter = 0; k_iter < K_BLOCKS; ++k_iter) {
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
        for (int m = 0; m < 4; ++m) {
            uint32_t const a0 = aReg[0][m][0];
            uint32_t const a1 = aReg[0][m][1];
            uint32_t const a2 = aReg[0][m][2];
            uint32_t const a3 = aReg[0][m][3];
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg[0][nb][0], bReg[0][nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg[0][nb][2], bReg[0][nb][3]);
            }
        }

        int const k_prefetch = k_iter + (N_STAGES - 1);
        bool const do_prefetch = (k_prefetch < K_BLOCKS);
        int const k_tile = do_prefetch ? (k_prefetch * TILE_K) : 0;

        __half const *gA_pref = A + block_m * kK + k_tile;
        __half const *gB_pref = B + k_tile * kN + block_n;

        if (do_prefetch) {
#pragma unroll
            for (int it = 0; it < A_ITERS; ++it) {
                cp_async_ca_L2_16B_addr(a_store_base + a_smem_off_bytes[it],
                                        gA_pref + a_gmem_delta[it]);
            }
#pragma unroll
            for (int it = 0; it < B_ITERS; ++it) {
                cp_async_ca_L2_16B_addr(b_store_base + b_smem_off_bytes[it],
                                        gB_pref + b_gmem_delta[it]);
            }
        }
        cp_async_commit_group();

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
        if (k_iter + 1 < K_BLOCKS) {
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

        // MMA: kgroup1 (kk=16) using slot 1 (old stage base).
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const a0 = aReg[1][m][0];
            uint32_t const a1 = aReg[1][m][1];
            uint32_t const a2 = aReg[1][m][2];
            uint32_t const a3 = aReg[1][m][3];
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg[1][nb][0], bReg[1][nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg[1][nb][2], bReg[1][nb][3]);
            }
        }
    }

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

// v46: v44 but removes the hot-loop `do_prefetch` / `k_iter+1<K_BLOCKS` branches
// by splitting the mainloop into:
// - a long “steady-state” loop where prefetch is always in-bounds
// - a short tail for the last (N_STAGES-1) iterations
//
// CUTLASS does this via iterator masks + predicated cp.async; for our fixed
// 4096^3 case we can do it explicitly to reduce integer/control overhead and
// (hopefully) give the compiler more freedom to interleave LDGSTS with HMMA.
template <int N_STAGES>
__launch_bounds__(256)
__global__ void
gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(N_STAGES >= 2, "cp.async pipeline needs at least 2 stages");
    static_assert(N_STAGES == 3, "v46 is specialized for N_STAGES=3");

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

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

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

    // Steady-state loop: prefetch always in-bounds, and next kgroup0 is always needed.
    for (int k_iter = 0; k_iter < MAIN_ITERS; ++k_iter) {
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
        for (int m = 0; m < 4; ++m) {
            uint32_t const a0 = aReg[0][m][0];
            uint32_t const a1 = aReg[0][m][1];
            uint32_t const a2 = aReg[0][m][2];
            uint32_t const a3 = aReg[0][m][3];
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg[0][nb][0], bReg[0][nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg[0][nb][2], bReg[0][nb][3]);
            }
        }

        int const k_prefetch = k_iter + (N_STAGES - 1); // always < K_BLOCKS
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
            ldmatrix_x4(aReg[0][m][0], aReg[0][m][1], aReg[0][m][2], aReg[0][m][3],
                        addr_a);
        }

        // MMA: kgroup1 (kk=16) using slot 1 (old stage base).
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const a0 = aReg[1][m][0];
            uint32_t const a1 = aReg[1][m][1];
            uint32_t const a2 = aReg[1][m][2];
            uint32_t const a3 = aReg[1][m][3];
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg[1][nb][0], bReg[1][nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg[1][nb][2], bReg[1][nb][3]);
            }
        }
    }

    // Tail: two remaining iterations when N_STAGES=3.
    // At this point we have slot0 loaded for k_iter = MAIN_ITERS.
    {
        // Iteration k_iter = MAIN_ITERS (e.g., 126): wait for the last prefetched stage.
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
        for (int m = 0; m < 4; ++m) {
            uint32_t const a0 = aReg[0][m][0];
            uint32_t const a1 = aReg[0][m][1];
            uint32_t const a2 = aReg[0][m][2];
            uint32_t const a3 = aReg[0][m][3];
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg[0][nb][0], bReg[0][nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg[0][nb][2], bReg[0][nb][3]);
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
            ldmatrix_x4(aReg[0][m][0], aReg[0][m][1], aReg[0][m][2], aReg[0][m][3],
                        addr_a);
        }

        // MMA: kgroup1 (kk=16) using slot 1 (old stage base).
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const a0 = aReg[1][m][0];
            uint32_t const a1 = aReg[1][m][1];
            uint32_t const a2 = aReg[1][m][2];
            uint32_t const a3 = aReg[1][m][3];
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg[1][nb][0], bReg[1][nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg[1][nb][2], bReg[1][nb][3]);
            }
        }
    }

    {
        // Final iteration (k_iter = K_BLOCKS-1): no prefetch, no barrier.
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

        // MMA: kgroup0 (kk=0) using slot 0.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const a0 = aReg[0][m][0];
            uint32_t const a1 = aReg[0][m][1];
            uint32_t const a2 = aReg[0][m][2];
            uint32_t const a3 = aReg[0][m][3];
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg[0][nb][0], bReg[0][nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg[0][nb][2], bReg[0][nb][3]);
            }
        }

        // MMA: kgroup1 (kk=16) using slot 1.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const a0 = aReg[1][m][0];
            uint32_t const a1 = aReg[1][m][1];
            uint32_t const a2 = aReg[1][m][2];
            uint32_t const a3 = aReg[1][m][3];
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg[1][nb][0], bReg[1][nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg[1][nb][2], bReg[1][nb][3]);
            }
        }
    }

    // Store accumulators to global C (row-major).
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

// v50: v46 but streams A fragments (doesn't keep A k-groups resident).
//
// Goal:
// - Reduce register pressure by avoiding `aReg[2][4][4]` (32 regs/thread).
// - Keep the CUTLASS-style mainloop schedule from v46 (faststage + noif) to
//   preserve the LDGSTS/HMMA overlap we gained in v42/v44/v46.
//
// Design:
// - Keep B fragments resident for both k-groups (`bReg[2]`), since B is reused
//   across all 4 m-slices.
// - Load A fragments on-demand (ldmatrix) per m-slice and immediately consume
//   them for all 4 n-slices (A-reuse order: m outer, nb inner).
template <int N_STAGES>
__launch_bounds__(256)
__global__ void
gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_streamA(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(N_STAGES >= 2, "cp.async pipeline needs at least 2 stages");
    static_assert(N_STAGES == 3, "v50 is specialized for N_STAGES=3");

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

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

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

    constexpr int A_INT4_PER_ROW = TILE_K / 8;           // 4
    constexpr int A_INT4_TOTAL = (TILE_M * TILE_K) / 8;  // 512
    constexpr int A_ITERS = A_INT4_TOTAL / THREADS_PER_BLOCK; // 2

    constexpr int B_INT4_PER_ROW = TILE_N / 8;           // 32
    constexpr int B_INT4_TOTAL = (TILE_K * TILE_N) / 8;  // 1024
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

    // B fragments: slot 0 = kgroup0, slot 1 = kgroup1.
    uint32_t bReg[2][4][4];

    // Initial load: B kgroup0 (kk=0) into slot 0 from stage 0.
#pragma unroll
    for (int nb = 0; nb < 4; ++nb) {
        uint32_t const addr_b = b_load_base + b_ld_off_bytes[0][nb];
        ldmatrix_x4_trans(bReg[0][nb][0], bReg[0][nb][1], bReg[0][nb][2],
                          bReg[0][nb][3], addr_b);
    }

    constexpr int MAIN_ITERS = K_BLOCKS - (N_STAGES - 1);
    static_assert(MAIN_ITERS > 0, "invalid steady-state loop length");

    // Steady-state loop: prefetch always in-bounds.
    for (int k_iter = 0; k_iter < MAIN_ITERS; ++k_iter) {
        uint32_t const a_load_base_k = a_load_base;
        uint32_t const b_load_base_k = b_load_base;

        // Load B kgroup1 (kk=16) into slot 1 (current stage).
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base_k + b_ld_off_bytes[1][nb];
            ldmatrix_x4_trans(bReg[1][nb][0], bReg[1][nb][1], bReg[1][nb][2],
                              bReg[1][nb][3], addr_b);
        }

        // MMA: kgroup0 (kk=0), stream A per m-slice.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base_k + a_ld_off_bytes[0][m];
            uint32_t a0, a1, a2, a3;
            ldmatrix_x4(a0, a1, a2, a3, addr_a);
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg[0][nb][0], bReg[0][nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg[0][nb][2], bReg[0][nb][3]);
            }
        }

        int const k_prefetch = k_iter + (N_STAGES - 1); // always < K_BLOCKS
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

        // Load next iteration's B kgroup0 (kk=0) into slot 0 (new stage).
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[0][nb];
            ldmatrix_x4_trans(bReg[0][nb][0], bReg[0][nb][1], bReg[0][nb][2],
                              bReg[0][nb][3], addr_b);
        }

        // MMA: kgroup1 (kk=16), stream A from the old stage base.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base_k + a_ld_off_bytes[1][m];
            uint32_t a0, a1, a2, a3;
            ldmatrix_x4(a0, a1, a2, a3, addr_a);
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg[1][nb][0], bReg[1][nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg[1][nb][2], bReg[1][nb][3]);
            }
        }
    }

    // Tail: two remaining iterations when N_STAGES=3.
    // At this point we have B slot0 loaded for k_iter = MAIN_ITERS.
    {
        // Iteration k_iter = MAIN_ITERS (e.g., 126): wait for the last prefetched stage.
        uint32_t const a_load_base_k = a_load_base;
        uint32_t const b_load_base_k = b_load_base;

        // Load B kgroup1 into slot 1 (current stage).
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base_k + b_ld_off_bytes[1][nb];
            ldmatrix_x4_trans(bReg[1][nb][0], bReg[1][nb][1], bReg[1][nb][2],
                              bReg[1][nb][3], addr_b);
        }

        // MMA: kgroup0 (kk=0), stream A.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base_k + a_ld_off_bytes[0][m];
            uint32_t a0, a1, a2, a3;
            ldmatrix_x4(a0, a1, a2, a3, addr_a);
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg[0][nb][0], bReg[0][nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg[0][nb][2], bReg[0][nb][3]);
            }
        }

        // Fully drain remaining cp.async (the last stage we prefetched in steady-state).
        cp_async_wait_group<0>();
        __syncthreads();

        // Advance stage pointers to the last stage.
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

        // Load next iter's B kgroup0 into slot 0 (final stage).
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[0][nb];
            ldmatrix_x4_trans(bReg[0][nb][0], bReg[0][nb][1], bReg[0][nb][2],
                              bReg[0][nb][3], addr_b);
        }

        // MMA: kgroup1 (kk=16), stream A from old stage base.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base_k + a_ld_off_bytes[1][m];
            uint32_t a0, a1, a2, a3;
            ldmatrix_x4(a0, a1, a2, a3, addr_a);
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg[1][nb][0], bReg[1][nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg[1][nb][2], bReg[1][nb][3]);
            }
        }
    }

    {
        // Final iteration (k_iter = K_BLOCKS-1 = 127): no prefetch, no barrier.
        uint32_t const a_load_base_k = a_load_base;
        uint32_t const b_load_base_k = b_load_base;

        // Load B kgroup1 (kk=16) into slot 1.
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base_k + b_ld_off_bytes[1][nb];
            ldmatrix_x4_trans(bReg[1][nb][0], bReg[1][nb][1], bReg[1][nb][2],
                              bReg[1][nb][3], addr_b);
        }

        // MMA: kgroup0 (kk=0), stream A.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base_k + a_ld_off_bytes[0][m];
            uint32_t a0, a1, a2, a3;
            ldmatrix_x4(a0, a1, a2, a3, addr_a);
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg[0][nb][0], bReg[0][nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg[0][nb][2], bReg[0][nb][3]);
            }
        }

        // MMA: kgroup1 (kk=16), stream A.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base_k + a_ld_off_bytes[1][m];
            uint32_t a0, a1, a2, a3;
            ldmatrix_x4(a0, a1, a2, a3, addr_a);
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg[1][nb][0], bReg[1][nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg[1][nb][2], bReg[1][nb][3]);
            }
        }
    }

    // Store accumulators to global C (row-major).
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

// v51: v50 + swap the blockIdx mapping (grid.x = M tiles, grid.y = N tiles).
//
// Why this sometimes helps:
// - For 4096^3, each CTA reuses its B tile across 32 CTAs with different M tiles
//   (same N tile, different M tile). A large Ada L2 can capture that reuse if
//   the launch order keeps those CTAs close in time.
// - Swapping (x,y) so that the *major* grid dimension corresponds to M can
//   increase locality of B tile reuse (empirically this also helped our v49).
//
// This kernel is otherwise identical to v50 (stream-A, faststage-noif).
template <int N_STAGES>
__launch_bounds__(256)
__global__ void
gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_streamA_swapxy(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(N_STAGES >= 2, "cp.async pipeline needs at least 2 stages");
    static_assert(N_STAGES == 3, "v51 is specialized for N_STAGES=3");

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

    constexpr int A_INT4_PER_ROW = TILE_K / 8;           // 4
    constexpr int A_INT4_TOTAL = (TILE_M * TILE_K) / 8;  // 512
    constexpr int A_ITERS = A_INT4_TOTAL / THREADS_PER_BLOCK; // 2

    constexpr int B_INT4_PER_ROW = TILE_N / 8;           // 32
    constexpr int B_INT4_TOTAL = (TILE_K * TILE_N) / 8;  // 1024
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

    // B fragments: slot 0 = kgroup0, slot 1 = kgroup1.
    uint32_t bReg[2][4][4];

    // Initial load: B kgroup0 (kk=0) into slot 0 from stage 0.
#pragma unroll
    for (int nb = 0; nb < 4; ++nb) {
        uint32_t const addr_b = b_load_base + b_ld_off_bytes[0][nb];
        ldmatrix_x4_trans(bReg[0][nb][0], bReg[0][nb][1], bReg[0][nb][2],
                          bReg[0][nb][3], addr_b);
    }

    constexpr int MAIN_ITERS = K_BLOCKS - (N_STAGES - 1);
    static_assert(MAIN_ITERS > 0, "invalid steady-state loop length");

    // Steady-state loop: prefetch always in-bounds.
    for (int k_iter = 0; k_iter < MAIN_ITERS; ++k_iter) {
        uint32_t const a_load_base_k = a_load_base;
        uint32_t const b_load_base_k = b_load_base;

        // Load B kgroup1 (kk=16) into slot 1 (current stage).
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base_k + b_ld_off_bytes[1][nb];
            ldmatrix_x4_trans(bReg[1][nb][0], bReg[1][nb][1], bReg[1][nb][2],
                              bReg[1][nb][3], addr_b);
        }

        // MMA: kgroup0 (kk=0), stream A per m-slice.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base_k + a_ld_off_bytes[0][m];
            uint32_t a0, a1, a2, a3;
            ldmatrix_x4(a0, a1, a2, a3, addr_a);
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg[0][nb][0], bReg[0][nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg[0][nb][2], bReg[0][nb][3]);
            }
        }

        int const k_prefetch = k_iter + (N_STAGES - 1); // always < K_BLOCKS
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

        // Load next iteration's B kgroup0 (kk=0) into slot 0 (new stage).
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[0][nb];
            ldmatrix_x4_trans(bReg[0][nb][0], bReg[0][nb][1], bReg[0][nb][2],
                              bReg[0][nb][3], addr_b);
        }

        // MMA: kgroup1 (kk=16), stream A from the old stage base.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base_k + a_ld_off_bytes[1][m];
            uint32_t a0, a1, a2, a3;
            ldmatrix_x4(a0, a1, a2, a3, addr_a);
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg[1][nb][0], bReg[1][nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg[1][nb][2], bReg[1][nb][3]);
            }
        }
    }

    // Tail: two remaining iterations when N_STAGES=3.
    // At this point we have B kgroup0 already loaded for k_iter=MAIN_ITERS.
    {
        // Iteration k_iter = MAIN_ITERS (e.g., 126): wait for the last prefetched stage.
        uint32_t const a_load_base_k = a_load_base;
        uint32_t const b_load_base_k = b_load_base;

        // Load B kgroup1 into slot 1 (current stage).
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base_k + b_ld_off_bytes[1][nb];
            ldmatrix_x4_trans(bReg[1][nb][0], bReg[1][nb][1], bReg[1][nb][2],
                              bReg[1][nb][3], addr_b);
        }

        // MMA: kgroup0 (kk=0), stream A.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base_k + a_ld_off_bytes[0][m];
            uint32_t a0, a1, a2, a3;
            ldmatrix_x4(a0, a1, a2, a3, addr_a);
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg[0][nb][0], bReg[0][nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg[0][nb][2], bReg[0][nb][3]);
            }
        }

        // Fully drain remaining cp.async (the last stage we prefetched in steady-state).
        cp_async_wait_group<0>();
        __syncthreads();

        // Advance stage pointers to the last stage.
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

        // Load next iter's B kgroup0 into slot 0 (final stage).
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[0][nb];
            ldmatrix_x4_trans(bReg[0][nb][0], bReg[0][nb][1], bReg[0][nb][2],
                              bReg[0][nb][3], addr_b);
        }

        // MMA: kgroup1 (kk=16), stream A from old stage base.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base_k + a_ld_off_bytes[1][m];
            uint32_t a0, a1, a2, a3;
            ldmatrix_x4(a0, a1, a2, a3, addr_a);
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg[1][nb][0], bReg[1][nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg[1][nb][2], bReg[1][nb][3]);
            }
        }
    }

    {
        // Final iteration (k_iter = K_BLOCKS-1 = 127): no prefetch, no barrier.
        uint32_t const a_load_base_k = a_load_base;
        uint32_t const b_load_base_k = b_load_base;

        // Load B kgroup1 (kk=16) into slot 1.
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base_k + b_ld_off_bytes[1][nb];
            ldmatrix_x4_trans(bReg[1][nb][0], bReg[1][nb][1], bReg[1][nb][2],
                              bReg[1][nb][3], addr_b);
        }

        // MMA: kgroup0 (kk=0), stream A.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base_k + a_ld_off_bytes[0][m];
            uint32_t a0, a1, a2, a3;
            ldmatrix_x4(a0, a1, a2, a3, addr_a);
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg[0][nb][0], bReg[0][nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg[0][nb][2], bReg[0][nb][3]);
            }
        }

        // MMA: kgroup1 (kk=16), stream A.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            uint32_t const addr_a = a_load_base_k + a_ld_off_bytes[1][m];
            uint32_t a0, a1, a2, a3;
            ldmatrix_x4(a0, a1, a2, a3, addr_a);
#pragma unroll
            for (int nb = 0; nb < 4; ++nb) {
                int const n0 = nb * 2;
                int const n1 = nb * 2 + 1;
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n0][0], c[m][n0][1], a0, a1, a2, a3,
                    bReg[1][nb][0], bReg[1][nb][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n1][0], c[m][n1][1], a0, a1, a2, a3,
                    bReg[1][nb][2], bReg[1][nb][3]);
            }
        }
    }

    // Store accumulators to global C (row-major).
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

// v47: v46 + reorder the MMA inner loops to favor B-fragment reuse.
//
// Motivation:
// - Each k-group has 4 A fragments (m-slices) and 4 B fragments (n-slices).
// - Original ordering (m outer, nb inner) maximizes A reuse but revisits the same
//   B fragment after a long gap (might miss the reuse cache).
// - This variant uses (nb outer, m inner) so each B fragment is consumed for all
//   4 m-slices back-to-back. This often matches CUTLASS/CUTE HMMA ordering.
template <int N_STAGES>
__launch_bounds__(256)
__global__ void
gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(N_STAGES >= 2, "cp.async pipeline needs at least 2 stages");
    static_assert(N_STAGES == 3, "v47 is specialized for N_STAGES=3");

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

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

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

        // MMA: kgroup0 (kk=0) using slot 0 (B-reuse order).
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

        // Load next iteration's kgroup0 (kk=0) into slot 0.
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
    }

    // Tail iteration k_iter = MAIN_ITERS (126).
    {
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

        // MMA: kgroup0 slot 0 (B-reuse order).
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

        cp_async_wait_group<0>();
        __syncthreads();

        // Advance stage pointers and load next iter's kgroup0 into slot0.
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
            ldmatrix_x4(aReg[0][m][0], aReg[0][m][1], aReg[0][m][2], aReg[0][m][3],
                        addr_a);
        }

        // MMA: kgroup1 slot 1 (B-reuse order).
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

    // Final iteration (k_iter = K_BLOCKS-1 = 127): no prefetch, no barrier.
    {
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

        // MMA: kgroup0 slot 0 (B-reuse order).
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

        // MMA: kgroup1 slot 1 (B-reuse order).
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

// v48: v47 but delays loading next-iteration kgroup0 (slot 0) until *after* we
// finish kgroup1 MMA for the current iteration.
//
// Motivation:
// - In v47 we load the next iteration's kgroup0 into `aReg[0]/bReg[0]` right
//   after the `cp.async.wait_group + __syncthreads()` stage-advance, before
//   computing kgroup1. That makes two full sets of A/B operands live during the
//   entire kgroup1 MMA, increasing register pressure.
// - CUTLASS commonly "prepares next iteration fragments" in the *last* warp
//   tile (kgroup1 here), which keeps operand live ranges shorter and tends to
//   reduce register pressure.
//
// Expected effect:
// - Lower peak register pressure during the heavy HMMA section (more similar to
//   CUTLASS REG~152 vs our ~200), potentially improving achieved TFLOPS.
template <int N_STAGES>
__launch_bounds__(256)
__global__ void
gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_late_k0ld(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(N_STAGES >= 2, "cp.async pipeline needs at least 2 stages");
    static_assert(N_STAGES == 3, "v48 is specialized for N_STAGES=3");

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

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

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

    constexpr int A_INT4_PER_ROW = TILE_K / 8;           // 4
    constexpr int A_INT4_TOTAL = (TILE_M * TILE_K) / 8;  // 512
    constexpr int A_ITERS = A_INT4_TOTAL / THREADS_PER_BLOCK; // 2

    constexpr int B_INT4_PER_ROW = TILE_N / 8;           // 32
    constexpr int B_INT4_TOTAL = (TILE_K * TILE_N) / 8;  // 1024
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

    // Steady-state loop (k_prefetch always in-bounds; always loads next stage).
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

        // MMA: kgroup0 (kk=0) using slot 0 (B-reuse order).
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

        // Prefetch next K tile into store stage (always in-bounds in steady state).
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

        // Stage advance.
        cp_async_wait_group<N_STAGES - 2>();
        __syncthreads();

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

        // Advance stage pointers (add+wrap) and prepare next iteration's kgroup0.
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
            ldmatrix_x4(aReg[0][m][0], aReg[0][m][1], aReg[0][m][2], aReg[0][m][3],
                        addr_a);
        }
    }

    // Tail: identical to v47 (N_STAGES=3).
    // At this point we have slot0 loaded for k_iter = MAIN_ITERS.
    {
        // Iteration k_iter = MAIN_ITERS (e.g., 126): wait for the last prefetched stage.
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

        // MMA: kgroup0 (kk=0) using slot 0 (B-reuse order).
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
            ldmatrix_x4(aReg[0][m][0], aReg[0][m][1], aReg[0][m][2], aReg[0][m][3],
                        addr_a);
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

        // MMA: kgroup0 slot 0 (B-reuse order).
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

        // MMA: kgroup1 slot 1 (B-reuse order).
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

// -----------------------------------------------------------------------------
// Kernel milestone guide (teaching / reading order)
//
// This file contains many kernel variants (v0..v96). Most versions are kept on
// purpose: each one demonstrates a *single idea* that either improved
// performance, or was an interesting dead-end worth studying.
//
// If you're learning, a good "story arc" is:
//   - v52: "postwait" schedule — overlap `cp.async` with compute
//   - v60: pad B in shared (+8 half) — reduce residual `ldmatrix` bank conflicts
//   - v66/v69: epilogue — vec8 (16B) stores + padded scratch to reduce store/MIO
//   - v79/v80: CUTLASS-like B copy mapping + base+imm addressing for `cp.async`
//   - v83: base+imm addressing for `ldmatrix` (reduce INT pipe pressure)
//   - v95: reorder HMMA to encourage operand `.reuse` (current best)
//
// The current `--kernel=best` alias is kept in sync with the fastest *stable*
// version (see `parse_kernel()`).
// -----------------------------------------------------------------------------
#include "gemm_tc_fp16_4096/kernels/v52_postwait.cuh"
#include "gemm_tc_fp16_4096/kernels/v53_ldgsts_il.cuh"
#include "gemm_tc_fp16_4096/kernels/v54_streamb.cuh"
#include "gemm_tc_fp16_4096/kernels/v55_warpstagger_nb.cuh"
#include "gemm_tc_fp16_4096/kernels/v56_hmma_ldgsts_alt.cuh"
#include "gemm_tc_fp16_4096/kernels/v57_splitcopy_4wA_4wB.cuh"
#include "gemm_tc_fp16_4096/kernels/v58_s2_lowreg_lb2.cuh"
#include "gemm_tc_fp16_4096/kernels/v59_stagecolA.cuh"
#include "gemm_tc_fp16_4096/kernels/v60_padB8.cuh"
#include "gemm_tc_fp16_4096/kernels/v61_bk64_s2.cuh"
#include "gemm_tc_fp16_4096/kernels/v62_nbspread.cuh"
#include "gemm_tc_fp16_4096/kernels/v63_postwait_ca.cuh"
#include "gemm_tc_fp16_4096/kernels/v64_postwait_bcross32.cuh"
#include "gemm_tc_fp16_4096/kernels/v65_postwait_singlefrag.cuh"
#include "gemm_tc_fp16_4096/kernels/v66_postwait_singlefrag_epilogue_vec8.cuh"
#include "gemm_tc_fp16_4096/kernels/v67_postwait_epilogue_vec8.cuh"
#include "gemm_tc_fp16_4096/kernels/v68_postwait_epilogue_warpscratch_vec8.cuh"
#include "gemm_tc_fp16_4096/kernels/v69_postwait_epilogue_vec8_smemc_pad8.cuh"
#include "gemm_tc_fp16_4096/kernels/v70_postwait_singlefrag_epilogue_vec8_smemc_pad8.cuh"
#include "gemm_tc_fp16_4096/kernels/v71_postwait_singlefrag_epilogue_vec8_smemc_pad8_ptrinc.cuh"
#include "gemm_tc_fp16_4096/kernels/v72_postwait_singlefrag_epilogue_vec8_dynsmem.cuh"
#include "gemm_tc_fp16_4096/kernels/v73_postwait_singlefrag_epilogue_vec8_smemc_pad8_ca.cuh"
#include "gemm_tc_fp16_4096/kernels/v74_postwait_singlefrag_epilogue_vec8_smemc_pad8_stagewrap.cuh"
#include "gemm_tc_fp16_4096/kernels/v75_postwait_singlefrag_streamb_epilogue_vec8_smemc_pad8.cuh"
#include "gemm_tc_fp16_4096/kernels/v76_postwait_singlefrag_epilogue_vec8_smemc_pad8_maxnreg160.cuh"
#include "gemm_tc_fp16_4096/kernels/v77_postwait_singlefrag_epilogue_vec8_smemc_pad8_maxnreg152.cuh"
#include "gemm_tc_fp16_4096/kernels/v78_postwait_singlefrag_epilogue_vec8_smemc_pad8_contigcopy.cuh"
#include "gemm_tc_fp16_4096/kernels/v79_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4.cuh"
#include "gemm_tc_fp16_4096/kernels/v80_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm.cuh"
#include "gemm_tc_fp16_4096/kernels/v81_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_a64imm.cuh"
#include "gemm_tc_fp16_4096/kernels/v82_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_a64imm_ilcp.cuh"
#include "gemm_tc_fp16_4096/kernels/v83_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff.cuh"
#include "gemm_tc_fp16_4096/kernels/v84_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_epistore.cuh"
#include "gemm_tc_fp16_4096/kernels/v86_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_ldsm_pipe.cuh"
#include "gemm_tc_fp16_4096/kernels/v87_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_fragdbuf.cuh"
#include "gemm_tc_fp16_4096/kernels/v88_faststage_noif_breuse_swapxy_midwait_fragpipe.cuh"
#include "gemm_tc_fp16_4096/kernels/v89_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_cpinterleave.cuh"
#include "gemm_tc_fp16_4096/kernels/v90_midwait_cpinterleave_fragpipe.cuh"
#include "gemm_tc_fp16_4096/kernels/v91_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_stage3unroll.cuh"
#include "gemm_tc_fp16_4096/kernels/v92_postwait_warpspec_copy_a2b4.cuh"
#include "gemm_tc_fp16_4096/kernels/v93_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_ldsm_interleave.cuh"
#include "gemm_tc_fp16_4096/kernels/v94_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_ldsm_ldgsts_interleave.cuh"
#include "gemm_tc_fp16_4096/kernels/v95_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_breuse_nmajor.cuh"
#include "gemm_tc_fp16_4096/kernels/v96_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_breuse_aboundary.cuh"

// v49: v47 but swaps the blockIdx mapping (grid.x = M tiles, grid.y = N tiles).
//
// Motivation:
// - The CUTLASS reference kernel (cute_gemm_fp16.cu) launches with grid
//   (32,16) for this problem, i.e. the major grid dimension is 32.
// - With a large L2 on Ada, executing many CTAs that share the same B tile
//   back-to-back can improve effective reuse (fixed-N, varying-M CTAs share B).
// - Our default mapping uses grid (16,32) where consecutive CTAs (in x-major
//   order) share A instead; this variant tests whether B-side reuse is better.
//
// This is a *pure* mapping change: the mainloop schedule, shared layout, and
// instruction selection match v47.
template <int N_STAGES>
__launch_bounds__(256)
__global__ void
gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(N_STAGES >= 2, "cp.async pipeline needs at least 2 stages");
    static_assert(N_STAGES == 3, "v49 is specialized for N_STAGES=3");

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

        // MMA: kgroup0 (kk=0) using slot 0 (B-reuse order).
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

        int const k_prefetch = k_iter + (N_STAGES - 1); // always < K_BLOCKS
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
    }

    // Tail: two remaining iterations when N_STAGES=3.
    // At this point we have slot0 loaded for k_iter = MAIN_ITERS.
    {
        // Iteration k_iter = MAIN_ITERS (e.g., 126): wait for the last prefetched stage.
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

        // MMA: kgroup0 (kk=0) using slot 0 (B-reuse order).
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

        // MMA: kgroup0 slot 0 (B-reuse order).
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

        // MMA: kgroup1 slot 1 (B-reuse order).
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

// Same tiling as v23 (128x256, 64x64/warp), but explicitly splits the two
// k-groups (k=0..15, k=16..31) and only keeps *one* k-group of A/B operands
// resident at a time.
//
// Goal: reduce register pressure so we can keep occupancy reasonable; v23's
// straight "load both k-groups into aReg/bReg" approach explodes registers on
// sm_89 (~180 regs/thread) and collapses to 1 CTA/SM.
__launch_bounds__(256)
__global__ void
gemm_tc_mma_permuted_bcol_cpasync2_fp16acc_128x256x32_warp2x4_warp64x64_splitk(
    const __half *__restrict__ A, const __half *__restrict__ B_col,
    __half *__restrict__ C) {
    constexpr int N_STAGES = 2;

    constexpr int TILE_M = 128;
    constexpr int TILE_N = 256;
    constexpr int TILE_K = 32; // half
    constexpr int K_VEC = kK / 8; // 8 half per uint4
    constexpr int K_BLOCKS = kK / TILE_K;
    constexpr int VEC_PER_KBLOCK = TILE_K / 8; // 4

    constexpr int A_STAGE_ROWS = 64;
    constexpr int A_STAGE_COLS = 8;
    constexpr int A_STAGE_BYTES = A_STAGE_ROWS * A_STAGE_COLS * sizeof(uint4);

    constexpr int B_STAGE_ROWS = 64;
    constexpr int B_STAGE_COLS = 8;
    constexpr int B_STAGE_BYTES = B_STAGE_ROWS * B_STAGE_COLS * sizeof(uint4);

    __shared__ __align__(16) uint4 As[N_STAGES * A_STAGE_ROWS][A_STAGE_COLS];
    __shared__ __align__(16) uint4 Bs0[N_STAGES * B_STAGE_ROWS][B_STAGE_COLS];
    __shared__ __align__(16) uint4 Bs1[N_STAGES * B_STAGE_ROWS][B_STAGE_COLS];

    int const thread_id = static_cast<int>(threadIdx.x);
    int const warp_id = thread_id >> 5;
    int const lane_id = thread_id & 31;

    int const warp_row = warp_id >> 2;
    int const warp_col = warp_id & 3;

    int const warp_offset_a = 32 * warp_row;
    int const warp_col_in_seg = warp_col & 1;
    int const warp_offset_b = 32 * warp_col_in_seg;
    int const warp_b_segment = warp_col >> 1;

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

    uint4 const *globalA =
        reinterpret_cast<uint4 const *>(A + block_m * kK);
    uint4 const *globalB =
        reinterpret_cast<uint4 const *>(B_col + block_n * kK);

    int const store_row = warp_id * 4 + (lane_id >> 3); // 0..31
    int const store_col = (lane_id & 7) ^ (lane_id >> 3); // 0..7

    int const load_row_a = (lane_id & 15) >> 1; // 0..7
    int const load_col_a =
        ((lane_id >> 4) + 4 * (lane_id & 1)) ^ (load_row_a & 3);
    int const load_row_b = (lane_id & 7) >> 1; // 0..3
    int const load_col_b =
        ((lane_id >> 3) + 4 * (lane_id & 1)) ^ (load_row_b & 3);

    uint4 const *a_lane =
        globalA + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);
    uint4 const *b_lane =
        globalB + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);

    uint32_t const As_base = __cvta_generic_to_shared(&As[0][0]);
    uint32_t const Bs0_base = __cvta_generic_to_shared(&Bs0[0][0]);
    uint32_t const Bs1_base = __cvta_generic_to_shared(&Bs1[0][0]);

    uint32_t c[4][8][2];
#pragma unroll
    for (int m = 0; m < 4; ++m) {
#pragma unroll
        for (int n = 0; n < 8; ++n) {
            c[m][n][0] = 0u;
            c[m][n][1] = 0u;
        }
    }

    // Prefetch first K block into stage 0.
    {
        uint4 *aStore = &As[0][0];
        uint4 *b0Store = &Bs0[0][0];
        uint4 *b1Store = &Bs1[0][0];

        cp_async_cg_L2_16B(aStore + (store_row * A_STAGE_COLS + store_col),
                           a_lane + 0);
        cp_async_cg_L2_16B(
            aStore + ((store_row + 32) * A_STAGE_COLS + store_col),
            a_lane + (64 * K_VEC + 0));

        cp_async_cg_L2_16B(b0Store + (store_row * B_STAGE_COLS + store_col),
                           b_lane + 0);
        cp_async_cg_L2_16B(
            b0Store + ((store_row + 32) * B_STAGE_COLS + store_col),
            b_lane + (64 * K_VEC + 0));

        cp_async_cg_L2_16B(b1Store + (store_row * B_STAGE_COLS + store_col),
                           b_lane + (128 * K_VEC + 0));
        cp_async_cg_L2_16B(
            b1Store + ((store_row + 32) * B_STAGE_COLS + store_col),
            b_lane + (192 * K_VEC + 0));

        cp_async_commit_group();
    }

    // Temporary B registers for one k-group (k=0..15 or k=16..31).
    uint32_t bReg[8][2];

    for (int k_iter = 0; k_iter < K_BLOCKS; ++k_iter) {
        int const load_stage = k_iter & 1;
        int const store_stage = load_stage ^ 1;

        uint32_t const a_load_base =
            As_base + static_cast<uint32_t>(load_stage * A_STAGE_BYTES);
        uint32_t const b0_load_base =
            Bs0_base + static_cast<uint32_t>(load_stage * B_STAGE_BYTES);
        uint32_t const b1_load_base =
            Bs1_base + static_cast<uint32_t>(load_stage * B_STAGE_BYTES);
        uint32_t const b_load_base = (warp_b_segment == 0) ? b0_load_base
                                                           : b1_load_base;

        cp_async_wait_group<0>();
        __syncthreads();

        // Start next async copy as early as possible.
        if (k_iter + 1 < K_BLOCKS) {
            int const kStart = (k_iter + 1) * VEC_PER_KBLOCK;
            uint4 *aStore = &As[store_stage * A_STAGE_ROWS][0];
            uint4 *b0Store = &Bs0[store_stage * B_STAGE_ROWS][0];
            uint4 *b1Store = &Bs1[store_stage * B_STAGE_ROWS][0];

            cp_async_cg_L2_16B(aStore + (store_row * A_STAGE_COLS + store_col),
                               a_lane + kStart);
            cp_async_cg_L2_16B(
                aStore + ((store_row + 32) * A_STAGE_COLS + store_col),
                a_lane + (64 * K_VEC + kStart));

            cp_async_cg_L2_16B(
                b0Store + (store_row * B_STAGE_COLS + store_col),
                b_lane + kStart);
            cp_async_cg_L2_16B(
                b0Store + ((store_row + 32) * B_STAGE_COLS + store_col),
                b_lane + (64 * K_VEC + kStart));

            cp_async_cg_L2_16B(
                b1Store + (store_row * B_STAGE_COLS + store_col),
                b_lane + (128 * K_VEC + kStart));
            cp_async_cg_L2_16B(
                b1Store + ((store_row + 32) * B_STAGE_COLS + store_col),
                b_lane + (192 * K_VEC + kStart));

            cp_async_commit_group();
        }

        // --- k-group 0 (k=0..15) ---
        // Load B regs for all n-slices (k-group 0).
#pragma unroll
        for (int n = 0; n < 8; ++n) {
            int const row = n * 4 + warp_offset_b + load_row_b;
            uint32_t const addr =
                b_load_base +
                static_cast<uint32_t>((row * 8 + load_col_b) * sizeof(uint4));
            ldmatrix_x2(bReg[n][0], bReg[n][1], addr);
        }

        // Stream A per m-slice to reduce live regs.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            int const row = m * 8 + warp_offset_a + load_row_a;
            uint32_t const addr =
                a_load_base +
                static_cast<uint32_t>((row * 8 + load_col_a) * sizeof(uint4));
            uint32_t a0, a1, a2, a3;
            ldmatrix_x4(a0, a1, a2, a3, addr);
#pragma unroll
            for (int n = 0; n < 8; ++n) {
                mma_sync_m16n8k16_row_col_f16(c[m][n][0], c[m][n][1], a0, a1, a2,
                                              a3, bReg[n][0], bReg[n][1]);
            }
        }

        // --- k-group 1 (k=16..31) ---
        // Load B regs for all n-slices (k-group 1).
#pragma unroll
        for (int n = 0; n < 8; ++n) {
            int const row = n * 4 + warp_offset_b + load_row_b;
            uint32_t const addr =
                b_load_base +
                static_cast<uint32_t>(
                    (row * 8 + (load_col_b ^ 2)) * sizeof(uint4));
            ldmatrix_x2(bReg[n][0], bReg[n][1], addr);
        }

#pragma unroll
        for (int m = 0; m < 4; ++m) {
            int const row = m * 8 + warp_offset_a + load_row_a;
            uint32_t const addr =
                a_load_base + static_cast<uint32_t>(
                                  (row * 8 + (load_col_a ^ 2)) * sizeof(uint4));
            uint32_t a0, a1, a2, a3;
            ldmatrix_x4(a0, a1, a2, a3, addr);
#pragma unroll
            for (int n = 0; n < 8; ++n) {
                mma_sync_m16n8k16_row_col_f16(c[m][n][0], c[m][n][1], a0, a1, a2,
                                              a3, bReg[n][0], bReg[n][1]);
            }
        }
    }

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

// Variant of v25 (split k-groups) that tries to regain occupancy by forcing the
// compiler to target 2 CTAs/SM.
//
// v23/v25 shapes are attractive for FP16-accumulate throughput because they
// increase the work/overhead ratio, but on sm_89 the straightforward 64x64/warp
// implementation is very register heavy (v23: ~180 regs/thread, v25: ~154),
// collapsing occupancy to 1 CTA/SM.
//
// This kernel applies two tactics:
// - `__launch_bounds__(256, 2)` to encourage <=128 regs/thread.
// - Disable unrolling on the 8-iteration N loops to reduce address register
//   pressure from fully unrolled `ldmatrix`/store sequences.
__launch_bounds__(256, 2)
__global__ void
gemm_tc_mma_permuted_bcol_cpasync2_fp16acc_128x256x32_warp2x4_warp64x64_splitk_lb2(
    const __half *__restrict__ A, const __half *__restrict__ B_col,
    __half *__restrict__ C) {
    constexpr int N_STAGES = 2;

    constexpr int TILE_M = 128;
    constexpr int TILE_N = 256;
    constexpr int TILE_K = 32; // half
    constexpr int K_VEC = kK / 8; // 8 half per uint4
    constexpr int K_BLOCKS = kK / TILE_K;
    constexpr int VEC_PER_KBLOCK = TILE_K / 8; // 4

    constexpr int A_STAGE_ROWS = 64;
    constexpr int A_STAGE_COLS = 8;
    constexpr int A_STAGE_BYTES = A_STAGE_ROWS * A_STAGE_COLS * sizeof(uint4);

    constexpr int B_STAGE_ROWS = 64;
    constexpr int B_STAGE_COLS = 8;
    constexpr int B_STAGE_BYTES = B_STAGE_ROWS * B_STAGE_COLS * sizeof(uint4);

    __shared__ __align__(16) uint4 As[N_STAGES * A_STAGE_ROWS][A_STAGE_COLS];
    __shared__ __align__(16) uint4 Bs0[N_STAGES * B_STAGE_ROWS][B_STAGE_COLS];
    __shared__ __align__(16) uint4 Bs1[N_STAGES * B_STAGE_ROWS][B_STAGE_COLS];

    int const thread_id = static_cast<int>(threadIdx.x);
    int const warp_id = thread_id >> 5;
    int const lane_id = thread_id & 31;

    int const warp_row = warp_id >> 2;
    int const warp_col = warp_id & 3;
    int const warp_offset_a = 32 * warp_row;
    int const warp_col_in_seg = warp_col & 1;
    int const warp_offset_b = 32 * warp_col_in_seg;
    int const warp_b_segment = warp_col >> 1;

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

    uint4 const *globalA = reinterpret_cast<uint4 const *>(A + block_m * kK);
    uint4 const *globalB = reinterpret_cast<uint4 const *>(B_col + block_n * kK);

    int const store_row = warp_id * 4 + (lane_id >> 3); // 0..31
    int const store_col = (lane_id & 7) ^ (lane_id >> 3); // 0..7

    int const load_row_a = (lane_id & 15) >> 1; // 0..7
    int const load_col_a =
        ((lane_id >> 4) + 4 * (lane_id & 1)) ^ (load_row_a & 3);
    int const load_row_b = (lane_id & 7) >> 1; // 0..3
    int const load_col_b =
        ((lane_id >> 3) + 4 * (lane_id & 1)) ^ (load_row_b & 3);

    uint4 const *a_lane =
        globalA + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);
    uint4 const *b_lane =
        globalB + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);

    uint32_t const As_base = __cvta_generic_to_shared(&As[0][0]);
    uint32_t const Bs0_base = __cvta_generic_to_shared(&Bs0[0][0]);
    uint32_t const Bs1_base = __cvta_generic_to_shared(&Bs1[0][0]);

    // Accumulators for 64x64 output per warp: m in 0..3 (64 rows), n in 0..7 (64 cols).
    uint32_t c[4][8][2];
#pragma unroll
    for (int m = 0; m < 4; ++m) {
#pragma unroll
        for (int n = 0; n < 8; ++n) {
            c[m][n][0] = 0u;
            c[m][n][1] = 0u;
        }
    }

    // Prefetch first (N_STAGES-1) K blocks.
#pragma unroll
    for (int stage = 0; stage < (N_STAGES - 1); ++stage) {
        int const kStart = stage * VEC_PER_KBLOCK;
        uint4 *aStore = &As[stage * A_STAGE_ROWS][0];
        uint4 *b0Store = &Bs0[stage * B_STAGE_ROWS][0];
        uint4 *b1Store = &Bs1[stage * B_STAGE_ROWS][0];

        cp_async_cg_L2_16B(aStore + (store_row * A_STAGE_COLS + store_col),
                           a_lane + kStart);
        cp_async_cg_L2_16B(
            aStore + ((store_row + 32) * A_STAGE_COLS + store_col),
            a_lane + (64 * K_VEC + kStart));

        cp_async_cg_L2_16B(b0Store + (store_row * B_STAGE_COLS + store_col),
                           b_lane + kStart);
        cp_async_cg_L2_16B(
            b0Store + ((store_row + 32) * B_STAGE_COLS + store_col),
            b_lane + (64 * K_VEC + kStart));

        cp_async_cg_L2_16B(b1Store + (store_row * B_STAGE_COLS + store_col),
                           b_lane + (128 * K_VEC + kStart));
        cp_async_cg_L2_16B(
            b1Store + ((store_row + 32) * B_STAGE_COLS + store_col),
            b_lane + (192 * K_VEC + kStart));

        cp_async_commit_group();
    }

    // Temporary B registers for one k-group (k=0..15 or k=16..31).
    uint32_t bReg[8][2];

    for (int k_iter = 0; k_iter < K_BLOCKS; ++k_iter) {
        int const load_stage = k_iter % N_STAGES;
        int const store_stage = (k_iter + (N_STAGES - 1)) % N_STAGES;

        uint32_t const a_load_base =
            As_base + static_cast<uint32_t>(load_stage * A_STAGE_BYTES);
        uint32_t const b0_load_base =
            Bs0_base + static_cast<uint32_t>(load_stage * B_STAGE_BYTES);
        uint32_t const b1_load_base =
            Bs1_base + static_cast<uint32_t>(load_stage * B_STAGE_BYTES);
        uint32_t const b_load_base = (warp_b_segment == 0) ? b0_load_base
                                                           : b1_load_base;

        cp_async_wait_group<N_STAGES - 2>();
        __syncthreads();

        // Start next async copy.
        int kStart = (k_iter + (N_STAGES - 1)) * VEC_PER_KBLOCK;
        kStart = (kStart > (K_VEC - VEC_PER_KBLOCK)) ? (K_VEC - VEC_PER_KBLOCK)
                                                     : kStart;
        uint4 *aStore = &As[store_stage * A_STAGE_ROWS][0];
        uint4 *b0Store = &Bs0[store_stage * B_STAGE_ROWS][0];
        uint4 *b1Store = &Bs1[store_stage * B_STAGE_ROWS][0];

        cp_async_cg_L2_16B(aStore + (store_row * A_STAGE_COLS + store_col),
                           a_lane + kStart);
        cp_async_cg_L2_16B(
            aStore + ((store_row + 32) * A_STAGE_COLS + store_col),
            a_lane + (64 * K_VEC + kStart));

        cp_async_cg_L2_16B(b0Store + (store_row * B_STAGE_COLS + store_col),
                           b_lane + kStart);
        cp_async_cg_L2_16B(
            b0Store + ((store_row + 32) * B_STAGE_COLS + store_col),
            b_lane + (64 * K_VEC + kStart));

        cp_async_cg_L2_16B(b1Store + (store_row * B_STAGE_COLS + store_col),
                           b_lane + (128 * K_VEC + kStart));
        cp_async_cg_L2_16B(
            b1Store + ((store_row + 32) * B_STAGE_COLS + store_col),
            b_lane + (192 * K_VEC + kStart));

        cp_async_commit_group();

        // --- k-group 0 (k=0..15) ---
        // Load B regs for all n-slices (k-group 0).
#pragma unroll 1
        for (int n = 0; n < 8; ++n) {
            int const row = n * 4 + warp_offset_b + load_row_b;
            uint32_t const addr =
                b_load_base +
                static_cast<uint32_t>((row * 8 + load_col_b) * sizeof(uint4));
            ldmatrix_x2(bReg[n][0], bReg[n][1], addr);
        }

        // Stream A per m-slice to reduce live regs.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            int const row = m * 8 + warp_offset_a + load_row_a;
            uint32_t const addr =
                a_load_base +
                static_cast<uint32_t>((row * 8 + load_col_a) * sizeof(uint4));
            uint32_t a0, a1, a2, a3;
            ldmatrix_x4(a0, a1, a2, a3, addr);
#pragma unroll 1
            for (int n = 0; n < 8; ++n) {
                mma_sync_m16n8k16_row_col_f16(c[m][n][0], c[m][n][1], a0, a1, a2,
                                              a3, bReg[n][0], bReg[n][1]);
            }
        }

        // --- k-group 1 (k=16..31) ---
        // Load B regs for all n-slices (k-group 1).
#pragma unroll 1
        for (int n = 0; n < 8; ++n) {
            int const row = n * 4 + warp_offset_b + load_row_b;
            uint32_t const addr =
                b_load_base + static_cast<uint32_t>(
                                  (row * 8 + (load_col_b ^ 2)) * sizeof(uint4));
            ldmatrix_x2(bReg[n][0], bReg[n][1], addr);
        }

#pragma unroll
        for (int m = 0; m < 4; ++m) {
            int const row = m * 8 + warp_offset_a + load_row_a;
            uint32_t const addr =
                a_load_base + static_cast<uint32_t>(
                                  (row * 8 + (load_col_a ^ 2)) * sizeof(uint4));
            uint32_t a0, a1, a2, a3;
            ldmatrix_x4(a0, a1, a2, a3, addr);
#pragma unroll 1
            for (int n = 0; n < 8; ++n) {
                mma_sync_m16n8k16_row_col_f16(c[m][n][0], c[m][n][1], a0, a1, a2,
                                              a3, bReg[n][0], bReg[n][1]);
            }
        }
    }

    int const group_id = lane_id >> 2;
    int const tid_in_group = lane_id & 3;
    int const c_row0 = group_id;
    int const c_row1 = group_id + 8;
    int const c_col0 = tid_in_group * 2;

#pragma unroll
    for (int m = 0; m < 4; ++m) {
        int const base_m = block_m + warp_row * 64 + m * 16;
#pragma unroll 1
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

// 128x256 tile using 16 warps (2x8), but keeps the *per-warp* compute the same
// as v18 (64x32/warp). This avoids the huge accumulator register pressure of
// the 64x64/warp kernels while still increasing work per CTA.
//
// Copy strategy:
// - Reuse the proven v18/v25 permuted store mapping by letting only the first
//   8 warps (256 threads) perform the gmem->smem cp.async copies for A and both
//   B segments.
// - All 16 warps participate in compute.
__launch_bounds__(512)
__global__ void gemm_tc_mma_permuted_bcol_cpasync2_fp16acc_128x256x32_warp2x8(
    const __half *__restrict__ A, const __half *__restrict__ B_col,
    __half *__restrict__ C) {
    constexpr int N_STAGES = 2;

    constexpr int TILE_M = 128;
    constexpr int TILE_N = 256;
    constexpr int TILE_K = 32; // half
    constexpr int K_VEC = kK / 8; // 8 half per uint4
    constexpr int K_BLOCKS = kK / TILE_K;
    constexpr int VEC_PER_KBLOCK = TILE_K / 8; // 4

    constexpr int STAGE_ROWS = 64;
    constexpr int STAGE_COLS = 8;
    constexpr int STAGE_BYTES = STAGE_ROWS * STAGE_COLS * sizeof(uint4); // 8192

    __shared__ __align__(16) uint4 As[N_STAGES * STAGE_ROWS][STAGE_COLS];
    __shared__ __align__(16) uint4 Bs0[N_STAGES * STAGE_ROWS][STAGE_COLS];
    __shared__ __align__(16) uint4 Bs1[N_STAGES * STAGE_ROWS][STAGE_COLS];

    int const thread_id = static_cast<int>(threadIdx.x);
    int const warp_id = thread_id >> 5; // 0..15
    int const lane_id = thread_id & 31;

    // Warp layout: 2 (M) x 8 (N).
    int const warp_row = warp_id >> 3; // /8 -> {0,1}
    int const warp_col = warp_id & 7;  // %8 -> {0..7}

    int const warp_offset_a = 32 * warp_row;
    int const warp_b_segment = warp_col >> 2; // 0:[0..127], 1:[128..255]
    int const warp_col_in_seg = warp_col & 3; // 0..3 within the segment
    int const warp_offset_b = 16 * warp_col_in_seg;

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

    // Load indices (per lane), identical to v18.
    int const load_row_a = (lane_id & 15) >> 1; // 0..7
    int const load_col_a =
        ((lane_id >> 4) + 4 * (lane_id & 1)) ^ (load_row_a & 3);
    int const load_row_b = (lane_id & 7) >> 1; // 0..3
    int const load_col_b =
        ((lane_id >> 3) + 4 * (lane_id & 1)) ^ (load_row_b & 3);

    uint32_t const As_base = __cvta_generic_to_shared(&As[0][0]);
    uint32_t const Bs0_base = __cvta_generic_to_shared(&Bs0[0][0]);
    uint32_t const Bs1_base = __cvta_generic_to_shared(&Bs1[0][0]);

    // Accumulators for 64x32 output per warp:
    // m in 0..3 (4*16=64), n in 0..3 (4*8=32)
    uint32_t aReg[4][8];
    uint32_t bReg[4][4];
    uint32_t c[4][4][2];
#pragma unroll
    for (int m = 0; m < 4; ++m) {
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            c[m][n][0] = 0u;
            c[m][n][1] = 0u;
        }
    }

    // Only the first 8 warps do the cp.async copies (reusing v18's mapping).
    int const copy_warp_id = warp_id; // 0..15
    int const copy_lane_id = lane_id;
    int const do_copy = (copy_warp_id < 8);

    uint4 const *a_lane = nullptr;
    uint4 const *b_lane = nullptr;
    int store_row = 0;
    int store_col = 0;
    if (do_copy) {
        uint4 const *globalA =
            reinterpret_cast<uint4 const *>(A + block_m * kK);
        uint4 const *globalB =
            reinterpret_cast<uint4 const *>(B_col + block_n * kK);

        store_row = copy_warp_id * 4 + (copy_lane_id >> 3); // 0..31
        store_col = (copy_lane_id & 7) ^ (copy_lane_id >> 3); // 0..7

        a_lane = globalA + (copy_warp_id * 8 + (copy_lane_id >> 2)) * K_VEC +
                 (copy_lane_id & 3);
        b_lane = globalB + (copy_warp_id * 8 + (copy_lane_id >> 2)) * K_VEC +
                 (copy_lane_id & 3);

        // Prefetch first K block into stage 0.
        {
            uint4 *aStore = &As[0][0];
            uint4 *b0Store = &Bs0[0][0];
            uint4 *b1Store = &Bs1[0][0];

            cp_async_cg_L2_16B(aStore + (store_row * STAGE_COLS + store_col),
                               a_lane + 0);
            cp_async_cg_L2_16B(
                aStore + ((store_row + 32) * STAGE_COLS + store_col),
                a_lane + (64 * K_VEC + 0));

            // B segment 0.
            cp_async_cg_L2_16B(b0Store + (store_row * STAGE_COLS + store_col),
                               b_lane + 0);
            cp_async_cg_L2_16B(
                b0Store + ((store_row + 32) * STAGE_COLS + store_col),
                b_lane + (64 * K_VEC + 0));

            // B segment 1.
            cp_async_cg_L2_16B(b1Store + (store_row * STAGE_COLS + store_col),
                               b_lane + (128 * K_VEC + 0));
            cp_async_cg_L2_16B(
                b1Store + ((store_row + 32) * STAGE_COLS + store_col),
                b_lane + (192 * K_VEC + 0));

            cp_async_commit_group();
        }
    }

    for (int k_iter = 0; k_iter < K_BLOCKS; ++k_iter) {
        int const load_stage = k_iter & 1;
        int const store_stage = load_stage ^ 1;

        uint32_t const a_load_base =
            As_base + static_cast<uint32_t>(load_stage * STAGE_BYTES);
        uint32_t const b0_load_base =
            Bs0_base + static_cast<uint32_t>(load_stage * STAGE_BYTES);
        uint32_t const b1_load_base =
            Bs1_base + static_cast<uint32_t>(load_stage * STAGE_BYTES);
        uint32_t const b_load_base = (warp_b_segment == 0) ? b0_load_base
                                                           : b1_load_base;

        cp_async_wait_group<0>();
        __syncthreads();

        // Load A regs (both k-groups).
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            int const row = m * 8 + warp_offset_a + load_row_a;
            uint32_t const addr0 =
                a_load_base +
                static_cast<uint32_t>((row * 8 + load_col_a) * sizeof(uint4));
            uint32_t const addr1 =
                a_load_base + static_cast<uint32_t>(
                                  (row * 8 + (load_col_a ^ 2)) * sizeof(uint4));
            ldmatrix_x4(aReg[m][0], aReg[m][1], aReg[m][2], aReg[m][3], addr0);
            ldmatrix_x4(aReg[m][4], aReg[m][5], aReg[m][6], aReg[m][7], addr1);
        }

        // Load B regs (both k-groups).
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            int const row = n * 4 + warp_offset_b + load_row_b;
            uint32_t const addr0 =
                b_load_base +
                static_cast<uint32_t>((row * 8 + load_col_b) * sizeof(uint4));
            uint32_t const addr1 =
                b_load_base + static_cast<uint32_t>(
                                  (row * 8 + (load_col_b ^ 2)) * sizeof(uint4));
            ldmatrix_x2(bReg[n][0], bReg[n][1], addr0);
            ldmatrix_x2(bReg[n][2], bReg[n][3], addr1);
        }

        // Start next async copy (copy warps only).
        if (do_copy) {
            int kStart = (k_iter + 1) * VEC_PER_KBLOCK;
            kStart = (kStart > (K_VEC - VEC_PER_KBLOCK)) ? (K_VEC - VEC_PER_KBLOCK)
                                                         : kStart;
            uint4 *aStore = &As[store_stage * STAGE_ROWS][0];
            uint4 *b0Store = &Bs0[store_stage * STAGE_ROWS][0];
            uint4 *b1Store = &Bs1[store_stage * STAGE_ROWS][0];

            cp_async_cg_L2_16B(aStore + (store_row * STAGE_COLS + store_col),
                               a_lane + kStart);
            cp_async_cg_L2_16B(
                aStore + ((store_row + 32) * STAGE_COLS + store_col),
                a_lane + (64 * K_VEC + kStart));

            cp_async_cg_L2_16B(b0Store + (store_row * STAGE_COLS + store_col),
                               b_lane + kStart);
            cp_async_cg_L2_16B(
                b0Store + ((store_row + 32) * STAGE_COLS + store_col),
                b_lane + (64 * K_VEC + kStart));

            cp_async_cg_L2_16B(b1Store + (store_row * STAGE_COLS + store_col),
                               b_lane + (128 * K_VEC + kStart));
            cp_async_cg_L2_16B(
                b1Store + ((store_row + 32) * STAGE_COLS + store_col),
                b_lane + (192 * K_VEC + kStart));

            cp_async_commit_group();
        }

        // MMA.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
#pragma unroll
            for (int n = 0; n < 4; ++n) {
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n][0], c[m][n][1], aReg[m][0], aReg[m][1], aReg[m][2],
                    aReg[m][3], bReg[n][0], bReg[n][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n][0], c[m][n][1], aReg[m][4], aReg[m][5], aReg[m][6],
                    aReg[m][7], bReg[n][2], bReg[n][3]);
            }
        }
    }

    // Store.
    int const group_id = lane_id >> 2;
    int const tid_in_group = lane_id & 3;
    int const c_row0 = group_id;
    int const c_row1 = group_id + 8;
    int const c_col0 = tid_in_group * 2;

#pragma unroll
    for (int m = 0; m < 4; ++m) {
        int const base_m = block_m + warp_row * 64 + m * 16;
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            int const base_n = block_n + warp_col * 32 + n * 8;
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

// 128x256 tile using 16 warps (2x8) with a *balanced* copy strategy.
//
// Motivation:
// - v26 reused v18's "8 warps copy, 16 warps compute" approach. Nsight Compute
//   showed this creates heavy barrier stall: compute warps often wait for copy
//   warps at the full CTA `__syncthreads()`.
// - For this 128x256 tile, we can instead let **all 16 warps participate in
//   cp.async**, and we can cover the full 128 rows/cols without the `+32` /
//   `+64*K_VEC` "top/bottom" trick used in v18:
//   - `warp_id` spans 0..15 -> `warp_id*8 + (lane_id>>2)` spans 0..127.
//   - `store_row = warp_id*4 + (lane_id>>3)` spans 0..63 and naturally covers
//     the full permuted 64-row tile.
//
// Expected benefits:
// - Better load balance across warps -> reduced barrier stall.
// - Lower per-thread copy overhead (3 cp.async per thread: A + B0 + B1).
__launch_bounds__(512)
__global__ void
gemm_tc_mma_permuted_bcol_cpasync2_fp16acc_128x256x32_warp2x8_allcopy(
    const __half *__restrict__ A, const __half *__restrict__ B_col,
    __half *__restrict__ C) {
    constexpr int N_STAGES = 2;

    constexpr int TILE_M = 128;
    constexpr int TILE_N = 256;
    constexpr int TILE_K = 32; // half
    constexpr int K_VEC = kK / 8; // 8 half per uint4
    constexpr int K_BLOCKS = kK / TILE_K;
    constexpr int VEC_PER_KBLOCK = TILE_K / 8; // 4

    constexpr int STAGE_ROWS = 64;
    constexpr int STAGE_COLS = 8;
    constexpr int STAGE_BYTES = STAGE_ROWS * STAGE_COLS * sizeof(uint4); // 8192

    __shared__ __align__(16) uint4 As[N_STAGES * STAGE_ROWS][STAGE_COLS];
    __shared__ __align__(16) uint4 Bs0[N_STAGES * STAGE_ROWS][STAGE_COLS];
    __shared__ __align__(16) uint4 Bs1[N_STAGES * STAGE_ROWS][STAGE_COLS];

    int const thread_id = static_cast<int>(threadIdx.x);
    int const warp_id = thread_id >> 5; // 0..15
    int const lane_id = thread_id & 31;

    // Warp layout: 2 (M) x 8 (N).
    int const warp_row = warp_id >> 3; // /8 -> {0,1}
    int const warp_col = warp_id & 7;  // %8 -> {0..7}

    int const warp_offset_a = 32 * warp_row;
    int const warp_b_segment = warp_col >> 2; // 0:[0..127], 1:[128..255]
    int const warp_col_in_seg = warp_col & 3; // 0..3 within the segment
    int const warp_offset_b = 16 * warp_col_in_seg;

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

    // Load indices (per lane), identical to v18/v26.
    int const load_row_a = (lane_id & 15) >> 1; // 0..7
    int const load_col_a =
        ((lane_id >> 4) + 4 * (lane_id & 1)) ^ (load_row_a & 3);
    int const load_row_b = (lane_id & 7) >> 1; // 0..3
    int const load_col_b =
        ((lane_id >> 3) + 4 * (lane_id & 1)) ^ (load_row_b & 3);

    uint32_t const As_base = __cvta_generic_to_shared(&As[0][0]);
    uint32_t const Bs0_base = __cvta_generic_to_shared(&Bs0[0][0]);
    uint32_t const Bs1_base = __cvta_generic_to_shared(&Bs1[0][0]);

    // Accumulators for 64x32 output per warp:
    // m in 0..3 (4*16=64), n in 0..3 (4*8=32)
    uint32_t aReg[4][8];
    uint32_t bReg[4][4];
    uint32_t c[4][4][2];
#pragma unroll
    for (int m = 0; m < 4; ++m) {
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            c[m][n][0] = 0u;
            c[m][n][1] = 0u;
        }
    }

    // Copy mapping: fully covers the permuted 64x8 uint4 tiles with 16 warps.
    // - store_row: 0..63 (64 rows)
    // - store_col: 0..7  (8 cols)
    int const store_row = warp_id * 4 + (lane_id >> 3);
    int const store_col = (lane_id & 7) ^ (lane_id >> 3);

    uint4 const *globalA =
        reinterpret_cast<uint4 const *>(A + block_m * kK);
    uint4 const *globalB =
        reinterpret_cast<uint4 const *>(B_col + block_n * kK);

    // Vectorized along K: each lane selects one of the 4 uint4 vectors in a
    // 32-half K tile (lane_id & 3), and the warp_id spans the full 0..127 rows
    // (or cols for B) without an extra "+64" half-tile.
    uint4 const *a_lane =
        globalA + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);
    uint4 const *b_lane =
        globalB + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);

    // Prefetch stage 0 (kStart=0).
    {
        uint4 *aStore = &As[0][0];
        uint4 *b0Store = &Bs0[0][0];
        uint4 *b1Store = &Bs1[0][0];

        cp_async_cg_L2_16B(aStore + (store_row * STAGE_COLS + store_col),
                           a_lane + 0);
        // B segment 0: columns [0..127]
        cp_async_cg_L2_16B(b0Store + (store_row * STAGE_COLS + store_col),
                           b_lane + 0);
        // B segment 1: columns [128..255]
        cp_async_cg_L2_16B(b1Store + (store_row * STAGE_COLS + store_col),
                           b_lane + (128 * K_VEC + 0));
        cp_async_commit_group();
    }

    for (int k_iter = 0; k_iter < K_BLOCKS; ++k_iter) {
        int const load_stage = k_iter & 1;
        int const store_stage = load_stage ^ 1;

        uint32_t const a_load_base =
            As_base + static_cast<uint32_t>(load_stage * STAGE_BYTES);
        uint32_t const b0_load_base =
            Bs0_base + static_cast<uint32_t>(load_stage * STAGE_BYTES);
        uint32_t const b1_load_base =
            Bs1_base + static_cast<uint32_t>(load_stage * STAGE_BYTES);
        uint32_t const b_load_base = (warp_b_segment == 0) ? b0_load_base
                                                           : b1_load_base;

        cp_async_wait_group<0>();
        __syncthreads();

        // Start next async copy as early as possible (skip at tail).
        if (k_iter + 1 < K_BLOCKS) {
            int const kStart = (k_iter + 1) * VEC_PER_KBLOCK;
            uint4 *aStore = &As[store_stage * STAGE_ROWS][0];
            uint4 *b0Store = &Bs0[store_stage * STAGE_ROWS][0];
            uint4 *b1Store = &Bs1[store_stage * STAGE_ROWS][0];

            cp_async_cg_L2_16B(aStore + (store_row * STAGE_COLS + store_col),
                               a_lane + kStart);
            cp_async_cg_L2_16B(
                b0Store + (store_row * STAGE_COLS + store_col), b_lane + kStart);
            cp_async_cg_L2_16B(b1Store + (store_row * STAGE_COLS + store_col),
                               b_lane + (128 * K_VEC + kStart));
            cp_async_commit_group();
        }

        // Load A regs (both k-groups).
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            int const row = m * 8 + warp_offset_a + load_row_a;
            uint32_t const addr0 =
                a_load_base +
                static_cast<uint32_t>((row * 8 + load_col_a) * sizeof(uint4));
            uint32_t const addr1 =
                a_load_base + static_cast<uint32_t>(
                                  (row * 8 + (load_col_a ^ 2)) * sizeof(uint4));
            ldmatrix_x4(aReg[m][0], aReg[m][1], aReg[m][2], aReg[m][3], addr0);
            ldmatrix_x4(aReg[m][4], aReg[m][5], aReg[m][6], aReg[m][7], addr1);
        }

        // Load B regs (both k-groups).
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            int const row = n * 4 + warp_offset_b + load_row_b;
            uint32_t const addr0 =
                b_load_base +
                static_cast<uint32_t>((row * 8 + load_col_b) * sizeof(uint4));
            uint32_t const addr1 =
                b_load_base + static_cast<uint32_t>(
                                  (row * 8 + (load_col_b ^ 2)) * sizeof(uint4));
            ldmatrix_x2(bReg[n][0], bReg[n][1], addr0);
            ldmatrix_x2(bReg[n][2], bReg[n][3], addr1);
        }

        // MMA.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
#pragma unroll
            for (int n = 0; n < 4; ++n) {
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n][0], c[m][n][1], aReg[m][0], aReg[m][1], aReg[m][2],
                    aReg[m][3], bReg[n][0], bReg[n][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n][0], c[m][n][1], aReg[m][4], aReg[m][5], aReg[m][6],
                    aReg[m][7], bReg[n][2], bReg[n][3]);
            }
        }
    }

    // Store.
    int const group_id = lane_id >> 2;
    int const tid_in_group = lane_id & 3;
    int const c_row0 = group_id;
    int const c_row1 = group_id + 8;
    int const c_col0 = tid_in_group * 2;

#pragma unroll
    for (int m = 0; m < 4; ++m) {
        int const base_m = block_m + warp_row * 64 + m * 16;
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            int const base_n = block_n + warp_col * 32 + n * 8;
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

// 128x128 tile, but with TILE_K=64 (two 32-half segments per iteration).
//
// Motivation:
// - v17/v18 are limited by barrier + MIO overhead once global latency is hidden.
// - Increasing K tile reduces the number of stage switches/barriers by 2x and
//   increases compute per sync point, which can improve Tensor Core utilization.
//
// Implementation notes:
// - We keep the proven "permuted" shared layout for a 128x32 half tile, and
//   represent TILE_K=64 as **two** consecutive 32-half segments in shared.
// - This increases static shared memory to ~64KB and therefore requires shared
//   memory opt-in at launch time (see host-side cudaFuncSetAttribute).
__launch_bounds__(256)
__global__ void gemm_tc_mma_permuted_bcol_cpasync2_fp16acc_128x128x64_warp2x4(
    const __half *__restrict__ A, const __half *__restrict__ B_col,
    __half *__restrict__ C) {
    constexpr int N_STAGES = 2;
    constexpr int K_SEGS = 2; // 2 * 32-half segments per 64-half iteration

    constexpr int TILE_M = 128;
    constexpr int TILE_N = 128;
    constexpr int TILE_K = 64; // half
    constexpr int K_VEC = kK / 8; // 8 half per uint4
    constexpr int K_BLOCKS = kK / TILE_K;
    constexpr int VEC_PER_KBLOCK = TILE_K / 8; // 8
    constexpr int VEC_PER_SEG = 32 / 8;        // 4

    constexpr int STAGE_ROWS = 64;
    constexpr int STAGE_COLS = 8;
    constexpr int SEG_BYTES = STAGE_ROWS * STAGE_COLS * sizeof(uint4); // 8192

    __shared__ __align__(16) uint4 As[N_STAGES * K_SEGS * STAGE_ROWS][STAGE_COLS];
    __shared__ __align__(16) uint4 Bs[N_STAGES * K_SEGS * STAGE_ROWS][STAGE_COLS];

    int const thread_id = static_cast<int>(threadIdx.x);
    int const warp_id = thread_id >> 5;
    int const lane_id = thread_id & 31;

    // Warp layout: 2 x 4 (same as v18).
    int const warp_row = warp_id >> 2;
    int const warp_col = warp_id & 3;
    int const warp_offset_a = 32 * warp_row;
    int const warp_offset_b = 16 * warp_col;

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

    uint4 const *globalA =
        reinterpret_cast<uint4 const *>(A + block_m * kK);
    uint4 const *globalB =
        reinterpret_cast<uint4 const *>(B_col + block_n * kK);

    int const store_row = warp_id * 4 + (lane_id >> 3); // 0..31
    int const store_col = (lane_id & 7) ^ (lane_id >> 3); // 0..7

    int const load_row_a = (lane_id & 15) >> 1; // 0..7
    int const load_col_a =
        ((lane_id >> 4) + 4 * (lane_id & 1)) ^ (load_row_a & 3);
    int const load_row_b = (lane_id & 7) >> 1; // 0..3
    int const load_col_b =
        ((lane_id >> 3) + 4 * (lane_id & 1)) ^ (load_row_b & 3);

    uint4 const *a_lane =
        globalA + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);
    uint4 const *b_lane =
        globalB + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);

    uint32_t const As_base = __cvta_generic_to_shared(&As[0][0]);
    uint32_t const Bs_base = __cvta_generic_to_shared(&Bs[0][0]);

    uint32_t aReg[4][8];
    uint32_t bReg[4][4];
    uint32_t c[4][4][2];
#pragma unroll
    for (int m = 0; m < 4; ++m) {
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            c[m][n][0] = 0u;
            c[m][n][1] = 0u;
        }
    }

    // Prefetch first K block (64-half) into stage 0 (two 32-half segments).
    {
        uint4 *aStore = &As[0][0];
        uint4 *bStore = &Bs[0][0];

        // Segment 0: kStart = 0..3
        cp_async_cg_L2_16B(
            aStore + ((0 * STAGE_ROWS + store_row) * STAGE_COLS + store_col),
            a_lane + 0);
        cp_async_cg_L2_16B(
            aStore +
                ((0 * STAGE_ROWS + (store_row + 32)) * STAGE_COLS + store_col),
            a_lane + (64 * K_VEC + 0));
        cp_async_cg_L2_16B(
            bStore + ((0 * STAGE_ROWS + store_row) * STAGE_COLS + store_col),
            b_lane + 0);
        cp_async_cg_L2_16B(
            bStore +
                ((0 * STAGE_ROWS + (store_row + 32)) * STAGE_COLS + store_col),
            b_lane + (64 * K_VEC + 0));

        // Segment 1: kStart = 4..7
        cp_async_cg_L2_16B(
            aStore + ((1 * STAGE_ROWS + store_row) * STAGE_COLS + store_col),
            a_lane + VEC_PER_SEG);
        cp_async_cg_L2_16B(
            aStore +
                ((1 * STAGE_ROWS + (store_row + 32)) * STAGE_COLS + store_col),
            a_lane + (64 * K_VEC + VEC_PER_SEG));
        cp_async_cg_L2_16B(
            bStore + ((1 * STAGE_ROWS + store_row) * STAGE_COLS + store_col),
            b_lane + VEC_PER_SEG);
        cp_async_cg_L2_16B(
            bStore +
                ((1 * STAGE_ROWS + (store_row + 32)) * STAGE_COLS + store_col),
            b_lane + (64 * K_VEC + VEC_PER_SEG));

        cp_async_commit_group();
    }

    for (int k_iter = 0; k_iter < K_BLOCKS; ++k_iter) {
        int const load_stage = k_iter & 1;
        int const store_stage = load_stage ^ 1;

        cp_async_wait_group<0>();
        __syncthreads();

        // Prefetch next K block into the other stage (clamp near end).
        int kStart = (k_iter + 1) * VEC_PER_KBLOCK;
        kStart = (kStart > (K_VEC - VEC_PER_KBLOCK)) ? (K_VEC - VEC_PER_KBLOCK)
                                                     : kStart;
        {
            uint4 *aStore = &As[(store_stage * K_SEGS) * STAGE_ROWS][0];
            uint4 *bStore = &Bs[(store_stage * K_SEGS) * STAGE_ROWS][0];

            cp_async_cg_L2_16B(
                aStore + ((0 * STAGE_ROWS + store_row) * STAGE_COLS + store_col),
                a_lane + kStart);
            cp_async_cg_L2_16B(
                aStore + ((0 * STAGE_ROWS + (store_row + 32)) * STAGE_COLS +
                          store_col),
                a_lane + (64 * K_VEC + kStart));
            cp_async_cg_L2_16B(
                bStore + ((0 * STAGE_ROWS + store_row) * STAGE_COLS + store_col),
                b_lane + kStart);
            cp_async_cg_L2_16B(
                bStore + ((0 * STAGE_ROWS + (store_row + 32)) * STAGE_COLS +
                          store_col),
                b_lane + (64 * K_VEC + kStart));

            cp_async_cg_L2_16B(
                aStore + ((1 * STAGE_ROWS + store_row) * STAGE_COLS + store_col),
                a_lane + (kStart + VEC_PER_SEG));
            cp_async_cg_L2_16B(
                aStore + ((1 * STAGE_ROWS + (store_row + 32)) * STAGE_COLS +
                          store_col),
                a_lane + (64 * K_VEC + kStart + VEC_PER_SEG));
            cp_async_cg_L2_16B(
                bStore + ((1 * STAGE_ROWS + store_row) * STAGE_COLS + store_col),
                b_lane + (kStart + VEC_PER_SEG));
            cp_async_cg_L2_16B(
                bStore + ((1 * STAGE_ROWS + (store_row + 32)) * STAGE_COLS +
                          store_col),
                b_lane + (64 * K_VEC + kStart + VEC_PER_SEG));

            cp_async_commit_group();
        }

        // Compute on both 32-half segments within the loaded stage.
        uint32_t const stage_base =
            static_cast<uint32_t>((load_stage * K_SEGS) * SEG_BYTES);

#pragma unroll
        for (int seg = 0; seg < K_SEGS; ++seg) {
            uint32_t const a_load_base = As_base + stage_base +
                                         static_cast<uint32_t>(seg * SEG_BYTES);
            uint32_t const b_load_base = Bs_base + stage_base +
                                         static_cast<uint32_t>(seg * SEG_BYTES);

#pragma unroll
            for (int m = 0; m < 4; ++m) {
                int const row = m * 8 + warp_offset_a + load_row_a;
                uint32_t const addr0 =
                    a_load_base + static_cast<uint32_t>(
                                      (row * 8 + load_col_a) * sizeof(uint4));
                uint32_t const addr1 =
                    a_load_base +
                    static_cast<uint32_t>(
                        (row * 8 + (load_col_a ^ 2)) * sizeof(uint4));
                ldmatrix_x4(aReg[m][0], aReg[m][1], aReg[m][2], aReg[m][3], addr0);
                ldmatrix_x4(aReg[m][4], aReg[m][5], aReg[m][6], aReg[m][7], addr1);
            }

#pragma unroll
            for (int n = 0; n < 4; ++n) {
                int const row = n * 4 + warp_offset_b + load_row_b;
                uint32_t const addr0 =
                    b_load_base + static_cast<uint32_t>(
                                      (row * 8 + load_col_b) * sizeof(uint4));
                uint32_t const addr1 =
                    b_load_base +
                    static_cast<uint32_t>(
                        (row * 8 + (load_col_b ^ 2)) * sizeof(uint4));
                ldmatrix_x2(bReg[n][0], bReg[n][1], addr0);
                ldmatrix_x2(bReg[n][2], bReg[n][3], addr1);
            }

#pragma unroll
            for (int m = 0; m < 4; ++m) {
#pragma unroll
                for (int n = 0; n < 4; ++n) {
                    mma_sync_m16n8k16_row_col_f16(
                        c[m][n][0], c[m][n][1], aReg[m][0], aReg[m][1], aReg[m][2],
                        aReg[m][3], bReg[n][0], bReg[n][1]);
                    mma_sync_m16n8k16_row_col_f16(
                        c[m][n][0], c[m][n][1], aReg[m][4], aReg[m][5], aReg[m][6],
                        aReg[m][7], bReg[n][2], bReg[n][3]);
                }
            }
        }
    }

    int const group_id = lane_id >> 2;
    int const tid_in_group = lane_id & 3;
    int const c_row0 = group_id;
    int const c_row1 = group_id + 8;
    int const c_col0 = tid_in_group * 2;

#pragma unroll
    for (int m = 0; m < 4; ++m) {
        int const base_m = block_m + warp_row * 64 + m * 16;
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            int const base_n = block_n + warp_col * 32 + n * 8;
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

// Variant of the cp.async permuted kernel that tries to reduce register pressure
// by *streaming* A fragments (load one m-slice at a time) while keeping all B
// fragments resident for the K-block.
//
// Rationale:
// - For FP16 accumulate, peak compute is high; on sm_89 it may be beneficial to
//   trade some extra ldmatrix/scheduling flexibility for higher occupancy.
// - Nsight Compute showed cpasync2 version limited to 2 blocks/SM due to regs.
//   Reducing per-thread regs may unlock 3 blocks/SM (24 warps), improving
//   Tensor Core utilization.
template <int N_STAGES>
__launch_bounds__(256)
__global__ void gemm_tc_mma_permuted_bcol_cpasync_fp16acc_streamA_128x128x32_warp2x4(
    const __half *__restrict__ A, const __half *__restrict__ B_col,
    __half *__restrict__ C) {
    static_assert(N_STAGES >= 2, "cp.async pipeline needs at least 2 stages");

    constexpr int TILE_M = 128;
    constexpr int TILE_N = 128;
    constexpr int TILE_K = 32; // half
    constexpr int K_VEC = kK / 8; // 8 half per uint4
    constexpr int K_BLOCKS = kK / TILE_K;
    constexpr int VEC_PER_KBLOCK = TILE_K / 8; // 4
    constexpr int STAGE_ROWS = 64;
    constexpr int STAGE_COLS = 8;
    constexpr int STAGE_BYTES = STAGE_ROWS * STAGE_COLS * sizeof(uint4); // 8192

    __shared__ __align__(16) uint4 As[N_STAGES * STAGE_ROWS][STAGE_COLS];
    __shared__ __align__(16) uint4 Bs[N_STAGES * STAGE_ROWS][STAGE_COLS];

    int const thread_id = static_cast<int>(threadIdx.x);
    int const warp_id = thread_id >> 5;
    int const lane_id = thread_id & 31;

    int const warp_row = warp_id >> 2;
    int const warp_col = warp_id & 3;
    int const warp_offset_a = 32 * warp_row;
    int const warp_offset_b = 16 * warp_col;

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

    uint4 const *globalA =
        reinterpret_cast<uint4 const *>(A + block_m * kK);
    uint4 const *globalB =
        reinterpret_cast<uint4 const *>(B_col + block_n * kK);

    int const store_row = warp_id * 4 + (lane_id >> 3); // 0..31
    int const store_col = (lane_id & 7) ^ (lane_id >> 3); // 0..7

    int const load_row_a = (lane_id & 15) >> 1; // 0..7
    int const load_col_a =
        ((lane_id >> 4) + 4 * (lane_id & 1)) ^ (load_row_a & 3);
    int const load_row_b = (lane_id & 7) >> 1; // 0..3
    int const load_col_b =
        ((lane_id >> 3) + 4 * (lane_id & 1)) ^ (load_row_b & 3);

    uint4 const *a_lane =
        globalA + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);
    uint4 const *b_lane =
        globalB + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);

    uint32_t const As_base = __cvta_generic_to_shared(&As[0][0]);
    uint32_t const Bs_base = __cvta_generic_to_shared(&Bs[0][0]);

    // Keep B regs for all n-groups, but stream A per m.
    uint32_t bReg[4][4];
    uint32_t c[4][4][2];
#pragma unroll
    for (int m = 0; m < 4; ++m) {
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            c[m][n][0] = 0u;
            c[m][n][1] = 0u;
        }
    }

#pragma unroll
    for (int stage = 0; stage < (N_STAGES - 1); ++stage) {
        int const kStart = stage * VEC_PER_KBLOCK;
        uint4 *aStore = &As[stage * STAGE_ROWS][0];
        uint4 *bStore = &Bs[stage * STAGE_ROWS][0];
        cp_async_cg_L2_16B(aStore + (store_row * STAGE_COLS + store_col),
                           a_lane + kStart);
        cp_async_cg_L2_16B(aStore + ((store_row + 32) * STAGE_COLS + store_col),
                           a_lane + (64 * K_VEC + kStart));
        cp_async_cg_L2_16B(bStore + (store_row * STAGE_COLS + store_col),
                           b_lane + kStart);
        cp_async_cg_L2_16B(bStore + ((store_row + 32) * STAGE_COLS + store_col),
                           b_lane + (64 * K_VEC + kStart));
        cp_async_commit_group();
    }

    for (int k_iter = 0; k_iter < K_BLOCKS; ++k_iter) {
        int const load_stage = k_iter % N_STAGES;
        int const store_stage = (k_iter + (N_STAGES - 1)) % N_STAGES;

        uint32_t const a_load_base =
            As_base + static_cast<uint32_t>(load_stage * STAGE_BYTES);
        uint32_t const b_load_base =
            Bs_base + static_cast<uint32_t>(load_stage * STAGE_BYTES);

        cp_async_wait_group<N_STAGES - 2>();
        __syncthreads();

        // Load B fragments once (for all n).
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            int const row = n * 4 + warp_offset_b + load_row_b;
            uint32_t const addr0 =
                b_load_base +
                static_cast<uint32_t>((row * 8 + load_col_b) * sizeof(uint4));
            uint32_t const addr1 =
                b_load_base + static_cast<uint32_t>(
                                  (row * 8 + (load_col_b ^ 2)) * sizeof(uint4));
            ldmatrix_x2(bReg[n][0], bReg[n][1], addr0);
            ldmatrix_x2(bReg[n][2], bReg[n][3], addr1);
        }

        // Start next async copy as early as possible.
        int kStart = (k_iter + (N_STAGES - 1)) * VEC_PER_KBLOCK;
        kStart = (kStart > (K_VEC - VEC_PER_KBLOCK)) ? (K_VEC - VEC_PER_KBLOCK)
                                                     : kStart;
        uint4 *aStore = &As[store_stage * STAGE_ROWS][0];
        uint4 *bStore = &Bs[store_stage * STAGE_ROWS][0];
        cp_async_cg_L2_16B(aStore + (store_row * STAGE_COLS + store_col),
                           a_lane + kStart);
        cp_async_cg_L2_16B(aStore + ((store_row + 32) * STAGE_COLS + store_col),
                           a_lane + (64 * K_VEC + kStart));
        cp_async_cg_L2_16B(bStore + (store_row * STAGE_COLS + store_col),
                           b_lane + kStart);
        cp_async_cg_L2_16B(bStore + ((store_row + 32) * STAGE_COLS + store_col),
                           b_lane + (64 * K_VEC + kStart));
        cp_async_commit_group();

        // Stream A fragments: load one m-slice, compute against all n-slices.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
            int const row = m * 8 + warp_offset_a + load_row_a;
            uint32_t const addr0 =
                a_load_base +
                static_cast<uint32_t>((row * 8 + load_col_a) * sizeof(uint4));
            uint32_t const addr1 =
                a_load_base + static_cast<uint32_t>(
                                  (row * 8 + (load_col_a ^ 2)) * sizeof(uint4));

            uint32_t a0, a1, a2, a3, a4, a5, a6, a7;
            ldmatrix_x4(a0, a1, a2, a3, addr0);
            ldmatrix_x4(a4, a5, a6, a7, addr1);

#pragma unroll
            for (int n = 0; n < 4; ++n) {
                mma_sync_m16n8k16_row_col_f16(c[m][n][0], c[m][n][1], a0, a1, a2,
                                              a3, bReg[n][0], bReg[n][1]);
                mma_sync_m16n8k16_row_col_f16(c[m][n][0], c[m][n][1], a4, a5, a6,
                                              a7, bReg[n][2], bReg[n][3]);
            }
        }
    }

    int const group_id = lane_id >> 2;
    int const tid_in_group = lane_id & 3;
    int const c_row0 = group_id;
    int const c_row1 = group_id + 8;
    int const c_col0 = tid_in_group * 2;

#pragma unroll
    for (int m = 0; m < 4; ++m) {
        int const base_m = block_m + warp_row * 64 + m * 16;
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            int const base_n = block_n + warp_col * 32 + n * 8;
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

// Same algorithm as v18 (permuted layout + cp.async 2-stage), but with a tighter
// launch-bounds hint to encourage ptxas to reduce register usage and enable
// 3 CTAs/SM (24 warps) on RTX 4080.
//
// NOTE: This may introduce register spilling. It's an intentional experiment.
__launch_bounds__(256, 3)
__global__ void gemm_tc_mma_permuted_bcol_cpasync2_fp16acc_128x128x32_warp2x4_lb3(
    const __half *__restrict__ A, const __half *__restrict__ B_col,
    __half *__restrict__ C) {
    constexpr int N_STAGES = 2;

    constexpr int TILE_M = 128;
    constexpr int TILE_N = 128;
    constexpr int TILE_K = 32; // half
    constexpr int K_VEC = kK / 8; // 8 half per uint4
    constexpr int K_BLOCKS = kK / TILE_K;
    constexpr int VEC_PER_KBLOCK = TILE_K / 8; // 4
    constexpr int STAGE_ROWS = 64;
    constexpr int STAGE_COLS = 8;
    constexpr int STAGE_BYTES = STAGE_ROWS * STAGE_COLS * sizeof(uint4); // 8192

    __shared__ __align__(16) uint4 As[N_STAGES * STAGE_ROWS][STAGE_COLS];
    __shared__ __align__(16) uint4 Bs[N_STAGES * STAGE_ROWS][STAGE_COLS];

    int const thread_id = static_cast<int>(threadIdx.x);
    int const warp_id = thread_id >> 5;
    int const lane_id = thread_id & 31;

    int const warp_row = warp_id >> 2;
    int const warp_col = warp_id & 3;
    int const warp_offset_a = 32 * warp_row;
    int const warp_offset_b = 16 * warp_col;

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

    uint4 const *globalA =
        reinterpret_cast<uint4 const *>(A + block_m * kK);
    uint4 const *globalB =
        reinterpret_cast<uint4 const *>(B_col + block_n * kK);

    int const store_row = warp_id * 4 + (lane_id >> 3); // 0..31
    int const store_col = (lane_id & 7) ^ (lane_id >> 3); // 0..7

    int const load_row_a = (lane_id & 15) >> 1; // 0..7
    int const load_col_a =
        ((lane_id >> 4) + 4 * (lane_id & 1)) ^ (load_row_a & 3);
    int const load_row_b = (lane_id & 7) >> 1; // 0..3
    int const load_col_b =
        ((lane_id >> 3) + 4 * (lane_id & 1)) ^ (load_row_b & 3);

    uint4 const *a_lane =
        globalA + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);
    uint4 const *b_lane =
        globalB + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);

    uint32_t const As_base = __cvta_generic_to_shared(&As[0][0]);
    uint32_t const Bs_base = __cvta_generic_to_shared(&Bs[0][0]);

    uint32_t aReg[4][8];
    uint32_t bReg[4][4];
    uint32_t c[4][4][2];
#pragma unroll
    for (int m = 0; m < 4; ++m) {
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            c[m][n][0] = 0u;
            c[m][n][1] = 0u;
        }
    }

    // Prefetch first K block into stage 0.
    {
        uint4 *aStore = &As[0][0];
        uint4 *bStore = &Bs[0][0];
        cp_async_cg_L2_16B(aStore + (store_row * STAGE_COLS + store_col),
                           a_lane + 0);
        cp_async_cg_L2_16B(aStore + ((store_row + 32) * STAGE_COLS + store_col),
                           a_lane + (64 * K_VEC + 0));
        cp_async_cg_L2_16B(bStore + (store_row * STAGE_COLS + store_col),
                           b_lane + 0);
        cp_async_cg_L2_16B(bStore + ((store_row + 32) * STAGE_COLS + store_col),
                           b_lane + (64 * K_VEC + 0));
        cp_async_commit_group();
    }

    for (int k_iter = 0; k_iter < K_BLOCKS; ++k_iter) {
        int const load_stage = k_iter & 1;
        int const store_stage = load_stage ^ 1;

        uint32_t const a_load_base =
            As_base + static_cast<uint32_t>(load_stage * STAGE_BYTES);
        uint32_t const b_load_base =
            Bs_base + static_cast<uint32_t>(load_stage * STAGE_BYTES);

        cp_async_wait_group<0>();
        __syncthreads();

#pragma unroll
        for (int m = 0; m < 4; ++m) {
            int const row = m * 8 + warp_offset_a + load_row_a;
            uint32_t const addr0 =
                a_load_base +
                static_cast<uint32_t>((row * 8 + load_col_a) * sizeof(uint4));
            uint32_t const addr1 =
                a_load_base + static_cast<uint32_t>(
                                  (row * 8 + (load_col_a ^ 2)) * sizeof(uint4));
            ldmatrix_x4(aReg[m][0], aReg[m][1], aReg[m][2], aReg[m][3], addr0);
            ldmatrix_x4(aReg[m][4], aReg[m][5], aReg[m][6], aReg[m][7], addr1);
        }

#pragma unroll
        for (int n = 0; n < 4; ++n) {
            int const row = n * 4 + warp_offset_b + load_row_b;
            uint32_t const addr0 =
                b_load_base +
                static_cast<uint32_t>((row * 8 + load_col_b) * sizeof(uint4));
            uint32_t const addr1 =
                b_load_base + static_cast<uint32_t>(
                                  (row * 8 + (load_col_b ^ 2)) * sizeof(uint4));
            ldmatrix_x2(bReg[n][0], bReg[n][1], addr0);
            ldmatrix_x2(bReg[n][2], bReg[n][3], addr1);
        }

        // Prefetch next K block (clamp near end).
        int kStart = (k_iter + 1) * VEC_PER_KBLOCK;
        kStart = (kStart > (K_VEC - VEC_PER_KBLOCK)) ? (K_VEC - VEC_PER_KBLOCK)
                                                     : kStart;
        uint4 *aStore = &As[store_stage * STAGE_ROWS][0];
        uint4 *bStore = &Bs[store_stage * STAGE_ROWS][0];
        cp_async_cg_L2_16B(aStore + (store_row * STAGE_COLS + store_col),
                           a_lane + kStart);
        cp_async_cg_L2_16B(aStore + ((store_row + 32) * STAGE_COLS + store_col),
                           a_lane + (64 * K_VEC + kStart));
        cp_async_cg_L2_16B(bStore + (store_row * STAGE_COLS + store_col),
                           b_lane + kStart);
        cp_async_cg_L2_16B(bStore + ((store_row + 32) * STAGE_COLS + store_col),
                           b_lane + (64 * K_VEC + kStart));
        cp_async_commit_group();

#pragma unroll
        for (int m = 0; m < 4; ++m) {
#pragma unroll
            for (int n = 0; n < 4; ++n) {
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n][0], c[m][n][1], aReg[m][0], aReg[m][1], aReg[m][2],
                    aReg[m][3], bReg[n][0], bReg[n][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c[m][n][0], c[m][n][1], aReg[m][4], aReg[m][5], aReg[m][6],
                    aReg[m][7], bReg[n][2], bReg[n][3]);
            }
        }
    }

    int const group_id = lane_id >> 2;
    int const tid_in_group = lane_id & 3;
    int const c_row0 = group_id;
    int const c_row1 = group_id + 8;
    int const c_col0 = tid_in_group * 2;

#pragma unroll
    for (int m = 0; m < 4; ++m) {
        int const base_m = block_m + warp_row * 64 + m * 16;
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            int const base_n = block_n + warp_col * 32 + n * 8;
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

// Split-accumulator variant:
// - Accumulates k=0..15 into c0, k=16..31 into c1 (independent chains),
// - Adds c0+c1 at the end (half2 add) and stores.
//
// This increases accumulator registers but reduces dependency between the two
// mma instructions per K-block, and can increase ILP on Ada's Tensor Core pipe.
__launch_bounds__(256)
__global__ void
gemm_tc_mma_permuted_bcol_cpasync2_fp16acc_splitacc_128x128x32_warp2x4(
    const __half *__restrict__ A, const __half *__restrict__ B_col,
    __half *__restrict__ C) {
    constexpr int N_STAGES = 2;

    constexpr int TILE_M = 128;
    constexpr int TILE_N = 128;
    constexpr int TILE_K = 32; // half
    constexpr int K_VEC = kK / 8; // 8 half per uint4
    constexpr int K_BLOCKS = kK / TILE_K;
    constexpr int VEC_PER_KBLOCK = TILE_K / 8; // 4
    constexpr int STAGE_ROWS = 64;
    constexpr int STAGE_COLS = 8;
    constexpr int STAGE_BYTES = STAGE_ROWS * STAGE_COLS * sizeof(uint4); // 8192

    __shared__ __align__(16) uint4 As[N_STAGES * STAGE_ROWS][STAGE_COLS];
    __shared__ __align__(16) uint4 Bs[N_STAGES * STAGE_ROWS][STAGE_COLS];

    int const thread_id = static_cast<int>(threadIdx.x);
    int const warp_id = thread_id >> 5;
    int const lane_id = thread_id & 31;

    int const warp_row = warp_id >> 2;
    int const warp_col = warp_id & 3;
    int const warp_offset_a = 32 * warp_row;
    int const warp_offset_b = 16 * warp_col;

    int const block_m = static_cast<int>(blockIdx.y) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.x) * TILE_N;

    uint4 const *globalA =
        reinterpret_cast<uint4 const *>(A + block_m * kK);
    uint4 const *globalB =
        reinterpret_cast<uint4 const *>(B_col + block_n * kK);

    int const store_row = warp_id * 4 + (lane_id >> 3); // 0..31
    int const store_col = (lane_id & 7) ^ (lane_id >> 3); // 0..7

    int const load_row_a = (lane_id & 15) >> 1; // 0..7
    int const load_col_a =
        ((lane_id >> 4) + 4 * (lane_id & 1)) ^ (load_row_a & 3);
    int const load_row_b = (lane_id & 7) >> 1; // 0..3
    int const load_col_b =
        ((lane_id >> 3) + 4 * (lane_id & 1)) ^ (load_row_b & 3);

    uint4 const *a_lane =
        globalA + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);
    uint4 const *b_lane =
        globalB + (warp_id * 8 + (lane_id >> 2)) * K_VEC + (lane_id & 3);

    uint32_t const As_base = __cvta_generic_to_shared(&As[0][0]);
    uint32_t const Bs_base = __cvta_generic_to_shared(&Bs[0][0]);

    uint32_t aReg[4][8];
    uint32_t bReg[4][4];
    uint32_t c0[4][4][2];
    uint32_t c1[4][4][2];
#pragma unroll
    for (int m = 0; m < 4; ++m) {
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            c0[m][n][0] = 0u;
            c0[m][n][1] = 0u;
            c1[m][n][0] = 0u;
            c1[m][n][1] = 0u;
        }
    }

    // Prefetch first K block into stage 0.
    {
        uint4 *aStore = &As[0][0];
        uint4 *bStore = &Bs[0][0];
        cp_async_cg_L2_16B(aStore + (store_row * STAGE_COLS + store_col),
                           a_lane + 0);
        cp_async_cg_L2_16B(aStore + ((store_row + 32) * STAGE_COLS + store_col),
                           a_lane + (64 * K_VEC + 0));
        cp_async_cg_L2_16B(bStore + (store_row * STAGE_COLS + store_col),
                           b_lane + 0);
        cp_async_cg_L2_16B(bStore + ((store_row + 32) * STAGE_COLS + store_col),
                           b_lane + (64 * K_VEC + 0));
        cp_async_commit_group();
    }

    for (int k_iter = 0; k_iter < K_BLOCKS; ++k_iter) {
        int const load_stage = k_iter & 1;
        int const store_stage = load_stage ^ 1;

        uint32_t const a_load_base =
            As_base + static_cast<uint32_t>(load_stage * STAGE_BYTES);
        uint32_t const b_load_base =
            Bs_base + static_cast<uint32_t>(load_stage * STAGE_BYTES);

        cp_async_wait_group<0>();
        __syncthreads();

#pragma unroll
        for (int m = 0; m < 4; ++m) {
            int const row = m * 8 + warp_offset_a + load_row_a;
            uint32_t const addr0 =
                a_load_base +
                static_cast<uint32_t>((row * 8 + load_col_a) * sizeof(uint4));
            uint32_t const addr1 =
                a_load_base + static_cast<uint32_t>(
                                  (row * 8 + (load_col_a ^ 2)) * sizeof(uint4));
            ldmatrix_x4(aReg[m][0], aReg[m][1], aReg[m][2], aReg[m][3], addr0);
            ldmatrix_x4(aReg[m][4], aReg[m][5], aReg[m][6], aReg[m][7], addr1);
        }

#pragma unroll
        for (int n = 0; n < 4; ++n) {
            int const row = n * 4 + warp_offset_b + load_row_b;
            uint32_t const addr0 =
                b_load_base +
                static_cast<uint32_t>((row * 8 + load_col_b) * sizeof(uint4));
            uint32_t const addr1 =
                b_load_base + static_cast<uint32_t>(
                                  (row * 8 + (load_col_b ^ 2)) * sizeof(uint4));
            ldmatrix_x2(bReg[n][0], bReg[n][1], addr0);
            ldmatrix_x2(bReg[n][2], bReg[n][3], addr1);
        }

        // Prefetch next K block (clamp near end).
        int kStart = (k_iter + 1) * VEC_PER_KBLOCK;
        kStart = (kStart > (K_VEC - VEC_PER_KBLOCK)) ? (K_VEC - VEC_PER_KBLOCK)
                                                     : kStart;
        uint4 *aStore = &As[store_stage * STAGE_ROWS][0];
        uint4 *bStore = &Bs[store_stage * STAGE_ROWS][0];
        cp_async_cg_L2_16B(aStore + (store_row * STAGE_COLS + store_col),
                           a_lane + kStart);
        cp_async_cg_L2_16B(aStore + ((store_row + 32) * STAGE_COLS + store_col),
                           a_lane + (64 * K_VEC + kStart));
        cp_async_cg_L2_16B(bStore + (store_row * STAGE_COLS + store_col),
                           b_lane + kStart);
        cp_async_cg_L2_16B(bStore + ((store_row + 32) * STAGE_COLS + store_col),
                           b_lane + (64 * K_VEC + kStart));
        cp_async_commit_group();

        // MMA: k=0..15 -> c0, k=16..31 -> c1.
#pragma unroll
        for (int m = 0; m < 4; ++m) {
#pragma unroll
            for (int n = 0; n < 4; ++n) {
                mma_sync_m16n8k16_row_col_f16(
                    c0[m][n][0], c0[m][n][1], aReg[m][0], aReg[m][1], aReg[m][2],
                    aReg[m][3], bReg[n][0], bReg[n][1]);
                mma_sync_m16n8k16_row_col_f16(
                    c1[m][n][0], c1[m][n][1], aReg[m][4], aReg[m][5], aReg[m][6],
                    aReg[m][7], bReg[n][2], bReg[n][3]);
            }
        }
    }

    int const group_id = lane_id >> 2;
    int const tid_in_group = lane_id & 3;
    int const c_row0_lane = group_id;
    int const c_row1_lane = group_id + 8;
    int const c_col0_lane = tid_in_group * 2;

#pragma unroll
    for (int m = 0; m < 4; ++m) {
        int const base_m = block_m + warp_row * 64 + m * 16;
#pragma unroll
        for (int n = 0; n < 4; ++n) {
            int const base_n = block_n + warp_col * 32 + n * 8;
            int const g_row0 = base_m + c_row0_lane;
            int const g_row1 = base_m + c_row1_lane;
            int const g_col0 = base_n + c_col0_lane;

            uint32_t const out0 =
                add_rn_f16x2(c0[m][n][0], c1[m][n][0]);
            uint32_t const out1 =
                add_rn_f16x2(c0[m][n][1], c1[m][n][1]);

            uint32_t *c_ptr0 = reinterpret_cast<uint32_t *>(
                C + g_row0 * kN + g_col0);
            uint32_t *c_ptr1 = reinterpret_cast<uint32_t *>(
                C + g_row1 * kN + g_col0);
            *c_ptr0 = out0;
            *c_ptr1 = out1;
        }
    }
}

// Inline PTX MMA with a permuted (swizzled) shared-memory layout for A/B.
//
// This is an experimental attempt to reduce `ldmatrix` bank conflicts using a
// CUTLASS-inspired row-major swizzle mapping. It uses a wider shared-memory
// leading dimension for A (LD=64) even though BLOCK_K=32, allowing the swizzle
// to spread vectors across banks.
template <int BLOCK_M, int BLOCK_N, int BLOCK_K, int WARPS_M, int WARPS_N,
          int SMEM_PAD_A, int SMEM_PAD_B>
__global__ void gemm_tc_mma_smem_permuted_fp16acc(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(BLOCK_M == 128 && BLOCK_N == 128 && BLOCK_K == 32,
                  "This kernel is currently tuned for 128x128x32 tiles.");
    static_assert(WARPS_M == 4 && WARPS_N == 2, "Expected 4x2 warp grid.");
    static_assert(SMEM_PAD_A == 32, "Expected A to use LD=64 (pad=32).");
    static_assert(SMEM_PAD_B == 0, "Expected B to use LD=128 (pad=0).");

    constexpr int SMEM_A_LD = BLOCK_K + SMEM_PAD_A; // 64
    constexpr int SMEM_B_LD = BLOCK_N + SMEM_PAD_B; // 128
    static_assert((SMEM_A_LD % 8) == 0, "pad must keep ldm multiple of 8");
    static_assert((SMEM_B_LD % 8) == 0, "pad must keep ldm multiple of 8");

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

    uint32_t const shmemA_base = __cvta_generic_to_shared(shmemA);
    uint32_t const shmemB_base = __cvta_generic_to_shared(shmemB);

    int const warp_m = warp_id % WARPS_M; // 0..3
    int const warp_n = warp_id / WARPS_M; // 0..1

    int const block_m = static_cast<int>(blockIdx.y) * BLOCK_M;
    int const block_n = static_cast<int>(blockIdx.x) * BLOCK_N;

    int const warp_tile_m = block_m + warp_m * 32;
    int const warp_tile_n = block_n + warp_n * 64;

    uint32_t c[2][8][2];
#pragma unroll
    for (int mi = 0; mi < 2; ++mi) {
#pragma unroll
        for (int nj = 0; nj < 8; ++nj) {
            c[mi][nj][0] = 0u;
            c[mi][nj][1] = 0u;
        }
    }

    constexpr int A_INT4_PER_ROW = BLOCK_K / 8; // 4
    constexpr int A_INT4_TOTAL = (BLOCK_M * BLOCK_K) / 8;
    constexpr int B_INT4_PER_ROW = BLOCK_N / 8; // 16
    constexpr int B_INT4_TOTAL = (BLOCK_K * BLOCK_N) / 8;
    static_assert((A_INT4_TOTAL % THREADS_PER_BLOCK) == 0, "A copy mismatch");
    static_assert((B_INT4_TOTAL % THREADS_PER_BLOCK) == 0, "B copy mismatch");
    constexpr int A_ITERS = A_INT4_TOTAL / THREADS_PER_BLOCK; // 2
    constexpr int B_ITERS = B_INT4_TOTAL / THREADS_PER_BLOCK; // 2

    for (int k_block = 0; k_block < kK; k_block += BLOCK_K) {
        // Load A tile into shared (permuted layout).
#pragma unroll
        for (int it = 0; it < A_ITERS; ++it) {
            int const a_int4_idx = tid + it * THREADS_PER_BLOCK;
            int const a_row = a_int4_idx / A_INT4_PER_ROW;
            int const a_seg = a_int4_idx - a_row * A_INT4_PER_ROW;
            int const a_col = a_seg * 8;

            __half const *a_gmem =
                A + (block_m + a_row) * kK + (k_block + a_col);
            int4 const v = *reinterpret_cast<int4 const *>(a_gmem);
            int const a_off = swizzle_rm_offset<SMEM_A_LD>(a_row, a_col);
            *reinterpret_cast<int4 *>(shmemA + a_off) = v;
        }

        // Load B tile into shared (permuted layout).
#pragma unroll
        for (int it = 0; it < B_ITERS; ++it) {
            int const b_int4_idx = tid + it * THREADS_PER_BLOCK;
            int const b_row = b_int4_idx / B_INT4_PER_ROW;
            int const b_seg = b_int4_idx - b_row * B_INT4_PER_ROW;
            int const b_col = b_seg * 8;

            __half const *b_gmem =
                B + (k_block + b_row) * kN + (block_n + b_col);
            int4 const v = *reinterpret_cast<int4 const *>(b_gmem);
            int const b_off = swizzle_rm_offset<SMEM_B_LD>(b_row, b_col);
            *reinterpret_cast<int4 *>(shmemB + b_off) = v;
        }

        __syncthreads();

        // Two mma steps for BK=32: kk in {0,16}.
#pragma unroll
        for (int kk = 0; kk < BLOCK_K; kk += 16) {
            uint32_t a_frag[2][4];
#pragma unroll
            for (int mi = 0; mi < 2; ++mi) {
                int const a_row0 = warp_m * 32 + mi * 16 + (lane_id % 16);
                int const a_col0 = kk + (lane_id / 16) * 8;
                int const a_off = swizzle_rm_offset<SMEM_A_LD>(a_row0, a_col0);
                uint32_t const addr_a =
                    shmemA_base + static_cast<uint32_t>(a_off << 1);
                ldmatrix_x4(a_frag[mi][0], a_frag[mi][1], a_frag[mi][2],
                            a_frag[mi][3], addr_a);
            }

            uint32_t b_frag[8][2];
#pragma unroll
            for (int nj = 0; nj < 8; ++nj) {
                int const b_row0 = kk + (lane_id % 16);
                int const b_col0 = warp_n * 64 + nj * 8;
                int const b_off = swizzle_rm_offset<SMEM_B_LD>(b_row0, b_col0);
                uint32_t const addr_b =
                    shmemB_base + static_cast<uint32_t>(b_off << 1);
                ldmatrix_x2_trans(b_frag[nj][0], b_frag[nj][1], addr_b);
            }

#pragma unroll
            for (int mi = 0; mi < 2; ++mi) {
#pragma unroll
                for (int nj = 0; nj < 8; ++nj) {
                    mma_sync_m16n8k16_row_col_f16(
                        c[mi][nj][0], c[mi][nj][1], a_frag[mi][0], a_frag[mi][1],
                        a_frag[mi][2], a_frag[mi][3], b_frag[nj][0],
                        b_frag[nj][1]);
                }
            }
        }

        __syncthreads();
    }

    int const group_id = lane_id >> 2;
    int const tid_in_group = lane_id & 3;
    int const c_row0 = group_id;
    int const c_row1 = group_id + 8;
    int const c_col0 = tid_in_group * 2;

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

// Debug variant: permuted A (LD=64) + normal padded row-major B.
template <int BLOCK_M, int BLOCK_N, int BLOCK_K, int WARPS_M, int WARPS_N,
          int SMEM_PAD_A, int SMEM_PAD_B>
__global__ void gemm_tc_mma_smem_permutedA_fp16acc(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(BLOCK_M == 128 && BLOCK_N == 128 && BLOCK_K == 32,
                  "This kernel is currently tuned for 128x128x32 tiles.");
    static_assert(WARPS_M == 4 && WARPS_N == 2, "Expected 4x2 warp grid.");
    static_assert(SMEM_PAD_A == 32, "Expected A to use LD=64 (pad=32).");
    static_assert(SMEM_PAD_B == 8, "Expected B to use LD=136 (pad=8).");

    constexpr int SMEM_A_LD = BLOCK_K + SMEM_PAD_A; // 64
    constexpr int SMEM_B_LD = BLOCK_N + SMEM_PAD_B; // 136
    static_assert((SMEM_A_LD % 8) == 0, "pad must keep ldm multiple of 8");
    static_assert((SMEM_B_LD % 8) == 0, "pad must keep ldm multiple of 8");

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

    uint32_t const shmemA_base = __cvta_generic_to_shared(shmemA);
    uint32_t const shmemB_base = __cvta_generic_to_shared(shmemB);

    int const warp_m = warp_id % WARPS_M; // 0..3
    int const warp_n = warp_id / WARPS_M; // 0..1

    int const block_m = static_cast<int>(blockIdx.y) * BLOCK_M;
    int const block_n = static_cast<int>(blockIdx.x) * BLOCK_N;

    int const warp_tile_m = block_m + warp_m * 32;
    int const warp_tile_n = block_n + warp_n * 64;

    uint32_t c[2][8][2];
#pragma unroll
    for (int mi = 0; mi < 2; ++mi) {
#pragma unroll
        for (int nj = 0; nj < 8; ++nj) {
            c[mi][nj][0] = 0u;
            c[mi][nj][1] = 0u;
        }
    }

    constexpr int A_INT4_PER_ROW = BLOCK_K / 8; // 4
    constexpr int A_INT4_TOTAL = (BLOCK_M * BLOCK_K) / 8;
    constexpr int B_INT4_PER_ROW = BLOCK_N / 8; // 16
    constexpr int B_INT4_TOTAL = (BLOCK_K * BLOCK_N) / 8;
    static_assert((A_INT4_TOTAL % THREADS_PER_BLOCK) == 0, "A copy mismatch");
    static_assert((B_INT4_TOTAL % THREADS_PER_BLOCK) == 0, "B copy mismatch");
    constexpr int A_ITERS = A_INT4_TOTAL / THREADS_PER_BLOCK; // 2
    constexpr int B_ITERS = B_INT4_TOTAL / THREADS_PER_BLOCK; // 2

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
            int const a_off = swizzle_rm_offset<SMEM_A_LD>(a_row, a_col);
            *reinterpret_cast<int4 *>(shmemA + a_off) = v;
        }

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

#pragma unroll
        for (int kk = 0; kk < BLOCK_K; kk += 16) {
            uint32_t a_frag[2][4];
#pragma unroll
            for (int mi = 0; mi < 2; ++mi) {
                int const a_row0 = warp_m * 32 + mi * 16 + (lane_id % 16);
                int const a_col0 = kk + (lane_id / 16) * 8;
                int const a_off = swizzle_rm_offset<SMEM_A_LD>(a_row0, a_col0);
                uint32_t const addr_a =
                    shmemA_base + static_cast<uint32_t>(a_off << 1);
                ldmatrix_x4(a_frag[mi][0], a_frag[mi][1], a_frag[mi][2],
                            a_frag[mi][3], addr_a);
            }

            uint32_t b_frag[8][2];
#pragma unroll
            for (int nj = 0; nj < 8; ++nj) {
                int const b_row0 = kk + (lane_id % 16);
                int const b_col0 = warp_n * 64 + nj * 8;
                int const b_off = b_row0 * SMEM_B_LD + b_col0;
                uint32_t const addr_b =
                    shmemB_base + static_cast<uint32_t>(b_off << 1);
                ldmatrix_x2_trans(b_frag[nj][0], b_frag[nj][1], addr_b);
            }

#pragma unroll
            for (int mi = 0; mi < 2; ++mi) {
#pragma unroll
                for (int nj = 0; nj < 8; ++nj) {
                    mma_sync_m16n8k16_row_col_f16(
                        c[mi][nj][0], c[mi][nj][1], a_frag[mi][0], a_frag[mi][1],
                        a_frag[mi][2], a_frag[mi][3], b_frag[nj][0],
                        b_frag[nj][1]);
                }
            }
        }

        __syncthreads();
    }

    int const group_id = lane_id >> 2;
    int const tid_in_group = lane_id & 3;
    int const c_row0 = group_id;
    int const c_row1 = group_id + 8;
    int const c_col0 = tid_in_group * 2;

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

static void fill_constant_half(std::vector<__half> &h, float value) {
    __half const v = __float2half_rn(value);
    for (auto &x : h) {
        x = v;
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
    if (s == "v7" || s == "fp16acc") {
        return KernelVersion::V7_SmemPaddedFp16Acc_128x128_8warps_bk32;
    }
    if (s == "best") {
        // Keep this mapped to the best *stable* kernel in this file.
        // Update when a new version consistently wins in benchmark.
        return KernelVersion::
            V95_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffBReuseNMajorFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v8" || s == "bcol") {
        return KernelVersion::V8_SmemPaddedFp16Acc_BcolGlobal_128x128_8warps_bk32;
    }
    if (s == "v9" || s == "mma") {
        return KernelVersion::V9_MmaSyncFp16Acc_128x128_8warps_bk32;
    }
    if (s == "v10" || s == "skew16") {
        return KernelVersion::V10_SmemPaddedFp16Acc_Skew16_128x128_8warps_bk32;
    }
    if (s == "v11" || s == "bk64") {
        return KernelVersion::V11_MmaSyncFp16Acc_128x128_8warps_bk64;
    }
    if (s == "v12" || s == "bswizzle") {
        return KernelVersion::V12_MmaSyncFp16Acc_BSwizzle_128x128_8warps_bk32;
    }
    if (s == "v13" || s == "n64") {
        return KernelVersion::V13_WmmaFp16Acc_128x64_8warps_bk32;
    }
    if (s == "v14" || s == "pipe") {
        return KernelVersion::V14_WmmaFp16Acc_Pipelined_128x128_8warps_bk32;
    }
    if (s == "v15" || s == "padb0") {
        return KernelVersion::V15_WmmaFp16Acc_PadB0_128x128_8warps_bk32;
    }
    if (s == "v16" || s == "perm") {
        return KernelVersion::V16_MmaPermutedBcolFp16Acc_128x128_warp2x4_bk32;
    }
    if (s == "v17" || s == "perm3") {
        return KernelVersion::V17_MmaPermutedBcolCpAsync3Fp16Acc_128x128_warp2x4_bk32;
    }
    if (s == "v18" || s == "perm2") {
        return KernelVersion::V18_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_bk32;
    }
    if (s == "v32" || s == "perm2pad1" || s == "padcol1") {
        return KernelVersion::
            V32_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_padcol1_bk32;
    }
    if (s == "v33" || s == "perm2nol2" || s == "nol2") {
        return KernelVersion::
            V33_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_nol2_bk32;
    }
    if (s == "v34" || s == "perm2k2pass2" || s == "k2pass2") {
        return KernelVersion::
            V34_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_k2pass_bk32;
    }
    if (s == "v29" || s == "perm2w2x2") {
        return KernelVersion::V29_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x2_bk32;
    }
    if (s == "v30" || s == "perm2k2pass") {
        return KernelVersion::
            V30_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_k2pass_bk32;
    }
    if (s == "v31" || s == "perm2xor1") {
        return KernelVersion::
            V31_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_xor1_bk32;
    }
    if (s == "v36" || s == "perm2xor1fix" || s == "perm2xor1storefix") {
        return KernelVersion::
            V36_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_xor1_storefix_bk32;
    }
    if (s == "v19" || s == "perm2a") {
        return KernelVersion::
            V19_MmaPermutedBcolCpAsync2StreamAFp16Acc_128x128_warp2x4_bk32;
    }
    if (s == "v20" || s == "perm2lb3") {
        return KernelVersion::
            V20_MmaPermutedBcolCpAsync2Lb3Fp16Acc_128x128_warp2x4_bk32;
    }
    if (s == "v21" || s == "perm2split") {
        return KernelVersion::
            V21_MmaPermutedBcolCpAsync2SplitAccFp16Acc_128x128_warp2x4_bk32;
    }
    if (s == "v23" || s == "perm2n256") {
        return KernelVersion::
            V23_MmaPermutedBcolCpAsync2Fp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v24" || s == "perm3n256") {
        return KernelVersion::
            V24_MmaPermutedBcolCpAsync3Fp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v37" || s == "cutlasslike" || s == "tn256") {
        return KernelVersion::V37_MmaCutlassLikeTN_CpAsync3Fp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v38" || s == "cutlasslike_opt" || s == "tn256opt") {
        return KernelVersion::
            V38_MmaCutlassLikeTN_CpAsync3Fp16Acc_128x256_warp2x4_bk32_opt;
    }
    if (s == "v39" || s == "tn128" || s == "tm256tn128") {
        return KernelVersion::
            V39_MmaCutlassLikeTN_CpAsync3Fp16Acc_256x128_warp4x2_bk32;
    }
    if (s == "v40" || s == "cutlasslike_il" || s == "tn256il") {
        return KernelVersion::
            V40_MmaCutlassLikeTN_CpAsync3Fp16Acc_128x256_warp2x4_bk32_interleaved;
    }
    if (s == "v41" || s == "cutlasslike_il_bc32" || s == "tn256ilbc32") {
        return KernelVersion::
            V41_MmaCutlassLikeTN_CpAsync3Fp16Acc_128x256_warp2x4_bk32_interleaved_bcross32;
    }
    if (s == "v42" || s == "cutlass_mainloop" || s == "tn256cutlass") {
        return KernelVersion::
            V42_MmaCutlassLikeTN_CutlassStyleMainloopFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v43" || s == "cutlass_mainloop_streama" || s == "tn256cutlassa") {
        return KernelVersion::
            V43_MmaCutlassLikeTN_CutlassStyleMainloopStreamAFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v44" || s == "cutlass_mainloop_faststage" || s == "tn256cutlassfast") {
        return KernelVersion::
            V44_MmaCutlassLikeTN_CutlassStyleMainloopFastStageFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v45" || s == "cutlass_mainloop_faststage_ca" || s == "tn256cutlassfastca") {
        return KernelVersion::
            V45_MmaCutlassLikeTN_CutlassStyleMainloopFastStageCaFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v46" || s == "cutlass_mainloop_faststage_noif" || s == "tn256cutlassfastnoif") {
        return KernelVersion::
            V46_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v47" || s == "cutlass_mainloop_faststage_noif_breuse" ||
        s == "tn256cutlassfastbreuse") {
        return KernelVersion::
            V47_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v48" || s == "cutlass_mainloop_faststage_noif_breuse_late" ||
        s == "tn256cutlassfastbreuselate") {
        return KernelVersion::
            V48_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseLateK0LdFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v49" || s == "cutlass_mainloop_faststage_noif_breuse_swapxy" ||
        s == "tn256cutlassfastbreuseswapxy") {
        return KernelVersion::
            V49_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v50" || s == "cutlass_mainloop_faststage_noif_streama" ||
        s == "tn256cutlassfastnoifstreama") {
        return KernelVersion::
            V50_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfStreamAFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v51" || s == "cutlass_mainloop_faststage_noif_streama_swapxy" ||
        s == "tn256cutlassfastnoifstreamaswapxy") {
        return KernelVersion::
            V51_MmaCutlassLikeTN_CutlassStyleMainloopMacLoopInterleavedSwapXYFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v52" ||
        s == "cutlass_mainloop_faststage_noif_breuse_swapxy_postwait" ||
        s == "tn256cutlassfastbreuseswapxypostwait") {
        return KernelVersion::
            V52_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v53" ||
        s == "cutlass_mainloop_faststage_noif_breuse_swapxy_il" ||
        s == "tn256cutlassfastbreuseswapxyil") {
        return KernelVersion::
            V53_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYMmaLdgstsInterleavedFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v54" ||
        s == "cutlass_mainloop_faststage_noif_breuse_swapxy_streamb" ||
        s == "tn256cutlassfastbreuseswapxystreamb") {
        return KernelVersion::
            V54_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYStreamBFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v55" ||
        s == "cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_warpstagger_nb" ||
        s == "tn256cutlassfastbreuseswapxypostwaitstagger") {
        return KernelVersion::
            V55_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitWarpStaggerNbFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v56" ||
        s == "cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_hmma_ldgsts_alt" ||
        s == "tn256cutlassfastbreuseswapxypostwaitalt") {
        return KernelVersion::
            V56_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitHmmasLdgstsAltFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v57" ||
        s == "cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_splitcopy4wA4wB" ||
        s == "tn256cutlassfastbreuseswapxypostwaitsplitcopy") {
        return KernelVersion::
            V57_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSplitCopy4wA4wBFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v58" || s == "s2_lowreg" || s == "tn256s2lowreg") {
        return KernelVersion::
            V58_MmaCutlassLikeTN_CpAsync2Fp16Acc_128x256_warp2x4_lowreg_lb2_swapxy;
    }
    if (s == "v59" || s == "stagecolA" || s == "tn256stagecola") {
        return KernelVersion::
            V59_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitStagecolAFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v60" || s == "padB8" || s == "tn256padb8") {
        return KernelVersion::
            V60_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitPadB8Fp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v61" || s == "bk64s2" || s == "tn256bk64s2") {
        return KernelVersion::
            V61_MmaCutlassLikeTN_CpAsync2Fp16Acc_128x256_warp2x4_bk64_s2_swapxy;
    }
    if (s == "v62" || s == "nbspread" || s == "tn256nbspread") {
        return KernelVersion::
            V62_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitNbSpreadFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v63" ||
        s == "cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_ca" ||
        s == "tn256cutlassfastbreuseswapxypostwaitca") {
        return KernelVersion::
            V63_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitCaFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v64" ||
        s == "cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_bcross32" ||
        s == "tn256cutlassfastbreuseswapxypostwaitbc32") {
        return KernelVersion::
            V64_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitBCross32Fp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v65" ||
        s == "cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag" ||
        s == "tn256cutlassfastbreuseswapxypostwaitsingle") {
        return KernelVersion::
            V65_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v66" ||
        s == "cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8" ||
        s == "tn256cutlassfastbreuseswapxypostwaitsinglevec8") {
        return KernelVersion::
            V66_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8Fp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v67" ||
        s == "cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_epilogue_vec8" ||
        s == "tn256cutlassfastbreuseswapxypostwaitvec8") {
        return KernelVersion::
            V67_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitEpilogueVec8Fp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v68" ||
        s == "cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_epilogue_warpscratch_vec8" ||
        s == "tn256cutlassfastbreuseswapxypostwaitwarpscratchvec8") {
        return KernelVersion::
            V68_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitEpilogueWarpScratchVec8Fp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v69" || s == "smemc_pad8") {
        return KernelVersion::
            V69_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitEpilogueVec8SmemCPad8Fp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v70" || s == "single_smemc_pad8") {
        return KernelVersion::
            V70_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8Fp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v71" || s == "single_smemc_pad8_ptrinc" || s == "ptrinc") {
        return KernelVersion::
            V71_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8PtrIncFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v72" || s == "single_dynsmem" || s == "dynsmem") {
        return KernelVersion::
            V72_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8DynSmemFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v73" || s == "single_smemc_pad8_ca" || s == "smemc_pad8_ca") {
        return KernelVersion::
            V73_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8CaFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v74" || s == "stagewrap") {
        return KernelVersion::
            V74_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8StageWrapFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v75" || s == "single_streamb") {
        return KernelVersion::
            V75_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragStreamBEpilogueVec8SmemCPad8Fp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v76" || s == "maxnreg160") {
        return KernelVersion::
            V76_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8Maxnreg160Fp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v77" || s == "maxnreg152") {
        return KernelVersion::
            V77_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8Maxnreg152Fp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v78" || s == "contigcopy") {
        return KernelVersion::
            V78_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8ContigCopyFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v79" || s == "b8x4") {
        return KernelVersion::
            V79_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4Fp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v80" || s == "b8x4_baseimm" || s == "baseimm") {
        return KernelVersion::
            V80_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v81" || s == "b8x4_baseimm_a64imm" || s == "a64imm") {
        return KernelVersion::
            V81_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmA64ImmFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v82" || s == "b8x4_baseimm_a64imm_ilcp" || s == "ilcp") {
        return KernelVersion::
            V82_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmA64ImmIlCpFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v83" || s == "b8x4_baseimm_ldsoff" || s == "ldsoff") {
        return KernelVersion::
            V83_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v84" || s == "b8x4_baseimm_epistore" || s == "epistore") {
        return KernelVersion::
            V84_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmEpistoreFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v86" || s == "ldsm_pipe") {
        return KernelVersion::
            V86_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffLdsmPipeFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v87" || s == "fragdbuf" || s == "dbuf") {
        return KernelVersion::
            V87_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffFragdbufFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v88" || s == "midwait_fragpipe" || s == "midwait") {
        return KernelVersion::
            V88_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYMidwaitFragpipeFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v89" || s == "cpinterleave" || s == "ilcpasync") {
        return KernelVersion::
            V89_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitCpinterleaveFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v90" || s == "midwait_cpinterleave" || s == "midwait_ilcp") {
        return KernelVersion::
            V90_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYMidwaitCpinterleaveFragpipeFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v91" || s == "stage3unroll" || s == "unroll3stage" ||
        s == "stageunroll") {
        return KernelVersion::
            V91_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffStage3UnrollFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v92" || s == "warpspec" || s == "warpspec_a2b4") {
        return KernelVersion::
            V92_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitWarpSpecCopyA2B4Fp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v93" || s == "ldsm_interleave" || s == "ldsm_il" ||
        s == "ldsmil") {
        return KernelVersion::
            V93_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffLdsmInterleaveFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v94" || s == "ldsm_ldgsts_interleave" || s == "ldsmldgsts") {
        return KernelVersion::
            V94_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffLdsmLdgstsInterleaveFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v95" || s == "breuse_nmajor" || s == "breusen") {
        return KernelVersion::
            V95_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffBReuseNMajorFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v96" || s == "breuse_aboundary" || s == "breuse_ab" ||
        s == "breuseab") {
        return KernelVersion::
            V96_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffBReuseABoundaryFp16Acc_128x256_warp2x4_bk32;
    }
    if (s == "v25" || s == "perm2n256splitk") {
        return KernelVersion::
            V25_MmaPermutedBcolCpAsync2Fp16Acc_128x256_warp2x4_splitk_bk32;
    }
    if (s == "v35" || s == "perm2n256splitklb2") {
        return KernelVersion::
            V35_MmaPermutedBcolCpAsync2Fp16Acc_128x256_warp2x4_splitk_lb2_bk32;
    }
    if (s == "v26" || s == "perm2n256w2x8") {
        return KernelVersion::
            V26_MmaPermutedBcolCpAsync2Fp16Acc_128x256_warp2x8_bk32;
    }
    if (s == "v28" || s == "perm2n256w2x8all") {
        return KernelVersion::
            V28_MmaPermutedBcolCpAsync2Fp16Acc_128x256_warp2x8_allcopy_bk32;
    }
    if (s == "v27" || s == "perm2bk64") {
        return KernelVersion::
            V27_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_bk64;
    }
    std::cerr
        << "Unknown --kernel=... value: " << s
        << " (expected v0|v1|v6|v7|v8|v9|v10|v11|v12|v13|v14|v15|v16|v17|v18|v19|v20|v21|v23|v24|v25|v26|v27|v28|v29|v30|v31|v32|v33|v34|v35|v36|v37|v38|v39|v40|v41|v42|v43|v44|v45|v46|v47|v48|v49|v50|v51|v52|v53|v54|v55|v56|v57|v58|v59|v60|v61|v62|v63|v64|v65|v66|v67|v68|v69|v70|v71|v72|v73|v74|v75|v76|v77|v78|v79|v80|v81|v82|v83|v84|v86|v87|v88|v89|v90|v91|v92|v93|v94|v95|v96"
           " or global|smem|pad|fp16acc|best|bcol|mma|skew16|bk64|bswizzle|n64|pipe|padb0|perm|perm3|perm2|perm2pad1|padcol1|perm2nol2|nol2|perm2k2pass2|k2pass2|perm2w2x2|perm2k2pass|perm2xor1|perm2xor1fix|perm2xor1storefix|perm2a|perm2lb3|perm2split|perm2n256|perm3n256|cutlasslike|tn256|cutlasslike_opt|tn256opt|tn128|tm256tn128|cutlasslike_il|tn256il|cutlasslike_il_bc32|tn256ilbc32|cutlass_mainloop|tn256cutlass|cutlass_mainloop_streama|tn256cutlassa|cutlass_mainloop_faststage|tn256cutlassfast|cutlass_mainloop_faststage_ca|tn256cutlassfastca|cutlass_mainloop_faststage_noif|tn256cutlassfastnoif|cutlass_mainloop_faststage_noif_breuse|tn256cutlassfastbreuse|cutlass_mainloop_faststage_noif_breuse_late|tn256cutlassfastbreuselate|cutlass_mainloop_faststage_noif_breuse_swapxy|tn256cutlassfastbreuseswapxy|cutlass_mainloop_faststage_noif_breuse_swapxy_postwait|tn256cutlassfastbreuseswapxypostwait|cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_ca|tn256cutlassfastbreuseswapxypostwaitca|cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_bcross32|tn256cutlassfastbreuseswapxypostwaitbc32|cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag|tn256cutlassfastbreuseswapxypostwaitsingle|cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8|tn256cutlassfastbreuseswapxypostwaitsinglevec8|cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_epilogue_vec8|tn256cutlassfastbreuseswapxypostwaitvec8|cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_epilogue_warpscratch_vec8|tn256cutlassfastbreuseswapxypostwaitwarpscratchvec8|cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_warpstagger_nb|tn256cutlassfastbreuseswapxypostwaitstagger|cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_hmma_ldgsts_alt|tn256cutlassfastbreuseswapxypostwaitalt|cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_splitcopy4wA4wB|tn256cutlassfastbreuseswapxypostwaitsplitcopy|cutlass_mainloop_faststage_noif_breuse_swapxy_il|tn256cutlassfastbreuseswapxyil|cutlass_mainloop_faststage_noif_breuse_swapxy_streamb|tn256cutlassfastbreuseswapxystreamb|cutlass_mainloop_faststage_noif_streama|tn256cutlassfastnoifstreama|cutlass_mainloop_faststage_noif_streama_swapxy|tn256cutlassfastnoifstreamaswapxy|smemc_pad8|single_smemc_pad8|perm2n256splitk|perm2n256splitklb2|perm2n256w2x8|perm2n256w2x8all|perm2bk64|s2_lowreg|tn256s2lowreg|stagecolA|tn256stagecola|padB8|tn256padb8|bk64s2|tn256bk64s2|nbspread|tn256nbspread|contigcopy|b8x4|b8x4_baseimm|baseimm|b8x4_baseimm_a64imm|a64imm|b8x4_baseimm_a64imm_ilcp|ilcp|b8x4_baseimm_ldsoff|ldsoff|b8x4_baseimm_epistore|epistore|breuse_nmajor|breusen|breuse_aboundary|breuse_ab|breuseab)"
        << std::endl;
    std::exit(EXIT_FAILURE);
}

static void print_usage(char const *argv0) {
    std::cout << "Usage: " << argv0
              << " [--kernel=v0|v1|v6|v7|v8|v9|v10|v11|v12|v13|v14|v15|v16|v17|v18|v19|v20|v21|v23|v24|v25|v26|v27|v28|v29|v30|v31|v32|v33|v34|v35|v36|v37|v38|v39|v40|v41|v42|v43|v44|v45|v46|v47|v48|v49|v50|v51|v52|v53|v54|v55|v56|v57|v58|v59|v60|v61|v62|v63|v64|v65|v66|v67|v68|v69|v70|v71|v72|v73|v74|v75|v76|v77|v78|v79|v80|v81|v82|v83|v84|v86|v87|v88|v89|v90|v91|v92|v93|v94|v95|v96]"
                 " [--warmup=20] [--iters=500] [--trials=5]\n"
                 "       [--check_init=random|ones] [--bench_init=random|ones]\n"
                 "       [--init=random|ones]  (legacy alias; sets both)\n"
                 "       [--verify_m=128] [--verify_n=128] [--skip_check]\n"
                 "       [--list_kernels]\n";
}

static void print_kernel_list() {
    std::cout << "Available kernels (use --kernel=...):\n\n";
    std::cout
        << "  Versions: v0|v1|v6|v7|v8|v9|v10|v11|v12|v13|v14|v15|v16|v17|v18|v19|v20|v21|v23|v24|v25|v26|v27|v28|v29|v30|v31|v32|v33|v34|v35|v36|v37|v38|v39|v40|v41|v42|v43|v44|v45|v46|v47|v48|v49|v50|v51|v52|v53|v54|v55|v56|v57|v58|v59|v60|v61|v62|v63|v64|v65|v66|v67|v68|v69|v70|v71|v72|v73|v74|v75|v76|v77|v78|v79|v80|v81|v82|v83|v84|v86|v87|v88|v89|v90|v91|v92|v93|v94|v95|v96\n";
    std::cout << "  Aliases: global|smem|pad|fp16acc|best|bcol|mma|skew16|bk64|bswizzle|n64|pipe|padb0\n";
    std::cout << "           perm|perm3|perm2|perm2pad1|padcol1|perm2nol2|nol2|perm2k2pass2|k2pass2|perm2w2x2|perm2k2pass|perm2xor1|perm2xor1fix|perm2xor1storefix|perm2a|perm2lb3|perm2split|perm2n256|perm3n256\n";
    std::cout << "           cutlasslike|tn256|cutlasslike_opt|tn256opt|tn128|tm256tn128|cutlasslike_il|tn256il|cutlasslike_il_bc32|tn256ilbc32\n";
    std::cout << "           cutlass_mainloop|tn256cutlass|cutlass_mainloop_streama|tn256cutlassa|cutlass_mainloop_faststage|tn256cutlassfast|cutlass_mainloop_faststage_ca|tn256cutlassfastca|cutlass_mainloop_faststage_noif|tn256cutlassfastnoif\n";
    std::cout << "           cutlass_mainloop_faststage_noif_breuse|tn256cutlassfastbreuse|cutlass_mainloop_faststage_noif_breuse_late|tn256cutlassfastbreuselate|cutlass_mainloop_faststage_noif_breuse_swapxy|tn256cutlassfastbreuseswapxy\n";
    std::cout << "           cutlass_mainloop_faststage_noif_breuse_swapxy_postwait|tn256cutlassfastbreuseswapxypostwait|cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_ca|tn256cutlassfastbreuseswapxypostwaitca|cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_bcross32|tn256cutlassfastbreuseswapxypostwaitbc32|cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag|tn256cutlassfastbreuseswapxypostwaitsingle|cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8|tn256cutlassfastbreuseswapxypostwaitsinglevec8|cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_epilogue_vec8|tn256cutlassfastbreuseswapxypostwaitvec8|cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_epilogue_warpscratch_vec8|tn256cutlassfastbreuseswapxypostwaitwarpscratchvec8\n";
    std::cout << "           cutlass_mainloop_faststage_noif_breuse_swapxy_il|tn256cutlassfastbreuseswapxyil|cutlass_mainloop_faststage_noif_breuse_swapxy_streamb|tn256cutlassfastbreuseswapxystreamb\n";
    std::cout << "           cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_warpstagger_nb|tn256cutlassfastbreuseswapxypostwaitstagger\n";
    std::cout << "           cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_hmma_ldgsts_alt|tn256cutlassfastbreuseswapxypostwaitalt\n";
    std::cout << "           cutlass_mainloop_faststage_noif_breuse_swapxy_postwait_splitcopy4wA4wB|tn256cutlassfastbreuseswapxypostwaitsplitcopy\n";
    std::cout << "           cutlass_mainloop_faststage_noif_streama|tn256cutlassfastnoifstreama|cutlass_mainloop_faststage_noif_streama_swapxy|tn256cutlassfastnoifstreamaswapxy\n";
    std::cout << "           perm2n256splitk|perm2n256splitklb2|perm2n256w2x8|perm2n256w2x8all|perm2bk64\n";
    std::cout << "           s2_lowreg|tn256s2lowreg|stagecolA|tn256stagecola|padB8|tn256padb8|bk64s2|tn256bk64s2|nbspread|tn256nbspread|smemc_pad8|single_smemc_pad8|single_smemc_pad8_ptrinc|ptrinc|single_dynsmem|dynsmem|stagewrap|single_streamb|maxnreg160|maxnreg152|contigcopy|b8x4|b8x4_baseimm|baseimm|b8x4_baseimm_a64imm|a64imm|b8x4_baseimm_a64imm_ilcp|ilcp|b8x4_baseimm_ldsoff|ldsoff|b8x4_baseimm_epistore|epistore|ldsm_pipe|ldsm_interleave|ldsm_il|ldsmil|ldsm_ldgsts_interleave|ldsmldgsts|fragdbuf|dbuf|midwait|cpinterleave|ilcpasync|midwait_ilcp\n\n";
    std::cout << "           warpspec|warpspec_a2b4|breuse_nmajor|breusen|breuse_aboundary|breuse_ab|breuseab\n\n";
    std::cout << "Current best mapping:\n";
    std::cout << "  best -> v95 (breuse_nmajor, TB 128x256x32, warp 2x4)\n";
    std::cout << "         (see: src/gemm_tc_fp16_4096/kernels/v95_*_breuse_nmajor.cuh)\n\n";
    std::cout << "Tip: use `--kernel=best` for the fastest *stable* kernel we found.\n";
}

int main(int argc, char **argv) {
    KernelVersion kernel = KernelVersion::V7_SmemPaddedFp16Acc_128x128_8warps_bk32;
    // Defaults tuned for *stable peak numbers* on this machine:
    // - For ones-init (peak mode), short runs can under-report avg TFLOPS because
    //   boost clocks may take a moment to ramp. A slightly longer default run
    //   makes "avg" closer to "best" and reduces confusion.
    int warmup = 20;
    int iters = 500;
    int trials = 5;
    std::string check_init_mode = "random";
    std::string bench_init_mode = "ones";
    int verify_m = 128;
    int verify_n = 128;
    bool do_check = true;
    bool list_kernels = false;

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
        if (arg == "--list_kernels") {
            list_kernels = true;
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
            std::string v = eat("--init=");
            if (!v.empty()) {
                // Legacy behavior: set both init modes.
                check_init_mode = v;
                bench_init_mode = v;
                continue;
            }
        }
        {
            std::string v = eat("--check_init=");
            if (!v.empty()) {
                check_init_mode = v;
                continue;
            }
        }
        {
            std::string v = eat("--bench_init=");
            if (!v.empty()) {
                bench_init_mode = v;
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

    if (list_kernels) {
        print_kernel_list();
        return 0;
    }

    if (verify_m <= 0 || verify_m > kM || verify_n <= 0 || verify_n > kN) {
        std::cerr << "Invalid verify size: verify_m=" << verify_m
                  << " verify_n=" << verify_n << std::endl;
        return 1;
    }

    std::cout << "GEMM: C[MxN] = A[MxK] * B[KxN]\n"
              << "  A/B: FP16 (half)\n"
              << "  M=N=K=4096 (fixed)\n"
              << "  check_init: " << check_init_mode << "\n"
              << "  bench_init: " << bench_init_mode << "\n";
    if (bench_init_mode == "random") {
        std::cout
            << "  note: random benchmark inputs can increase switching "
               "activity and may trigger power/clock throttling; use "
               "`--bench_init=ones` for peak TFLOPS\n";
    }

    std::string kernel_name;
    std::string c_type = "FP32";
    bool c_is_fp16 = false;
    std::string b_layout = "row_major";
    bool b_col_major = false;
    bool grid_swap_xy = false; // if true: grid.x=M tiles, grid.y=N tiles
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
    case KernelVersion::V10_SmemPaddedFp16Acc_Skew16_128x128_8warps_bk32:
        kernel_name = "v10_smem_padded_fp16acc_skew16_128x128_8warps_bk32";
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
    case KernelVersion::V11_MmaSyncFp16Acc_128x128_8warps_bk64:
        kernel_name = "v11_mmasync_fp16acc_128x128_8warps_bk64";
        c_type = "FP16";
        c_is_fp16 = true;
        tile_m = 128;
        tile_n = 128;
        warps_m = 4;
        warps_n = 2;
        warps_per_block = 8;
        block_k = 64;
        warp_m_tiles = 2;
        warp_n_tiles = 4;
        break;
    case KernelVersion::V12_MmaSyncFp16Acc_BSwizzle_128x128_8warps_bk32:
        kernel_name = "v12_mmasync_fp16acc_bswizzle_128x128_8warps_bk32";
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
    case KernelVersion::V13_WmmaFp16Acc_128x64_8warps_bk32:
        kernel_name = "v13_wmma_fp16acc_128x64_8warps_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        tile_m = 128;
        tile_n = 64;
        warps_m = 4;
        warps_n = 2;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 2;
        warp_n_tiles = 2;
        break;
    case KernelVersion::V14_WmmaFp16Acc_Pipelined_128x128_8warps_bk32:
        kernel_name = "v14_wmma_fp16acc_pipe2_128x128_8warps_bk32";
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
    case KernelVersion::V15_WmmaFp16Acc_PadB0_128x128_8warps_bk32:
        kernel_name = "v15_wmma_fp16acc_padB0_128x128_8warps_bk32";
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
    case KernelVersion::V16_MmaPermutedBcolFp16Acc_128x128_warp2x4_bk32:
        kernel_name = "v16_mma_permuted_bcol_fp16acc_128x128_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "col_major";
        b_col_major = true;
        tile_m = 128;
        tile_n = 128;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 2;
        break;
    case KernelVersion::V17_MmaPermutedBcolCpAsync3Fp16Acc_128x128_warp2x4_bk32:
        kernel_name =
            "v17_mma_permuted_bcol_cpasync3_fp16acc_128x128_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "col_major";
        b_col_major = true;
        tile_m = 128;
        tile_n = 128;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 2;
        break;
    case KernelVersion::V18_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_bk32:
        kernel_name =
            "v18_mma_permuted_bcol_cpasync2_fp16acc_128x128_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "col_major";
        b_col_major = true;
        tile_m = 128;
        tile_n = 128;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 2;
        break;
    case KernelVersion::V32_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_padcol1_bk32:
        kernel_name =
            "v32_mma_permuted_bcol_cpasync2_fp16acc_128x128_warp2x4_padcol1_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "col_major";
        b_col_major = true;
        tile_m = 128;
        tile_n = 128;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 2;
        break;
    case KernelVersion::V33_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_nol2_bk32:
        kernel_name =
            "v33_mma_permuted_bcol_cpasync2_fp16acc_128x128_warp2x4_nol2_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "col_major";
        b_col_major = true;
        tile_m = 128;
        tile_n = 128;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 2;
        break;
    case KernelVersion::V34_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_k2pass_bk32:
        kernel_name =
            "v34_mma_permuted_bcol_cpasync2_fp16acc_128x128_warp2x4_k2pass_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "col_major";
        b_col_major = true;
        tile_m = 128;
        tile_n = 128;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 2;
        break;
    case KernelVersion::V29_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x2_bk32:
        kernel_name =
            "v29_mma_permuted_bcol_cpasync2_fp16acc_128x128_warp2x2_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "col_major";
        b_col_major = true;
        tile_m = 128;
        tile_n = 128;
        warps_m = 2;
        warps_n = 2;
        warps_per_block = 4;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::V30_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_k2pass_bk32:
        kernel_name =
            "v30_mma_permuted_bcol_cpasync2_fp16acc_128x128_warp2x4_k2pass_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "col_major";
        b_col_major = true;
        tile_m = 128;
        tile_n = 128;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 2;
        break;
    case KernelVersion::V31_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_xor1_bk32:
        kernel_name =
            "v31_mma_permuted_bcol_cpasync2_fp16acc_128x128_warp2x4_xor1_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "col_major";
        b_col_major = true;
        tile_m = 128;
        tile_n = 128;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 2;
        break;
    case KernelVersion::V36_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_xor1_storefix_bk32:
        kernel_name =
            "v36_mma_permuted_bcol_cpasync2_fp16acc_128x128_warp2x4_xor1_storefix_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "col_major";
        b_col_major = true;
        tile_m = 128;
        tile_n = 128;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 2;
        break;
    case KernelVersion::V19_MmaPermutedBcolCpAsync2StreamAFp16Acc_128x128_warp2x4_bk32:
        kernel_name =
            "v19_mma_permuted_bcol_cpasync2_streamA_fp16acc_128x128_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "col_major";
        b_col_major = true;
        tile_m = 128;
        tile_n = 128;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 2;
        break;
    case KernelVersion::V20_MmaPermutedBcolCpAsync2Lb3Fp16Acc_128x128_warp2x4_bk32:
        kernel_name =
            "v20_mma_permuted_bcol_cpasync2_lb3_fp16acc_128x128_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "col_major";
        b_col_major = true;
        tile_m = 128;
        tile_n = 128;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 2;
        break;
    case KernelVersion::V21_MmaPermutedBcolCpAsync2SplitAccFp16Acc_128x128_warp2x4_bk32:
        kernel_name =
            "v21_mma_permuted_bcol_cpasync2_splitacc_fp16acc_128x128_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "col_major";
        b_col_major = true;
        tile_m = 128;
        tile_n = 128;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 2;
        break;
    case KernelVersion::V23_MmaPermutedBcolCpAsync2Fp16Acc_128x256_warp2x4_bk32:
        kernel_name = "v23_mma_permuted_bcol_cpasync2_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "col_major";
        b_col_major = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::V24_MmaPermutedBcolCpAsync3Fp16Acc_128x256_warp2x4_bk32:
        kernel_name = "v24_mma_permuted_bcol_cpasync3_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "col_major";
        b_col_major = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::V37_MmaCutlassLikeTN_CpAsync3Fp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v37_mma_cutlasslike_tn_cpasync3_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::V38_MmaCutlassLikeTN_CpAsync3Fp16Acc_128x256_warp2x4_bk32_opt:
        kernel_name =
            "v38_mma_cutlasslike_tn_cpasync3_fp16acc_128x256_warp2x4_bk32_opt";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::V39_MmaCutlassLikeTN_CpAsync3Fp16Acc_256x128_warp4x2_bk32:
        kernel_name = "v39_mma_cutlasslike_tn_cpasync3_fp16acc_256x128_warp4x2_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        tile_m = 256;
        tile_n = 128;
        warps_m = 4;
        warps_n = 2;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::V40_MmaCutlassLikeTN_CpAsync3Fp16Acc_128x256_warp2x4_bk32_interleaved:
        kernel_name =
            "v40_mma_cutlasslike_tn_cpasync3_fp16acc_128x256_warp2x4_bk32_interleaved";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V41_MmaCutlassLikeTN_CpAsync3Fp16Acc_128x256_warp2x4_bk32_interleaved_bcross32:
        kernel_name =
            "v41_mma_cutlasslike_tn_cpasync3_fp16acc_128x256_warp2x4_bk32_interleaved_bcross32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V42_MmaCutlassLikeTN_CutlassStyleMainloopFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v42_mma_cutlasslike_tn_cutlassstyle_mainloop_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V43_MmaCutlassLikeTN_CutlassStyleMainloopStreamAFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v43_mma_cutlasslike_tn_cutlassstyle_mainloop_streamA_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V44_MmaCutlassLikeTN_CutlassStyleMainloopFastStageFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v44_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V45_MmaCutlassLikeTN_CutlassStyleMainloopFastStageCaFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v45_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_ca_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V46_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v46_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V47_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v47_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V48_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseLateK0LdFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v48_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_latek0ld_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V49_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v49_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V50_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfStreamAFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v50_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_streama_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V51_MmaCutlassLikeTN_CutlassStyleMainloopMacLoopInterleavedSwapXYFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v51_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_streama_swapxy_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V52_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v52_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V53_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYMmaLdgstsInterleavedFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v53_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_il_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V54_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYStreamBFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v54_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_streamb_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V55_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitWarpStaggerNbFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v55_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_warpstagger_nb_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V56_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitHmmasLdgstsAltFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v56_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_hmma_ldgsts_alt_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V57_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSplitCopy4wA4wBFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v57_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_splitcopy4wA4wB_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V58_MmaCutlassLikeTN_CpAsync2Fp16Acc_128x256_warp2x4_lowreg_lb2_swapxy:
        kernel_name =
            "v58_mma_cutlasslike_tn_cpasync2_lowreg_lb2_swapxy_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V59_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitStagecolAFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v59_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_stagecolA_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V60_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitPadB8Fp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v60_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_padB8_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::V61_MmaCutlassLikeTN_CpAsync2Fp16Acc_128x256_warp2x4_bk64_s2_swapxy:
        kernel_name =
            "v61_mma_cutlasslike_tn_cpasync2_fp16acc_128x256_warp2x4_bk64_s2_swapxy";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 64;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V62_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitNbSpreadFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v62_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_nbspread_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V63_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitCaFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v63_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_ca_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V64_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitBCross32Fp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v64_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_bcross32_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V65_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v65_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V66_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8Fp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v66_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V67_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitEpilogueVec8Fp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v67_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_epilogue_vec8_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V68_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitEpilogueWarpScratchVec8Fp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v68_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_epilogue_warpscratch_vec8_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V69_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitEpilogueVec8SmemCPad8Fp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v69_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_epilogue_vec8_smemc_pad8_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V70_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8Fp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v70_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V71_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8PtrIncFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v71_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_ptrinc_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V72_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8DynSmemFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v72_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_dynsmem_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V73_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8CaFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v73_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_ca_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V74_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8StageWrapFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v74_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_stagewrap_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V75_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragStreamBEpilogueVec8SmemCPad8Fp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v75_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_streamb_epilogue_vec8_smemc_pad8_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V76_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8Maxnreg160Fp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v76_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_maxnreg160_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V77_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8Maxnreg152Fp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v77_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_maxnreg152_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V78_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8ContigCopyFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v78_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_contigcopy_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V79_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4Fp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v79_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V80_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v80_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V81_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmA64ImmFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v81_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_a64imm_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V82_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmA64ImmIlCpFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v82_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_a64imm_ilcp_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V83_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v83_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V95_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffBReuseNMajorFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v95_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_breuse_nmajor_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V96_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffBReuseABoundaryFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v96_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_breuse_aboundary_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V93_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffLdsmInterleaveFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v93_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_ldsm_interleave_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V94_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffLdsmLdgstsInterleaveFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v94_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_ldsm_ldgsts_interleave_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V91_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffStage3UnrollFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v91_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_stage3unroll_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V92_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitWarpSpecCopyA2B4Fp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v92_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_warpspec_copy_a2b4_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V84_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmEpistoreFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v84_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_epistore_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V86_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffLdsmPipeFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v86_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_ldsm_pipe_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V87_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffFragdbufFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v87_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_fragdbuf_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V88_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYMidwaitFragpipeFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v88_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_midwait_fragpipe_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V89_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitCpinterleaveFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v89_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_postwait_cpinterleave_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::
        V90_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYMidwaitCpinterleaveFragpipeFp16Acc_128x256_warp2x4_bk32:
        kernel_name =
            "v90_mma_cutlasslike_tn_cutlassstyle_mainloop_faststage_noif_breuse_swapxy_midwait_cpinterleave_fragpipe_fp16acc_128x256_warp2x4_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "row_major";
        b_col_major = false;
        grid_swap_xy = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::V25_MmaPermutedBcolCpAsync2Fp16Acc_128x256_warp2x4_splitk_bk32:
        kernel_name =
            "v25_mma_permuted_bcol_cpasync2_fp16acc_128x256_warp2x4_splitk_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "col_major";
        b_col_major = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::V35_MmaPermutedBcolCpAsync2Fp16Acc_128x256_warp2x4_splitk_lb2_bk32:
        kernel_name =
            "v35_mma_permuted_bcol_cpasync2_fp16acc_128x256_warp2x4_splitk_lb2_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "col_major";
        b_col_major = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 4;
        break;
    case KernelVersion::V26_MmaPermutedBcolCpAsync2Fp16Acc_128x256_warp2x8_bk32:
        kernel_name =
            "v26_mma_permuted_bcol_cpasync2_fp16acc_128x256_warp2x8_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "col_major";
        b_col_major = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 8;
        warps_per_block = 16;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 2;
        break;
    case KernelVersion::V28_MmaPermutedBcolCpAsync2Fp16Acc_128x256_warp2x8_allcopy_bk32:
        kernel_name =
            "v28_mma_permuted_bcol_cpasync2_fp16acc_128x256_warp2x8_allcopy_bk32";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "col_major";
        b_col_major = true;
        tile_m = 128;
        tile_n = 256;
        warps_m = 2;
        warps_n = 8;
        warps_per_block = 16;
        block_k = 32;
        warp_m_tiles = 4;
        warp_n_tiles = 2;
        break;
    case KernelVersion::V27_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_bk64:
        kernel_name = "v27_mma_permuted_bcol_cpasync2_fp16acc_128x128_warp2x4_bk64";
        c_type = "FP16";
        c_is_fp16 = true;
        b_layout = "col_major";
        b_col_major = true;
        tile_m = 128;
        tile_n = 128;
        warps_m = 2;
        warps_n = 4;
        warps_per_block = 8;
        block_k = 64;
        warp_m_tiles = 4;
        warp_n_tiles = 2;
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

    auto apply_init = [&](std::string const &mode) -> bool {
        if (mode == "ones" || mode == "const") {
            fill_constant_half(hA, 1.0f);
            fill_constant_half(hB_row, 1.0f);
            return true;
        }
        if (mode == "random") {
            fill_random_half(hA, 0);
            fill_random_half(hB_row, 1);
            return true;
        }
        return false;
    };

    // Initialization strategy:
    // - If we do correctness: initialize using `check_init_mode` first, so CPU
    //   reference matches device input.
    // - For benchmark: (optionally) re-initialize to `bench_init_mode` after
    //   correctness. This matches the CUTLASS sample behavior (constant inputs)
    //   while still providing meaningful correctness on random inputs.
    std::string const first_mode = do_check ? check_init_mode : bench_init_mode;
    if (!apply_init(first_mode)) {
        std::cerr << "Unknown init mode: " << first_mode
                  << " (expected random|ones)\n";
        return 2;
    }
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

    // Some experimental kernels require >48KB shared memory per block.
    // Ada (sm_89) supports opt-in up to ~99KB (cudaDevAttrMaxSharedMemoryPerBlockOptin),
    // but we must set the function attributes before launch.
    {
        int max_smem_optin = 0;
        CHECK_CUDA(cudaDeviceGetAttribute(
            &max_smem_optin, cudaDevAttrMaxSharedMemoryPerBlockOptin, 0));

        auto optin_max_smem = [&](const void *fn) {
            cudaFuncAttributes attr{};
            CHECK_CUDA(cudaFuncGetAttributes(&attr, fn));
            int const max_dynamic =
                std::max(0, max_smem_optin - static_cast<int>(attr.sharedSizeBytes));
            CHECK_CUDA(cudaFuncSetAttribute(
                fn, cudaFuncAttributeMaxDynamicSharedMemorySize, max_dynamic));
            // Let the driver pick the shared/L1 carveout. For some kernels this
            // can slightly improve performance vs forcing MaxShared (at the
            // cost of reducing L1). If the kernel cannot launch due to shared
            // limits, we'll detect it immediately on the first run.
            CHECK_CUDA(cudaFuncSetAttribute(
                fn, cudaFuncAttributePreferredSharedMemoryCarveout,
                cudaSharedmemCarveoutDefault));
        };

        if (kernel ==
            KernelVersion::V24_MmaPermutedBcolCpAsync3Fp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_permuted_bcol_cpasync_fp16acc_128x256x32_warp2x4_warp64x64<
                        3>);
        }
        if (kernel ==
            KernelVersion::V37_MmaCutlassLikeTN_CpAsync3Fp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4<
                        3>);
        }
        if (kernel ==
            KernelVersion::V38_MmaCutlassLikeTN_CpAsync3Fp16Acc_128x256_warp2x4_bk32_opt) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_opt<
                        3>);
        }
        if (kernel ==
            KernelVersion::V39_MmaCutlassLikeTN_CpAsync3Fp16Acc_256x128_warp4x2_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_256x128x32_warp4x2<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V40_MmaCutlassLikeTN_CpAsync3Fp16Acc_128x256_warp2x4_bk32_interleaved) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_interleaved<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V41_MmaCutlassLikeTN_CpAsync3Fp16Acc_128x256_warp2x4_bk32_interleaved_bcross32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_interleaved_bcross32<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V42_MmaCutlassLikeTN_CutlassStyleMainloopFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V43_MmaCutlassLikeTN_CutlassStyleMainloopStreamAFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_streamA<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V44_MmaCutlassLikeTN_CutlassStyleMainloopFastStageFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V45_MmaCutlassLikeTN_CutlassStyleMainloopFastStageCaFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_ca<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V46_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V47_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V48_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseLateK0LdFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_late_k0ld<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V49_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V52_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V63_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitCaFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_ca<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V64_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitBCross32Fp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_bcross32<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V65_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V66_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8Fp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V67_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitEpilogueVec8Fp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_epilogue_vec8<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V68_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitEpilogueWarpScratchVec8Fp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_epilogue_warpscratch_vec8<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V69_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitEpilogueVec8SmemCPad8Fp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_epilogue_vec8_smemc_pad8<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V70_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8Fp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V71_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8PtrIncFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_ptrinc<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V72_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8DynSmemFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_dynsmem<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V73_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8CaFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_ca<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V74_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8StageWrapFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_stagewrap<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V75_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragStreamBEpilogueVec8SmemCPad8Fp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_streamb_epilogue_vec8_smemc_pad8<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V76_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8Maxnreg160Fp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_maxnreg160<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V77_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8Maxnreg152Fp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_maxnreg152<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V78_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8ContigCopyFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_contigcopy<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V79_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4Fp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V80_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V81_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmA64ImmFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_a64imm<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V82_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmA64ImmIlCpFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_a64imm_ilcp<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V83_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V95_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffBReuseNMajorFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_breuse_nmajor<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V96_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffBReuseABoundaryFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_breuse_aboundary<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V93_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffLdsmInterleaveFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_ldsm_interleave<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V94_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffLdsmLdgstsInterleaveFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_ldsm_ldgsts_interleave<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V91_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffStage3UnrollFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_stage3unroll<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V92_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitWarpSpecCopyA2B4Fp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_warpspec_copy_a2b4<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V84_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmEpistoreFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_epistore<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V86_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffLdsmPipeFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_ldsm_pipe<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V87_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffFragdbufFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_fragdbuf<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V88_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYMidwaitFragpipeFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_midwait_fragpipe<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V89_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitCpinterleaveFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_cpinterleave<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V90_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYMidwaitCpinterleaveFragpipeFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_midwait_cpinterleave_fragpipe<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V62_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitNbSpreadFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_nbspread<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V59_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitStagecolAFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_stagecolA<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V60_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitPadB8Fp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_padB8<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V61_MmaCutlassLikeTN_CpAsync2Fp16Acc_128x256_warp2x4_bk64_s2_swapxy) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync2_fp16acc_128x256x64_warp2x4_swapxy<
                        2>);
        }
        if (kernel ==
            KernelVersion::
                V53_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYMmaLdgstsInterleavedFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_il<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V54_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYStreamBFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_streamB<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V55_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitWarpStaggerNbFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_warpstagger_nb<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V56_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitHmmasLdgstsAltFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_hmma_ldgsts_alt<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V57_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSplitCopy4wA4wBFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_splitcopy4wA4wB<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V50_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfStreamAFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_streamA<
                        3>);
        }
        if (kernel ==
            KernelVersion::
                V51_MmaCutlassLikeTN_CutlassStyleMainloopMacLoopInterleavedSwapXYFp16Acc_128x256_warp2x4_bk32) {
            optin_max_smem(
                (const void *)
                    gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_streamA_swapxy<
                        3>);
        }
        if (kernel ==
            KernelVersion::V27_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_bk64) {
            optin_max_smem((const void *)
                               gemm_tc_mma_permuted_bcol_cpasync2_fp16acc_128x128x64_warp2x4);
        }
    }

    dim3 const block(warps_per_block * 32, 1, 1);
    dim3 const grid = grid_swap_xy ? dim3(kM / tile_m, kN / tile_n, 1)
                                   : dim3(kN / tile_n, kM / tile_m, 1);

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
            KernelVersion::V10_SmemPaddedFp16Acc_Skew16_128x128_8warps_bk32) {
            // Increased skew/padding (16 half) to further reduce bank conflicts.
            gemm_tc_wmma_smem_padded_acc<128, 128, 32, 4, 2, 16, 16, __half, __half>
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
        } else if (
            kernel == KernelVersion::V11_MmaSyncFp16Acc_128x128_8warps_bk64) {
            gemm_tc_mma_smem_padded_fp16acc<128, 128, 64, 4, 2, 8, 8>
                <<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::V12_MmaSyncFp16Acc_BSwizzle_128x128_8warps_bk32) {
            gemm_tc_mma_smem_padded_fp16acc<128, 128, 32, 4, 2, 8, 8, true>
                <<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (kernel ==
                   KernelVersion::V13_WmmaFp16Acc_128x64_8warps_bk32) {
            gemm_tc_wmma_smem_padded_acc<128, 64, 32, 4, 2, 8, 8, __half, __half>
                <<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::V14_WmmaFp16Acc_Pipelined_128x128_8warps_bk32) {
            gemm_tc_wmma_smem_padded_acc_pipelined<128, 128, 32, 4, 2, 8, 8,
                                                   __half, __half>
                <<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel == KernelVersion::V15_WmmaFp16Acc_PadB0_128x128_8warps_bk32) {
            gemm_tc_wmma_smem_padded_acc<128, 128, 32, 4, 2, 8, 0, __half, __half>
                <<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::V16_MmaPermutedBcolFp16Acc_128x128_warp2x4_bk32) {
            gemm_tc_mma_permuted_bcol_fp16acc_128x128x32_warp2x4<<<grid, block, 0,
                                                                  s>>>(
                dA, dB_col, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V17_MmaPermutedBcolCpAsync3Fp16Acc_128x128_warp2x4_bk32) {
            gemm_tc_mma_permuted_bcol_cpasync_fp16acc_128x128x32_warp2x4<3>
                <<<grid, block, 0, s>>>(dA, dB_col, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V18_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_bk32) {
            gemm_tc_mma_permuted_bcol_cpasync_fp16acc_128x128x32_warp2x4<2>
                <<<grid, block, 0, s>>>(dA, dB_col, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V32_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_padcol1_bk32) {
            // Same mapping as v18, but STAGE_COLS = 9 (8 used + 1 padding col).
            gemm_tc_mma_permuted_bcol_cpasync_fp16acc_128x128x32_warp2x4_padcols<
                2, 9><<<grid, block, 0, s>>>(dA, dB_col, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V33_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_nol2_bk32) {
            // Same as v18, but cp.async uses `cp.async.cg.shared.global` without
            // the `.L2::128B` cache policy hint.
            gemm_tc_mma_permuted_bcol_cpasync_fp16acc_128x128x32_warp2x4<2, false>
                <<<grid, block, 0, s>>>(dA, dB_col, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V34_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_k2pass_bk32) {
            // Same as v18, but schedules MMA as two passes (k0 then k1) to
            // increase the distance between dependent accumulator updates.
            gemm_tc_mma_permuted_bcol_cpasync_fp16acc_128x128x32_warp2x4<2, true,
                                                                             true>
                <<<grid, block, 0, s>>>(dA, dB_col, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V30_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_k2pass_bk32) {
            gemm_tc_mma_permuted_bcol_cpasync2_fp16acc_128x128x32_warp2x4_k2pass<<<
                grid, block, 0, s>>>(dA, dB_col, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V31_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_xor1_bk32) {
            gemm_tc_mma_permuted_bcol_cpasync2_fp16acc_128x128x32_warp2x4_xor1<<<
                grid, block, 0, s>>>(dA, dB_col, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V36_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_xor1_storefix_bk32) {
            gemm_tc_mma_permuted_bcol_cpasync2_fp16acc_128x128x32_warp2x4_xor1_storefix<<<
                grid, block, 0, s>>>(dA, dB_col, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V29_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x2_bk32) {
            gemm_tc_mma_permuted_bcol_cpasync2_fp16acc_128x128x32_warp2x2<<<grid,
                                                                                block, 0,
                                                                            s>>>(
                dA, dB_col, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V19_MmaPermutedBcolCpAsync2StreamAFp16Acc_128x128_warp2x4_bk32) {
            gemm_tc_mma_permuted_bcol_cpasync_fp16acc_streamA_128x128x32_warp2x4<
                2><<<grid, block, 0, s>>>(dA, dB_col, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V20_MmaPermutedBcolCpAsync2Lb3Fp16Acc_128x128_warp2x4_bk32) {
            gemm_tc_mma_permuted_bcol_cpasync2_fp16acc_128x128x32_warp2x4_lb3<<<
                grid, block, 0, s>>>(dA, dB_col, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V21_MmaPermutedBcolCpAsync2SplitAccFp16Acc_128x128_warp2x4_bk32) {
            gemm_tc_mma_permuted_bcol_cpasync2_fp16acc_splitacc_128x128x32_warp2x4<<<
                grid, block, 0, s>>>(dA, dB_col, dC_f16);
        } else if (
            kernel ==
            KernelVersion::V23_MmaPermutedBcolCpAsync2Fp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_permuted_bcol_cpasync_fp16acc_128x256x32_warp2x4_warp64x64<2>
                <<<grid, block, 0, s>>>(dA, dB_col, dC_f16);
        } else if (
            kernel ==
            KernelVersion::V24_MmaPermutedBcolCpAsync3Fp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_permuted_bcol_cpasync_fp16acc_128x256x32_warp2x4_warp64x64<3>
                <<<grid, block, 0, s>>>(dA, dB_col, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V37_MmaCutlassLikeTN_CpAsync3Fp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4<3>
                <<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V38_MmaCutlassLikeTN_CpAsync3Fp16Acc_128x256_warp2x4_bk32_opt) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_opt<3>
                <<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V39_MmaCutlassLikeTN_CpAsync3Fp16Acc_256x128_warp4x2_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_256x128x32_warp4x2<3>
                <<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V40_MmaCutlassLikeTN_CpAsync3Fp16Acc_128x256_warp2x4_bk32_interleaved) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_interleaved<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V41_MmaCutlassLikeTN_CpAsync3Fp16Acc_128x256_warp2x4_bk32_interleaved_bcross32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_interleaved_bcross32<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V42_MmaCutlassLikeTN_CutlassStyleMainloopFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V43_MmaCutlassLikeTN_CutlassStyleMainloopStreamAFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_streamA<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V44_MmaCutlassLikeTN_CutlassStyleMainloopFastStageFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V45_MmaCutlassLikeTN_CutlassStyleMainloopFastStageCaFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_ca<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V46_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V47_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V48_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseLateK0LdFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_late_k0ld<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V49_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V52_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V63_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitCaFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_ca<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V64_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitBCross32Fp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_bcross32<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V65_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V66_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8Fp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V67_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitEpilogueVec8Fp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_epilogue_vec8<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V68_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitEpilogueWarpScratchVec8Fp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_epilogue_warpscratch_vec8<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V69_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitEpilogueVec8SmemCPad8Fp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_epilogue_vec8_smemc_pad8<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V70_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8Fp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V71_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8PtrIncFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_ptrinc<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V72_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8DynSmemFp16Acc_128x256_warp2x4_bk32) {
            constexpr int TILE_M = 128;
            constexpr int TILE_N = 256;
            constexpr int TILE_K = 32;
            constexpr int A_STAGE_ELEMS = TILE_M * TILE_K;
            constexpr int B_STAGE_ELEMS = TILE_K * TILE_N;
            constexpr int DYN_SMEM_BYTES =
                3 * (A_STAGE_ELEMS + B_STAGE_ELEMS) * static_cast<int>(sizeof(__half));
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_dynsmem<
                3><<<grid, block, DYN_SMEM_BYTES, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V73_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8CaFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_ca<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V74_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8StageWrapFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_stagewrap<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V75_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragStreamBEpilogueVec8SmemCPad8Fp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_streamb_epilogue_vec8_smemc_pad8<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V76_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8Maxnreg160Fp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_maxnreg160<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V77_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8Maxnreg152Fp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_maxnreg152<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V78_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8ContigCopyFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_contigcopy<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V79_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4Fp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V80_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V81_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmA64ImmFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_a64imm<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V82_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmA64ImmIlCpFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_a64imm_ilcp<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V83_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V95_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffBReuseNMajorFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_breuse_nmajor<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V96_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffBReuseABoundaryFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_breuse_aboundary<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V93_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffLdsmInterleaveFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_ldsm_interleave<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V94_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffLdsmLdgstsInterleaveFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_ldsm_ldgsts_interleave<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V91_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffStage3UnrollFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_stage3unroll<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V92_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitWarpSpecCopyA2B4Fp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_warpspec_copy_a2b4<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V84_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmEpistoreFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_epistore<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V86_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffLdsmPipeFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_ldsm_pipe<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V87_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSingleFragEpilogueVec8SmemCPad8B8x4BaseImmLdsoffFragdbufFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_fragdbuf<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V88_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYMidwaitFragpipeFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_midwait_fragpipe<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V89_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitCpinterleaveFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_singlefrag_epilogue_vec8_smemc_pad8_b8x4_baseimm_ldsoff_cpinterleave<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V90_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYMidwaitCpinterleaveFragpipeFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_midwait_cpinterleave_fragpipe<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V53_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYMmaLdgstsInterleavedFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_il<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V54_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYStreamBFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_streamB<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V55_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitWarpStaggerNbFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_warpstagger_nb<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V56_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitHmmasLdgstsAltFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_hmma_ldgsts_alt<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V57_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitSplitCopy4wA4wBFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_splitcopy4wA4wB<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V58_MmaCutlassLikeTN_CpAsync2Fp16Acc_128x256_warp2x4_lowreg_lb2_swapxy) {
            gemm_tc_mma_cutlasslike_tn_cpasync2_fp16acc_128x256x32_warp2x4_lowreg_lb2_swapxy<
                2><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V59_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitStagecolAFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_stagecolA<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V60_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitPadB8Fp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_padB8<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V61_MmaCutlassLikeTN_CpAsync2Fp16Acc_128x256_warp2x4_bk64_s2_swapxy) {
            gemm_tc_mma_cutlasslike_tn_cpasync2_fp16acc_128x256x64_warp2x4_swapxy<
                2><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V62_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfBReuseSwapXYPostWaitNbSpreadFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_nbspread<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V50_MmaCutlassLikeTN_CutlassStyleMainloopFastStageNoIfStreamAFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_streamA<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V51_MmaCutlassLikeTN_CutlassStyleMainloopMacLoopInterleavedSwapXYFp16Acc_128x256_warp2x4_bk32) {
            gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_streamA_swapxy<
                3><<<grid, block, 0, s>>>(dA, dB_row, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V25_MmaPermutedBcolCpAsync2Fp16Acc_128x256_warp2x4_splitk_bk32) {
            gemm_tc_mma_permuted_bcol_cpasync2_fp16acc_128x256x32_warp2x4_warp64x64_splitk<<<
                grid, block, 0, s>>>(dA, dB_col, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V35_MmaPermutedBcolCpAsync2Fp16Acc_128x256_warp2x4_splitk_lb2_bk32) {
            gemm_tc_mma_permuted_bcol_cpasync2_fp16acc_128x256x32_warp2x4_warp64x64_splitk_lb2<<<
                grid, block, 0, s>>>(dA, dB_col, dC_f16);
        } else if (
            kernel ==
            KernelVersion::V26_MmaPermutedBcolCpAsync2Fp16Acc_128x256_warp2x8_bk32) {
            gemm_tc_mma_permuted_bcol_cpasync2_fp16acc_128x256x32_warp2x8<<<grid,
                                                                                block,
                                                                                0, s>>>(
                dA, dB_col, dC_f16);
        } else if (
            kernel ==
            KernelVersion::
                V28_MmaPermutedBcolCpAsync2Fp16Acc_128x256_warp2x8_allcopy_bk32) {
            gemm_tc_mma_permuted_bcol_cpasync2_fp16acc_128x256x32_warp2x8_allcopy<<<
                grid, block, 0, s>>>(dA, dB_col, dC_f16);
        } else if (
            kernel ==
            KernelVersion::V27_MmaPermutedBcolCpAsync2Fp16Acc_128x128_warp2x4_bk64) {
            gemm_tc_mma_permuted_bcol_cpasync2_fp16acc_128x128x64_warp2x4<<<grid,
                                                                              block, 0,
                                                                              s>>>(
                dA, dB_col, dC_f16);
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

    // If requested, reinitialize inputs for the benchmark.
    if (bench_init_mode != first_mode) {
        if (!apply_init(bench_init_mode)) {
            std::cerr << "Unknown bench init mode: " << bench_init_mode
                      << " (expected random|ones)\n";
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
        pack_col_major_from_row_major(hB_row, hB_col);
        CHECK_CUDA(cudaMemcpy(dA, hA.data(),
                              static_cast<size_t>(kM) * kK * sizeof(__half),
                              cudaMemcpyHostToDevice));
        CHECK_CUDA(cudaMemcpy(dB_row, hB_row.data(),
                              static_cast<size_t>(kK) * kN * sizeof(__half),
                              cudaMemcpyHostToDevice));
        CHECK_CUDA(cudaMemcpy(dB_col, hB_col.data(),
                              static_cast<size_t>(kK) * kN * sizeof(__half),
                              cudaMemcpyHostToDevice));
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
