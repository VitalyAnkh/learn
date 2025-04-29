#include <cuda_runtime.h>
#include <stdio.h>

// 简单的核函数：将数组元素乘2
__global__ void doubleElements(float *array, int N) {
  int idx = blockIdx.x * blockDim.x + threadIdx.x;
  if (idx < N) {
    array[idx] = 2.0f * array[idx];
  }
}

int main() {
  const int N = 1024; // 更小的数组大小
  float *host_array = new float[N];
  // 初始化数组
  for (int i = 0; i < N; i++) {
    host_array[i] = static_cast<float>(i);
  }

  printf("Before kernel run: ===========\n");
  // 验证结果
  printf("First element: %f\n", host_array[0]);
  printf("Second element: %f\n", host_array[1]);
  printf("Last element: %f\n", host_array[N - 1]);
  // 注册主机内存
  cudaHostRegister(host_array, N * sizeof(float), cudaHostRegisterMapped);
  // 获取GPU可访问的指针
  float *device_pointer;
  cudaHostGetDevicePointer(&device_pointer, host_array, 0);

  // 运行核函数
  // doubleElements<<<4, 256>>>(device_pointer, N);
  // or use the host address
  doubleElements<<<4, 256>>>(host_array, N);

  cudaDeviceSynchronize();

  printf("After run: ===========\n");
  // 验证结果
  printf("First element: %f\n", host_array[0]);
  printf("Second element: %f\n", host_array[1]);
  printf("Last element: %f\n", host_array[N - 1]);

  // 清理
  cudaHostUnregister(host_array);
  delete[] host_array;

  return 0;
}
