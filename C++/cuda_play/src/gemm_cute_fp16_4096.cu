#include <cuda_fp16.h>
#include <cuda_runtime.h>

#include <algorithm>
#include <chrono>
#include <cstdint>
#include <cstdlib>
#include <iomanip>
#include <iostream>
#include <random>
#include <string>
#include <vector>

// This executable is a "CUTE/CUTLASS reference-style" FP16 Tensor Core GEMM for
// the fixed problem size M=N=K=4096.
//
// Motivation:
// - We already have a hand-written inline-PTX kernel (`gemm_tc_fp16_4096`) that
//   hits ~201–202 TFLOPS peak mode on RTX 4080.
// - This program provides a *CUTE/CUTLASS-based* equivalent benchmark harness
//   (correctness + warmup/iters/trials + ms/TFLOPS/config printing) so you can
//   study and compare "library-grade" kernel scheduling and epilogue choices
//   against the hand-written versions.
//
// Notes:
// - Uses `cutlass::gemm::device::Gemm` which internally uses CUTE kernels.
// - Requires `CUTLASS_HOME` to be set at CMake configure time so we can include
//   CUTLASS headers. We avoid hardcoding the path.

#include "cutlass/cutlass.h"
#include "cutlass/gemm/device/gemm.h"

namespace {

constexpr int kM = 4096;
constexpr int kN = 4096;
constexpr int kK = 4096;

#define CUDA_CHECK(expr)                                                      \
  do {                                                                        \
    cudaError_t const status = (expr);                                        \
    if (status != cudaSuccess) {                                              \
      std::cerr << "CUDA error: " << cudaGetErrorString(status)               \
                << " at " << __FILE__ << ":" << __LINE__ << std::endl;        \
      std::exit(EXIT_FAILURE);                                                \
    }                                                                         \
  } while (0)

enum class InitMode { Random, Ones };

static InitMode parse_init_mode(std::string const &s) {
  if (s == "random") return InitMode::Random;
  if (s == "ones") return InitMode::Ones;
  std::cerr << "Unknown init mode: " << s << " (expected random|ones)\n";
  std::exit(EXIT_FAILURE);
}

static void fill_half(std::vector<cutlass::half_t> &v, InitMode mode,
                      uint32_t seed) {
  if (mode == InitMode::Ones) {
    std::fill(v.begin(), v.end(), cutlass::half_t(1.0f));
    return;
  }

  std::mt19937 rng(seed);
  std::uniform_real_distribution<float> dist(-1.0f, 1.0f);
  for (auto &x : v) {
    x = cutlass::half_t(dist(rng));
  }
}

static float half_to_float(cutlass::half_t h) { return static_cast<float>(h); }

static cutlass::half_t float_to_half(float x) { return cutlass::half_t(x); }

struct ErrorStats {
  float max_abs = 0.0f;
  float max_rel = 0.0f;
  int max_i = -1;
  int max_j = -1;
};

template <typename LayoutA, typename LayoutB, typename LayoutC>
static ErrorStats check_subset_cpu_ref(int verify_m, int verify_n,
                                       std::vector<cutlass::half_t> const &A,
                                       std::vector<cutlass::half_t> const &B,
                                       std::vector<cutlass::half_t> const &C,
                                       int lda, int ldb, int ldc) {
  auto idxA = [&](int i, int k) -> int {
    if constexpr (std::is_same_v<LayoutA, cutlass::layout::ColumnMajor>) {
      return i + k * lda;
    } else {
      return i * lda + k;
    }
  };
  auto idxB = [&](int k, int j) -> int {
    if constexpr (std::is_same_v<LayoutB, cutlass::layout::ColumnMajor>) {
      return k + j * ldb;
    } else {
      return k * ldb + j;
    }
  };
  auto idxC = [&](int i, int j) -> int {
    if constexpr (std::is_same_v<LayoutC, cutlass::layout::ColumnMajor>) {
      return i + j * ldc;
    } else {
      return i * ldc + j;
    }
  };

  ErrorStats stats;
  constexpr float kEps = 1e-6f;
  for (int i = 0; i < verify_m; ++i) {
    for (int j = 0; j < verify_n; ++j) {
      float acc = 0.0f;
      for (int k = 0; k < kK; ++k) {
        float const a = half_to_float(A[idxA(i, k)]);
        float const b = half_to_float(B[idxB(k, j)]);
        acc += a * b;
      }
      float const ref = acc; // alpha=1, beta=0
      float const got = half_to_float(C[idxC(i, j)]);
      float const abs_err = std::abs(got - ref);
      float const rel_err = abs_err / std::max(std::abs(ref), kEps);
      if (abs_err > stats.max_abs) {
        stats.max_abs = abs_err;
        stats.max_i = i;
        stats.max_j = j;
      }
      stats.max_rel = std::max(stats.max_rel, rel_err);
    }
  }
  return stats;
}

static void print_usage(char const *argv0) {
  std::cout << "Usage: " << argv0
            << " [--warmup=20] [--iters=500] [--trials=5]\n"
               "       [--check_init=random|ones] [--bench_init=random|ones]\n"
               "       [--init=random|ones]  (legacy alias; sets both)\n"
               "       [--verify_m=128] [--verify_n=128] [--skip_check]\n";
}

} // namespace

