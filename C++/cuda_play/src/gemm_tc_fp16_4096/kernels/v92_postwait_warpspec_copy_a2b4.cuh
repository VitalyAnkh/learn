#pragma once

// v92: warp-specialized cp.async ("A copy warps" + "B copy warps") to reduce
// lockstep copy bursts.
//
// Motivation:
// - CUTLASS/CUTE reaches ~195–200 TFLOPS on this fixed 4096^3 GEMM (RTX 4080),
//   while our best self-written kernels are ~188 TFLOPS in typical runs.
// - SASS diffs suggest we're *very* close in terms of HMMA/LDSM/LDGSTS counts,
//   so the remaining few percent likely come from subtle scheduling / power /
//   issue-pressure differences.
// - One suspected issue: in v83/v87, **all 8 warps** execute the same schedule,
//   issuing the 6 cp.async (LDGSTS) copies at nearly the same points. This can
//   create "bursty" LDGSTS regions and increase LG throttle / power.
//
// Technique:
// - Keep the same math shape and shared-memory swizzle as v83 (CUTLASS-like TN):
//   - TB 128x256x32, warp 64x64x32, stages=3, postwait.
//   - `mma.sync.m16n8k16.row.col.f16.f16.f16.f16` (FP16 accumulate + FP16 store)
//   - A/B staged in shared using `tensorop_rm_offset` (pitch-linear swizzle).
// - But change *who issues* cp.async:
//   - 2 warps (64 threads) copy the A tile: each thread copies 8x 16B vectors
//     by stepping rows in +16 increments (row delta -> constant +0x400B in smem).
//   - 4 warps (128 threads) copy the B tile: each thread copies 8x 16B vectors
//     (two 8-half groups per thread) with the same +64-half vector stride as v83.
//   - 2 warps issue **no** cp.async copies and can proceed to LDSM/HMMA earlier.
//
// Expected effect:
// - Introduce warp-level phase differences inside the CTA so that some warps are
//   issuing HMMA while others are issuing LDGSTS (copy) at the same time.
// - Reduce lockstep bursts and potentially improve steady-state throughput.
//
// Notes:
// - This is a scheduling experiment inspired by CUTLASS' "producer/consumer"
//   feel, but still uses the same `cp.async.wait_group + __syncthreads()` sync.
template <int N_STAGES>
__launch_bounds__(256)
__global__ void
gemm_tc_mma_cutlasslike_tn_cpasync_fp16acc_128x256x32_warp2x4_cutlass_style_faststage_noif_breuse_swapxy_postwait_warpspec_copy_a2b4(
    const __half *__restrict__ A, const __half *__restrict__ B,
    __half *__restrict__ C) {
    static_assert(N_STAGES >= 2, "cp.async pipeline needs at least 2 stages");
    static_assert(N_STAGES == 3, "v92 is specialized for N_STAGES=3");

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

    // SwapXY mapping (CUTLASS-like): grid.x = M tiles, grid.y = N tiles.
    int const block_m = static_cast<int>(blockIdx.x) * TILE_M;
    int const block_n = static_cast<int>(blockIdx.y) * TILE_N;

    uint32_t const As_base = __cvta_generic_to_shared(As);
    uint32_t const Bs_base = __cvta_generic_to_shared(Bs);

    // Accumulators (FP16 accumulate packed as f16x2 in uint32).
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
    // Warp-specialized copy thread-maps
    // ------------------------------------------------------------
    // A copy: warps [0,2) => 2 warps, 64 threads.
    // Each thread: one "col group" (0..3) and a base row (0..15), then iterates
    // row += 16 to cover all 128 rows at that col group.
    constexpr int A_COPY_WARPS = 2;
    bool const is_a_copy_warp = (warp_id < A_COPY_WARPS);
    int a_row_base = 0;
    int a_col = 0; // half
    uint32_t a_smem_off0_bytes = 0;
    __half const *gA_pref0 = nullptr;
    if (is_a_copy_warp) {
        int const a_tid = warp_id * 32 + lane_id; // 0..63
        int const a_group = a_tid & 3;           // 0..3
        a_row_base = a_tid >> 2;                 // 0..15
        a_col = a_group * 8;                     // half
        a_smem_off0_bytes = static_cast<uint32_t>(
            tensorop_rm_offset<32, TILE_K>(a_row_base, a_col) << 1);
        // Prefetch base for stage (N_STAGES-1) == 2 (k_tile=64).
        gA_pref0 = A + (block_m + a_row_base) * kK + (N_STAGES - 1) * TILE_K + a_col;
    }

    // B copy: warps [2,6) => 4 warps, 128 threads.
    // Each thread: one row (0..31) and a "group" (0..3). It copies 2x groups:
    //   group (col0 = group*8) and group+4 (col0 = group*8 + 32),
    // and for each col0 it copies 4 vectors at +64-half stride (0,64,128,192).
    constexpr int B_COPY_WARP_BEGIN = 2;
    constexpr int B_COPY_WARPS = 4;
    constexpr int B_COPY_WARP_END = B_COPY_WARP_BEGIN + B_COPY_WARPS; // 6
    bool const is_b_copy_warp = (warp_id >= B_COPY_WARP_BEGIN) && (warp_id < B_COPY_WARP_END);
    int b_row = 0;
    int b_col0 = 0; // half
    uint32_t b_smem_off0_bytes = 0;
    uint32_t b_smem_off4_bytes = 0;
    __half const *gB_pref0 = nullptr;
    if (is_b_copy_warp) {
        int const b_warp = warp_id - B_COPY_WARP_BEGIN; // 0..3
        int const b_tid = b_warp * 32 + lane_id;        // 0..127
        int const b_group = b_tid & 3;                  // 0..3
        b_row = b_tid >> 2;                             // 0..31
        b_col0 = b_group * 8;                           // half
        b_smem_off0_bytes = static_cast<uint32_t>(
            tensorop_rm_offset<64, TILE_N>(b_row, b_col0) << 1);
        b_smem_off4_bytes = static_cast<uint32_t>(
            tensorop_rm_offset<64, TILE_N>(b_row, b_col0 + 32) << 1);
        // Prefetch base for stage (N_STAGES-1) == 2 (k_tile=64).
        gB_pref0 =
            B + (((N_STAGES - 1) * TILE_K) + b_row) * kN + (block_n + b_col0);
    }

    // Constant deltas for the copy loops.
    // A: row += 16 => +16*kK half in gmem, and +0x400 bytes in smem for Crosswise<16,32>.
    constexpr int A_GMEM_ROW_DELTA_HALF = 16 * kK; // 65536 half
    constexpr uint32_t A_SMEM_ROW_DELTA_BYTES = 0x400; // 1024B
    // B: vector stride along N is +64 half (16B), and the corresponding swizzled
    // shared address delta for Crosswise=64 is +0x80 bytes (observed from CUTLASS).
    constexpr int B_VEC_DELTA_HALF = 64;
    constexpr uint32_t B_SMEM_VEC_DELTA_BYTES = 0x80;

    // Prefetch stride per K-block.
    constexpr int gA_step = TILE_K;      // half
    constexpr int gB_step = TILE_K * kN; // half

    // ------------------------------------------------------------
    // ldmatrix offsets (compute warps) (same as v83 base+imm scheme)
    // ------------------------------------------------------------
    constexpr uint32_t A_M_DELTA_BYTES = 0x400;       // +16 rows in A
    constexpr uint32_t B_KGROUP_DELTA_BYTES = 0x2000; // kk=16 within a stage

    uint32_t a_ld_base_bytes[2]; // (kk=0,m=0) and (kk=16,m=0)
    uint32_t b_ld_off_bytes[4];  // kk=0 only, nb=0..3

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
    // Prologue: prefetch first (N_STAGES-1) K blocks (tiles 0 and 1).
    // ------------------------------------------------------------
#pragma unroll
    for (int stage = 0; stage < (N_STAGES - 1); ++stage) {
        int const k_tile = stage * TILE_K;
        uint32_t const a_store_base =
            As_base + static_cast<uint32_t>(stage * A_STAGE_BYTES);
        uint32_t const b_store_base =
            Bs_base + static_cast<uint32_t>(stage * B_STAGE_BYTES);

        if (is_a_copy_warp) {
            __half const *gA_base =
                A + (block_m + a_row_base) * kK + k_tile + a_col;
            uint32_t const a_store = a_store_base + a_smem_off0_bytes;
#pragma unroll
            for (int it = 0; it < 8; ++it) {
                cp_async_cg_L2_16B_addr(a_store + it * A_SMEM_ROW_DELTA_BYTES,
                                        gA_base + it * A_GMEM_ROW_DELTA_HALF);
            }
        }

        if (is_b_copy_warp) {
            __half const *gB_base =
                B + (k_tile + b_row) * kN + (block_n + b_col0);
            uint32_t const b_store0 = b_store_base + b_smem_off0_bytes;
            uint32_t const b_store4 = b_store_base + b_smem_off4_bytes;
#pragma unroll
            for (int it = 0; it < 4; ++it) {
                cp_async_cg_L2_16B_addr(b_store0 + it * B_SMEM_VEC_DELTA_BYTES,
                                        gB_base + it * B_VEC_DELTA_HALF);
            }
            // group+4: same row, col0 + 32 half
            __half const *gB_base4 = gB_base + 32;
#pragma unroll
            for (int it = 0; it < 4; ++it) {
                cp_async_cg_L2_16B_addr(b_store4 + it * B_SMEM_VEC_DELTA_BYTES,
                                        gB_base4 + it * B_VEC_DELTA_HALF);
            }
        }

        // Commit groups uniformly (matches CUTLASS style; safe for empty groups).
        cp_async_commit_group();
    }

    cp_async_wait_group<N_STAGES - 2>();
    __syncthreads();

    // Ring pointers over stages (bytes in shared address space).
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

    // Prefetch base pointers for the steady-state (k_prefetch starts at tile 2).
    __half const *gA_pref = gA_pref0;
    __half const *gB_pref = gB_pref0;

    // Warp fragments for kgroup0 (kk=0): load from stage 0.
    uint32_t aReg[4][4];
    uint32_t bReg[4][4];

#pragma unroll
    for (int nb = 0; nb < 4; ++nb) {
        uint32_t const addr_b = b_load_base + b_ld_off_bytes[nb];
        ldmatrix_x4_trans(bReg[nb][0], bReg[nb][1], bReg[nb][2], bReg[nb][3],
                          addr_b);
    }
    {
        uint32_t const addr_a0 = a_load_base + a_ld_base_bytes[0];
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

    for (int k_iter = 0; k_iter < MAIN_ITERS; ++k_iter) {
        // MMA kgroup0 (kk=0).
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

        // Warp-specialized prefetch for the next stage.
        if (is_a_copy_warp) {
            uint32_t const a_store = a_store_base + a_smem_off0_bytes;
#pragma unroll
            for (int it = 0; it < 8; ++it) {
                cp_async_cg_L2_16B_addr(a_store + it * A_SMEM_ROW_DELTA_BYTES,
                                        gA_pref + it * A_GMEM_ROW_DELTA_HALF);
            }
            gA_pref += gA_step;
        }

        if (is_b_copy_warp) {
            uint32_t const b_store0 = b_store_base + b_smem_off0_bytes;
            uint32_t const b_store4 = b_store_base + b_smem_off4_bytes;
#pragma unroll
            for (int it = 0; it < 4; ++it) {
                cp_async_cg_L2_16B_addr(b_store0 + it * B_SMEM_VEC_DELTA_BYTES,
                                        gB_pref + it * B_VEC_DELTA_HALF);
            }
            __half const *gB_pref4 = gB_pref + 32;
#pragma unroll
            for (int it = 0; it < 4; ++it) {
                cp_async_cg_L2_16B_addr(b_store4 + it * B_SMEM_VEC_DELTA_BYTES,
                                        gB_pref4 + it * B_VEC_DELTA_HALF);
            }
            gB_pref += gB_step;
        }

        // Commit uniformly.
        cp_async_commit_group();

        // Load kgroup1 (kk=16) into regs (overwrite).
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[nb];
            ldmatrix_x4_trans_off<B_KGROUP_DELTA_BYTES>(
                bReg[nb][0], bReg[nb][1], bReg[nb][2], bReg[nb][3], addr_b);
        }
        {
            uint32_t const addr_a0 = a_load_base + a_ld_base_bytes[1];
            ldmatrix_x4(aReg[0][0], aReg[0][1], aReg[0][2], aReg[0][3], addr_a0);
            ldmatrix_x4_off<A_M_DELTA_BYTES>(aReg[1][0], aReg[1][1], aReg[1][2],
                                             aReg[1][3], addr_a0);
            ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(aReg[2][0], aReg[2][1],
                                                 aReg[2][2], aReg[2][3], addr_a0);
            ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(aReg[3][0], aReg[3][1],
                                                 aReg[3][2], aReg[3][3], addr_a0);
        }

        // MMA kgroup1 (kk=16).
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

        // Advance stage ring pointers (add+wrap).
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

        // Load next iter kgroup0 (kk=0).
#pragma unroll
        for (int nb = 0; nb < 4; ++nb) {
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[nb];
            ldmatrix_x4_trans(bReg[nb][0], bReg[nb][1], bReg[nb][2], bReg[nb][3],
                              addr_b);
        }
        {
            uint32_t const addr_a0 = a_load_base + a_ld_base_bytes[0];
            ldmatrix_x4(aReg[0][0], aReg[0][1], aReg[0][2], aReg[0][3], addr_a0);
            ldmatrix_x4_off<A_M_DELTA_BYTES>(aReg[1][0], aReg[1][1], aReg[1][2],
                                             aReg[1][3], addr_a0);
            ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(aReg[2][0], aReg[2][1],
                                                 aReg[2][2], aReg[2][3], addr_a0);
            ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(aReg[3][0], aReg[3][1],
                                                 aReg[3][2], aReg[3][3], addr_a0);
        }
    }

    // Tail + epilogue: same as v83.
    {
        // k_iter = MAIN_ITERS
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
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[nb];
            ldmatrix_x4_trans_off<B_KGROUP_DELTA_BYTES>(
                bReg[nb][0], bReg[nb][1], bReg[nb][2], bReg[nb][3], addr_b);
        }
        {
            uint32_t const addr_a0 = a_load_base + a_ld_base_bytes[1];
            ldmatrix_x4(aReg[0][0], aReg[0][1], aReg[0][2], aReg[0][3], addr_a0);
            ldmatrix_x4_off<A_M_DELTA_BYTES>(aReg[1][0], aReg[1][1], aReg[1][2],
                                             aReg[1][3], addr_a0);
            ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(aReg[2][0], aReg[2][1],
                                                 aReg[2][2], aReg[2][3], addr_a0);
            ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(aReg[3][0], aReg[3][1],
                                                 aReg[3][2], aReg[3][3], addr_a0);
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
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[nb];
            ldmatrix_x4_trans(bReg[nb][0], bReg[nb][1], bReg[nb][2], bReg[nb][3],
                              addr_b);
        }
        {
            uint32_t const addr_a0 = a_load_base + a_ld_base_bytes[0];
            ldmatrix_x4(aReg[0][0], aReg[0][1], aReg[0][2], aReg[0][3], addr_a0);
            ldmatrix_x4_off<A_M_DELTA_BYTES>(aReg[1][0], aReg[1][1], aReg[1][2],
                                             aReg[1][3], addr_a0);
            ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(aReg[2][0], aReg[2][1],
                                                 aReg[2][2], aReg[2][3], addr_a0);
            ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(aReg[3][0], aReg[3][1],
                                                 aReg[3][2], aReg[3][3], addr_a0);
        }
    }

    {
        // Final iteration (no more prefetch)
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
            uint32_t const addr_b = b_load_base + b_ld_off_bytes[nb];
            ldmatrix_x4_trans_off<B_KGROUP_DELTA_BYTES>(
                bReg[nb][0], bReg[nb][1], bReg[nb][2], bReg[nb][3], addr_b);
        }
        {
            uint32_t const addr_a0 = a_load_base + a_ld_base_bytes[1];
            ldmatrix_x4(aReg[0][0], aReg[0][1], aReg[0][2], aReg[0][3], addr_a0);
            ldmatrix_x4_off<A_M_DELTA_BYTES>(aReg[1][0], aReg[1][1], aReg[1][2],
                                             aReg[1][3], addr_a0);
            ldmatrix_x4_off<2 * A_M_DELTA_BYTES>(aReg[2][0], aReg[2][1],
                                                 aReg[2][2], aReg[2][3], addr_a0);
            ldmatrix_x4_off<3 * A_M_DELTA_BYTES>(aReg[3][0], aReg[3][1],
                                                 aReg[3][2], aReg[3][3], addr_a0);
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
    // Epilogue: scratch + vec8 stores (same as v83/v70 family)
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

