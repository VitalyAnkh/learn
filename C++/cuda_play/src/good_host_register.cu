#include <cuda_runtime.h>
#include <stdio.h>

// 错误检查宏
#define CHECK_CUDA_ERROR(call)                                                 \
  do {                                                                         \
    cudaError_t err = call;                                                    \
    if (err != cudaSuccess) {                                                  \
      fprintf(stderr, "CUDA error in %s:%d: %s\n", __FILE__, __LINE__,         \
              cudaGetErrorString(err));                                        \
      exit(EXIT_FAILURE);                                                      \
    }                                                                          \
  } while (0)

// CUDA核函数：将数组中的每个元素乘2
__global__ void doubleElements(float *dev_array, int N) {
  int idx = blockIdx.x * blockDim.x + threadIdx.x;
  if (idx < N) {
    dev_array[idx] = 2.0f * dev_array[idx];
  }
}

int main() {
  const int N = 1000000; // 数组大小
  const size_t size = N * sizeof(float);

  // 在主机端分配普通内存
  float *host_array = new float[N];

  // 初始化数组
  for (int i = 0; i < N; i++) {
    host_array[i] = static_cast<float>(i);
  }

  // 将主机内存注册为固定内存
  CHECK_CUDA_ERROR(cudaHostRegister(host_array, size, cudaHostRegisterDefault));

  // 分配设备内存
  float *dev_array;
  CHECK_CUDA_ERROR(cudaMalloc(&dev_array, size));

  // 记录时间
  cudaEvent_t start, stop;
  CHECK_CUDA_ERROR(cudaEventCreate(&start));
  CHECK_CUDA_ERROR(cudaEventCreate(&stop));

  // 开始计时
  CHECK_CUDA_ERROR(cudaEventRecord(start));

  // 将数据从主机复制到设备
  CHECK_CUDA_ERROR(
      cudaMemcpy(dev_array, host_array, size, cudaMemcpyHostToDevice));

  // 启动核函数
  int threadsPerBlock = 256;
  int blocksPerGrid = (N + threadsPerBlock - 1) / threadsPerBlock;
  doubleElements<<<blocksPerGrid, threadsPerBlock>>>(dev_array, N);

  // 检查核函数执行错误
  CHECK_CUDA_ERROR(cudaGetLastError());

  // 将结果复制回主机
  CHECK_CUDA_ERROR(
      cudaMemcpy(host_array, dev_array, size, cudaMemcpyDeviceToHost));

  // 停止计时
  CHECK_CUDA_ERROR(cudaEventRecord(stop));
  CHECK_CUDA_ERROR(cudaEventSynchronize(stop));

  // 计算耗时
  float milliseconds = 0;
  CHECK_CUDA_ERROR(cudaEventElapsedTime(&milliseconds, start, stop));
  printf("Total time: %f ms\n", milliseconds);

  // 验证结果
  bool success = true;
  for (int i = 0; i < N; i++) {
    if (host_array[i] != static_cast<float>(i) * 2.0f) {
      printf("Verification failed at index %d\n", i);
      success = false;
      break;
    }
  }
  if (success) {
    printf("Verification passed!\n");
  }

  // 清理资源
  CHECK_CUDA_ERROR(cudaHostUnregister(host_array)); // 取消注册固定内存
  CHECK_CUDA_ERROR(cudaFree(dev_array));
  CHECK_CUDA_ERROR(cudaEventDestroy(start));
  CHECK_CUDA_ERROR(cudaEventDestroy(stop));

  delete[] host_array;

  return 0;
}