int main(int argc, char **argv) {
  int warmup = 20;
  int iters = 500;
  int trials = 5;
  std::string check_init_mode = "random";
  std::string bench_init_mode = "ones";
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

    std::cerr << "Unknown arg: " << arg << "\n";
    print_usage(argv[0]);
    return 1;
  }

  if (verify_m <= 0 || verify_m > kM || verify_n <= 0 || verify_n > kN) {
    std::cerr << "Invalid verify size: verify_m=" << verify_m
              << " verify_n=" << verify_n << "\n";
    return 1;
  }

  CUDA_CHECK(cudaSetDevice(0));

  cudaDeviceProp prop{};
  CUDA_CHECK(cudaGetDeviceProperties(&prop, 0));

  std::cout << "CUTLASS/CUTE FP16 Tensor Core GEMM (fixed 4096^3)\n"
            << "  GPU: " << prop.name << " (SM" << prop.major << prop.minor
            << "), SMs=" << prop.multiProcessorCount << "\n"
            << "  M=N=K=4096\n"
            << "  check_init: " << check_init_mode << "\n"
            << "  bench_init: " << bench_init_mode << "\n";
  if (bench_init_mode == "random") {
    std::cout
        << "  note: random benchmark inputs can increase switching activity and "
           "may trigger power/clock throttling; use `--bench_init=ones` for peak\n";
  }

  // CUTLASS configuration (known good on this RTX 4080 for peak mode).
  using Layout = cutlass::layout::ColumnMajor;
  using Element = cutlass::half_t;
  using Accumulator = cutlass::half_t; // FP16 accumulate to reach peak.

  using CutlassGemm = cutlass::gemm::device::Gemm<
      Element, Layout, Element, Layout, Element, Layout, Accumulator,
      cutlass::arch::OpClassTensorOp,
      cutlass::arch::Sm80, // SM80 tensor op path works on SM89
      cutlass::gemm::GemmShape<128, 256, 32>, // TB
      cutlass::gemm::GemmShape<64, 64, 32>,   // warp
      cutlass::gemm::GemmShape<16, 8, 16>,    // instruction
      cutlass::epilogue::thread::LinearCombination<Element, 8, Accumulator,
                                                   Accumulator>,
      cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<>, 3, 8, 8>;

  std::cout << "Kernel config (CUTLASS device::Gemm)\n"
            << "  Layout: ColumnMajor (A,B,C)\n"
            << "  TB: 128x256x32, warp: 64x64x32, inst: 16x8x16\n"
            << "  stages: 3, alignA/B: 8 elements, acc: FP16, out: FP16\n";

  // Leading dimensions for ColumnMajor.
  int const lda = kM;
  int const ldb = kK;
  int const ldc = kM;

  size_t const elems_A = static_cast<size_t>(kM) * kK;
  size_t const elems_B = static_cast<size_t>(kK) * kN;
  size_t const elems_C = static_cast<size_t>(kM) * kN;

  std::vector<Element> hA(elems_A);
  std::vector<Element> hB(elems_B);
  std::vector<Element> hC(elems_C);

  Element *dA = nullptr;
  Element *dB = nullptr;
  Element *dC = nullptr;
  CUDA_CHECK(cudaMalloc(&dA, elems_A * sizeof(Element)));
  CUDA_CHECK(cudaMalloc(&dB, elems_B * sizeof(Element)));
  CUDA_CHECK(cudaMalloc(&dC, elems_C * sizeof(Element)));

  auto init_device = [&](InitMode mode) {
    fill_half(hA, mode, /*seed=*/1u);
    fill_half(hB, mode, /*seed=*/2u);
    std::fill(hC.begin(), hC.end(), float_to_half(0.0f));
    CUDA_CHECK(cudaMemcpy(dA, hA.data(), elems_A * sizeof(Element),
                          cudaMemcpyHostToDevice));
    CUDA_CHECK(cudaMemcpy(dB, hB.data(), elems_B * sizeof(Element),
                          cudaMemcpyHostToDevice));
    CUDA_CHECK(cudaMemcpy(dC, hC.data(), elems_C * sizeof(Element),
                          cudaMemcpyHostToDevice));
  };

  InitMode const check_mode = parse_init_mode(check_init_mode);
  InitMode const bench_mode = parse_init_mode(bench_init_mode);

  // Initialize once for correctness or benchmark (depending on `--skip_check`).
  InitMode const first_mode = do_check ? check_mode : bench_mode;
  init_device(first_mode);

  Element const alpha = float_to_half(1.0f);
  Element const beta = float_to_half(0.0f);

  CutlassGemm gemm_op;

  cutlass::TensorRef<Element const, Layout> ref_A{dA,
                                                  Layout::packed({kM, kK})};
  cutlass::TensorRef<Element const, Layout> ref_B{dB,
                                                  Layout::packed({kK, kN})};
  cutlass::TensorRef<Element const, Layout> ref_C{dC,
                                                  Layout::packed({kM, kN})};
  cutlass::TensorRef<Element, Layout> ref_D{dC, Layout::packed({kM, kN})};

  typename CutlassGemm::EpilogueOutputOp::Params epilogue_params{alpha, beta};
  typename CutlassGemm::Arguments args({kM, kN, kK}, ref_A, ref_B, ref_C, ref_D,
                                       epilogue_params);

  cutlass::Status status = gemm_op.can_implement(args);
  if (status != cutlass::Status::kSuccess) {
    std::cerr << "ERROR: CUTLASS can_implement failed: "
              << cutlassGetStatusString(status) << "\n";
    return 1;
  }

  if (do_check) {
    std::cout << "\n[Correctness] verify subset: " << verify_m << "x" << verify_n
              << " (m,n from [0,0])\n";

    auto const t0 = std::chrono::high_resolution_clock::now();
    status = gemm_op(args);
    if (status != cutlass::Status::kSuccess) {
      std::cerr << "ERROR: CUTLASS GEMM failed: " << cutlassGetStatusString(status)
                << "\n";
      return 1;
    }
    CUDA_CHECK(cudaDeviceSynchronize());
    auto const t1 = std::chrono::high_resolution_clock::now();

    CUDA_CHECK(cudaMemcpy(hC.data(), dC, elems_C * sizeof(Element),
                          cudaMemcpyDeviceToHost));

    double const cpu_ref_ms =
        std::chrono::duration<double, std::milli>(t1 - t0).count();

    ErrorStats const stats =
        check_subset_cpu_ref<Layout, Layout, Layout>(verify_m, verify_n, hA, hB,
                                                     hC, lda, ldb, ldc);

    float const abs_thresh = 2.0f;
    float const rel_thresh = 0.05f;
    bool const pass = (stats.max_abs <= abs_thresh) || (stats.max_rel <= rel_thresh);

    std::cout << "  gpu_time_ms: " << std::fixed << std::setprecision(3)
              << cpu_ref_ms << " (includes GPU sync)\n"
              << "  max_abs_err: " << std::scientific << stats.max_abs << " at ("
              << stats.max_i << "," << stats.max_j << ")\n"
              << "  max_rel_err: " << std::scientific << stats.max_rel << "\n"
              << "  threshold: abs<=" << std::scientific << abs_thresh
              << " OR rel<=" << std::scientific << rel_thresh << "\n"
              << "  result: " << (pass ? "PASS" : "FAIL") << "\n";

    if (!pass) {
      return 2;
    }
  }

  // Re-init for benchmark if needed.
  if (bench_mode != first_mode) {
    init_device(bench_mode);
  }

  std::cout << "\n[Benchmark]\n"
            << "  warmup: " << warmup << "\n"
            << "  iters:  " << iters << "\n"
            << "  trials: " << trials << "\n";

  for (int i = 0; i < warmup; ++i) {
    status = gemm_op(args);
    if (status != cutlass::Status::kSuccess) {
      std::cerr << "ERROR: warmup GEMM failed: " << cutlassGetStatusString(status)
                << "\n";
      return 1;
    }
  }
  CUDA_CHECK(cudaDeviceSynchronize());

  cudaEvent_t start{}, stop{};
  CUDA_CHECK(cudaEventCreate(&start));
  CUDA_CHECK(cudaEventCreate(&stop));

  float best_ms = 1e30f;
  double sum_ms = 0.0;

  for (int t = 0; t < trials; ++t) {
    CUDA_CHECK(cudaEventRecord(start));
    for (int i = 0; i < iters; ++i) {
      status = gemm_op(args);
    }
    CUDA_CHECK(cudaEventRecord(stop));
    CUDA_CHECK(cudaEventSynchronize(stop));

    float ms_total = 0.0f;
    CUDA_CHECK(cudaEventElapsedTime(&ms_total, start, stop));
    float const ms = ms_total / static_cast<float>(iters);
    best_ms = std::min(best_ms, ms);
    sum_ms += static_cast<double>(ms);
  }

  CUDA_CHECK(cudaEventDestroy(start));
  CUDA_CHECK(cudaEventDestroy(stop));

  double const avg_ms = sum_ms / static_cast<double>(trials);
  double const flops = 2.0 * static_cast<double>(kM) * kN * kK;
  double const best_tflops = (flops / (best_ms * 1e-3)) / 1e12;
  double const avg_tflops = (flops / (avg_ms * 1e-3)) / 1e12;

  std::cout << std::fixed << std::setprecision(4)
            << "  best_ms:     " << best_ms << "\n"
            << "  avg_ms:      " << avg_ms << "\n"
            << std::setprecision(4) << "  best_TFLOPS: " << best_tflops << "\n"
            << "  avg_TFLOPS:  " << avg_tflops << "\n";

  CUDA_CHECK(cudaFree(dA));
  CUDA_CHECK(cudaFree(dB));
  CUDA_CHECK(cudaFree(dC));

  return 0;
}
