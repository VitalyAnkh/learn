#include <cuda_runtime.h>
#include <iostream>

int main() {
  // 定义主机侧的数据
  const size_t size = 1024 * 1024; // 1 MB 大小
  float *hostData;

  // 分配主机内存
  hostData = (float *)malloc(size * sizeof(float));
  if (hostData == nullptr) {
    std::cerr << "无法分配主机内存!" << std::endl;
    return -1;
  }

  // 用于将内存锁定，以便 CUDA 可以高效访问
  cudaError_t err =
      cudaHostRegister(hostData, size * sizeof(float), cudaHostRegisterDefault);
  if (err != cudaSuccess) {
    std::cerr << "cudaHostRegister 失败: " << cudaGetErrorString(err)
              << std::endl;
    free(hostData);
    return -1;
  }

  // 可以在这里执行内存传输，主机内存已锁定，因此可以更高效地传输数据
  // 使用 cudaMemcpy 或 cudaMemcpyAsync 在 GPU 和 CPU 之间传递数据

  // 在锁定后可以执行一些计算或传输操作
  // 示例：假设有一个设备指针
  float *deviceData;
  cudaMalloc(&deviceData, size * sizeof(float));

  // 将锁定的主机内存内容复制到设备
  err = cudaMemcpy(deviceData, hostData, size * sizeof(float),
                   cudaMemcpyHostToDevice);
  if (err != cudaSuccess) {
    std::cerr << "cudaMemcpy 失败: " << cudaGetErrorString(err) << std::endl;
  }

  // 解锁并释放主机内存
  cudaHostUnregister(hostData);
  free(hostData);

  // 释放设备内存
  cudaFree(deviceData);

  std::cout << "操作完成。" << std::endl;
  return 0;
}
