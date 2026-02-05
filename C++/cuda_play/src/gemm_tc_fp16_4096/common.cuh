#pragma once

#include <cstdint>

#include <cuda_fp16.h>
#include <cuda_runtime.h>
#include <mma.h>

// -----------------------------
// GEMM config (fixed size)
// -----------------------------
//
// This project intentionally targets a *single*, fixed problem shape:
//   M = N = K = 4096
// for benchmarking the upper bound of Tensor Core throughput on RTX 4080.
//
// Keeping the problem fixed enables simplifying assumptions:
// - No edge predicates in the hot loop (all tiles are in-bounds).
// - No need for dynamic shape dispatch.
// - We can split steady-state vs tail logic to remove branches.
constexpr int kM = 4096;
constexpr int kN = 4096;
constexpr int kK = 4096;

constexpr int kWmmaM = 16;
constexpr int kWmmaN = 16;
constexpr int kWmmaK = 16;

// Default baseline tile sizes (some kernels override via template params).
constexpr int kBlockM = 128;
constexpr int kBlockN = 128;

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
//
// Notes:
// - We only use 16B copies (int4 / 8 half) to match the `cp.async` granularity.
// - We intentionally omit the `"memory"` clobber (this matches CUTLASS' practice)
//   to give the compiler more freedom to schedule copies around compute.
// -----------------------------
__device__ __forceinline__ void cp_async_cg_16B(void *smem_ptr,
                                                void const *gmem_ptr) {
    uint32_t smem_addr = __cvta_generic_to_shared(smem_ptr);
    asm volatile("cp.async.cg.shared.global [%0], [%1], 16;\n" : : "r"(smem_addr),
                 "l"(gmem_ptr));
}

__device__ __forceinline__ void cp_async_cg_L2_16B(void *smem_ptr,
                                                   void const *gmem_ptr) {
    // `.L2::128B` is commonly used in high-perf matmul kernels to encourage L2
    // locality for the streaming K dimension.
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

__device__ __forceinline__ void cp_async_ca_L2_16B_addr(uint32_t smem_addr,
                                                        void const *gmem_ptr) {
    // CUTLASS uses `cp.async.ca.shared.global[.L2::128B]` in some mainloops.
    // On Ada (sm_89) this may reduce latency vs `.cg` in some cases.
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
// Inline PTX MMA: ldmatrix + mma.sync (m16n8k16) with FP16 accumulate/store.
//
// We use:
//   - `ldmatrix.sync.aligned.m8n8.x4.shared.b16` for A
//   - `ldmatrix.sync.aligned.m8n8.x4.trans.shared.b16` for B (row-major B in smem)
//   - `mma.sync.aligned.m16n8k16.row.col.f16.f16.f16.f16`
// -----------------------------
__device__ __forceinline__ void ldmatrix_x4(uint32_t &a0, uint32_t &a1,
                                            uint32_t &a2, uint32_t &a3,
                                            uint32_t smem_addr) {
    asm volatile(
        "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {%0,%1,%2,%3}, [%4];\n"
        : "=r"(a0), "=r"(a1), "=r"(a2), "=r"(a3)
        : "r"(smem_addr));
}

// ldmatrix helpers with a compile-time constant byte offset. These enable
// emitting SASS like `LDSM ... [Rbase+0x400]` (rather than computing an address
// in a separate instruction).
//
// NOTE: `OFFSET_BYTES` must be a multiple of 16 to preserve alignment.
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
    asm volatile("add.rn.f16x2 %0, %1, %2;\n" : "=r"(out) : "r"(a), "r"(b));
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
