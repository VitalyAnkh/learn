#include <cuda_fp16.h>
#include <bitset>
#include <cuda_fp8.h>
#include <cuda_runtime.h>
#include <iomanip>
#include <iostream>
#include <stdio.h>
#include <vector> // 添加此头文件以使用 std::vector

// 辅助函数：打印fp16的二进制表示并返回格式化的字符串
std::string getFp16Binary(const __half &h) {
  unsigned short bits;
  memcpy(&bits, &h, sizeof(__half));
  std::bitset<16> binary(bits);
  std::stringstream ss;
  ss << binary << " (s:" << binary[15]
     << " e:" << binary.to_string().substr(1, 5)
     << " f:" << binary.to_string().substr(6, 10) << ")";
  return ss.str();
}

// 辅助函数：打印fp8的二进制表示并返回格式化的字符串
std::string getFp8Binary(const __nv_fp8_storage_t &f) {
  unsigned char bits;
  memcpy(&bits, &f, sizeof(__nv_fp8_storage_t));
  std::bitset<8> binary(bits);
  std::stringstream ss;
  ss << binary << " (s:" << binary[7]
     << " e:" << binary.to_string().substr(4, 3)
     << " f:" << binary.to_string().substr(0, 4) << ")";
  return ss.str();
}

// CUDA kernel进行FP16到FP8的转换
__global__ void convertFp16ToFp8(const __half *input,
                                 __nv_fp8_storage_t *output, int size) {
  int idx = blockIdx.x * blockDim.x + threadIdx.x;
  if (idx >= size)
    return;

  __half_raw raw_val = __half_raw(input[idx]);
  output[idx] =
      __nv_cvt_halfraw_to_fp8(raw_val, __nv_saturation_t::__NV_SATFINITE,
                              __nv_fp8_interpretation_t::__NV_E4M3);
}

// CUDA kernel进行FP8到FP16的转换
__global__ void convertFp8ToFp16(const __nv_fp8_storage_t *input, half *output,
                                 int size) {
  int idx = blockIdx.x * blockDim.x + threadIdx.x;
  if (idx >= size)
    return;

  __half_raw h =
      __nv_cvt_fp8_to_halfraw(input[idx], __nv_fp8_interpretation_t::__NV_E4M3);
  output[idx] = __half(h);
}

int main() {
  const int size = 16;

  // 准备一些具有代表性的FP16值
  std::vector<__half> test_fp16_values = {
      __float2half(0.0f),    // 零
      __float2half(1.0f),    // 整数
      __float2half(-1.0f),   // 负数
      __float2half(0.5f),    // 1/2
      __float2half(-0.5f),   // -1/2
      __float2half(0.25f),   // 1/4
      __float2half(-0.25f),  // -1/4
      __float2half(0.125f),  // 1/8
      __float2half(2.0f),    // 2
      __float2half(-2.0f),   // -2
      __float2half(4.0f),    // 4
      __float2half(-4.0f),   // -4
      __float2half(0.0625f), // 1/16
      __float2half(8.0f),    // 8
      __float2half(0.333f),  // 非2的幂
      __float2half(-0.333f)  // 负的非2的幂
  };

  // 分配主机内存
  __half *h_input = new __half[size];
  __nv_fp8_storage_t *h_output_fp8 = new __nv_fp8_storage_t[size];
  __half *h_output_fp16 = new __half[size];

  // 复制测试值
  for (int i = 0; i < size; i++) {
    h_input[i] = test_fp16_values[i];
  }

  // 分配设备内存
  __half *d_input;
  __nv_fp8_storage_t *d_output_fp8;
  __half *d_output_fp16;
  cudaMalloc(&d_input, size * sizeof(__half));
  cudaMalloc(&d_output_fp8, size * sizeof(__nv_fp8_storage_t));
  cudaMalloc(&d_output_fp16, size * sizeof(__half));

  // 复制数据到设备
  cudaMemcpy(d_input, h_input, size * sizeof(__half), cudaMemcpyHostToDevice);

  // 执行转换
  int blockSize = 256;
  int numBlocks = (size + blockSize - 1) / blockSize;
  convertFp16ToFp8<<<numBlocks, blockSize>>>(d_input, d_output_fp8, size);
  convertFp8ToFp16<<<numBlocks, blockSize>>>(d_output_fp8, d_output_fp16, size);

  // 复制结果回主机
  cudaMemcpy(h_output_fp8, d_output_fp8, size * sizeof(__nv_fp8_storage_t),
             cudaMemcpyDeviceToHost);
  cudaMemcpy(h_output_fp16, d_output_fp16, size * sizeof(__half),
             cudaMemcpyDeviceToHost);

  // 打印结果
  std::cout << "\nFP16 to FP8 Conversion Analysis:\n";
  std::cout << std::string(120, '-') << "\n";
  std::cout << "Format comparison: (s:sign e:exponent f:fraction)\n\n";

  // 表头
  std::cout << std::left << std::setw(15) << "Original(double)" << std::setw(15)
            << "Via FP8(double)" << std::setw(15) << "Abs Diff"
            << "| " << std::setw(45) << "FP16 Binary"
            << "| " << "FP8 Binary\n";
  std::cout << std::string(120, '-') << "\n";

  // 打印每个值的详细信息
  for (int i = 0; i < size; i++) {
    // 转换为double进行比较
    double orig_val = __half2float(h_input[i]);
    double converted_val = __half2float(h_output_fp16[i]);
    double abs_diff = std::abs(orig_val - converted_val);

    // 打印数值比较（使用double精度）
    std::cout << std::fixed << std::setprecision(6) << std::left
              << std::setw(15) << orig_val << std::setw(15) << converted_val
              << std::setw(15) << abs_diff << "| " << std::setw(45)
              << getFp16Binary(h_input[i]) << "| "
              << getFp8Binary(h_output_fp8[i]) << "\n";

    // 如果差异显著，添加警告
    if (abs_diff > 0.01 && orig_val != 0.0) {
      double rel_error = (abs_diff / std::abs(orig_val)) * 100;
      std::cout << "   ^-- Notable difference! Relative error: "
                << std::setprecision(2) << rel_error << "%\n";
    }
  }

  // 清理内存
  delete[] h_input;
  delete[] h_output_fp8;
  delete[] h_output_fp16;
  cudaFree(d_input);
  cudaFree(d_output_fp8);
  cudaFree(d_output_fp16);

  return 0;
}
