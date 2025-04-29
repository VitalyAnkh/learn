#include <cuda_runtime.h>
#include <stdio.h>

#define CHECK_CUDA_ERROR(call)                                                 \
  do {                                                                         \
    cudaError_t err = call;                                                    \
    if (err != cudaSuccess) {                                                  \
      fprintf(stderr, "CUDA error in %s:%d: %s\n", __FILE__, __LINE__,         \
              cudaGetErrorString(err));                                        \
      exit(EXIT_FAILURE);                                                      \
    }                                                                          \
  } while (0)

// CUDA核函数：直接操作主机内存
__global__ void doubleElements(float *array, int N) {
  int idx = blockIdx.x * blockDim.x + threadIdx.x;
  if (idx < N) {
    // 直接读写固定内存
    array[idx] = 2.0f * array[idx];
  }
}

int main() {
  const int N = 1000000;
  const size_t size = N * sizeof(float);

  // 分配主机内存
  float *host_array = new float[N];

  // 初始化数组
  for (int i = 0; i < N; i++) {
    host_array[i] = static_cast<float>(i);
  }

  // 注册主机内存，使其可以被GPU直接访问
  // cudaHostRegisterMapped 标志允许创建可由GPU直接访问的固定内存映射
  CHECK_CUDA_ERROR(cudaHostRegister(
      host_array, size, cudaHostRegisterMapped | cudaHostRegisterPortable));

  // 获取映射到GPU的指针
  float *device_pointer;
  CHECK_CUDA_ERROR(cudaHostGetDevicePointer(&device_pointer, host_array, 0));

  // 记录时间
  cudaEvent_t start, stop;
  CHECK_CUDA_ERROR(cudaEventCreate(&start));
  CHECK_CUDA_ERROR(cudaEventCreate(&stop));

  // 开始计时
  CHECK_CUDA_ERROR(cudaEventRecord(start));

  // 启动核函数，直接使用映射的指针
  int threadsPerBlock = 256;
  int blocksPerGrid = (N + threadsPerBlock - 1) / threadsPerBlock;
  doubleElements<<<blocksPerGrid, threadsPerBlock>>>(device_pointer, N);

  // 同步设备以确保计算完成
  CHECK_CUDA_ERROR(cudaDeviceSynchronize());

  // 停止计时
  CHECK_CUDA_ERROR(cudaEventRecord(stop));
  CHECK_CUDA_ERROR(cudaEventSynchronize(stop));

  // 计算耗时
  float milliseconds = 0;
  CHECK_CUDA_ERROR(cudaEventElapsedTime(&milliseconds, start, stop));
  printf("Total time: %f ms\n", milliseconds);

  // 验证结果 - 直接访问主机内存，因为它已经包含了结果
  bool success = true;
  for (int i = 0; i < N; i++) {
    if (host_array[i] != static_cast<float>(i) * 2.0f) {
      printf("Verification failed at index %d: expected %f, got %f\n", i,
             static_cast<float>(i) * 2.0f, host_array[i]);
      success = false;
      break;
    }
  }
  if (success) {
    printf("Verification passed!\n");
  }

  // 清理资源
  CHECK_CUDA_ERROR(cudaHostUnregister(host_array));
  CHECK_CUDA_ERROR(cudaEventDestroy(start));
  CHECK_CUDA_ERROR(cudaEventDestroy(stop));

  delete[] host_array;

  return 0;
}
