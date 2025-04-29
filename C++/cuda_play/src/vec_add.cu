#include <stdio.h>
#include <cuda_fp16.h>
  __shared__ alignas(alignof(half)) half h;
__global__ void vec_add_kernel(float *a, float *b, float *c, int n) {
  int i = blockDim.x * blockIdx.x + threadIdx.x;
  if (i < n) {
    c[i] = a[i] + b[i];
  }
}

void vec_add(float *a, float *b, float *c, int n) {
  float *d_a, *d_b, *d_c;
  int size = n * sizeof(float);
  cudaMalloc((void **)&d_a, size);
  cudaMemcpy(d_a, a, size, cudaMemcpyHostToDevice);
  cudaMalloc((void **)&d_b, size);
  cudaMemcpy(d_b, b, size, cudaMemcpyHostToDevice);
  cudaMalloc((void **)&d_c, size);

  vec_add_kernel<<<ceil(n / 256.0), 256>>>(d_a, d_b, d_c, n);
  cudaMemcpy(c, d_c, size, cudaMemcpyDeviceToHost);
  cudaFree(d_a);
  cudaFree(d_b);
  cudaFree(d_c);

  int foo, bar;
  foo = 1;
  bar = 2;

  cudaMemcpy(&foo, &bar, 1 * sizeof(int), cudaMemcpyHostToDevice);
  printf("foo: %d, bar: %d\n", foo, bar);
}

int main() {
  int const N = 64;
  float a[N];
  float b[N];
  float c[N];
  for (int i = 0; i < N; i++) {
    a[i] = i;
    b[i] = 2 * i + 1;
  }
  printf("===============\n");
  printf("a is: \n");
  for (int i = 0; i < N; i++) {
    printf("%f ", a[i]);
  }
  printf("===============\n");
  printf("b is: \n");
  for (int i = 0; i < N; i++) {
    printf("%f ", b[i]);
  }
  vec_add(a, b, c, N);

  printf("===============\n");
  printf("c is: \n");
  for (int i = 0; i < N; i++) {
    printf("%f ", c[i]);
  }

  return 0;
}
