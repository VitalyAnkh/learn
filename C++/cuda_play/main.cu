#include <cuda.h>
#include<iostream>

__global__ void vec_add_kernel(float *a, float *b, float *c, int n) {
    int i = blockDim.x * blockIdx.x + threadIdx.x;
    if (i < n) { c[i] = a[i] + b[i]; }
}

void vec_add(float *a, float *b, float *c, int n) {
    float *d_a, *d_b, *d_c;
    int size = n * sizeof(float);
    cudaMalloc((void **) &d_a, size);
    cudaMemcpy(d_a, a, size, cudaMemcpyHostToDevice);
    cudaMalloc((void **) &d_b, size);
    cudaMemcpy(d_b, b, size, cudaMemcpyHostToDevice);
    cudaMalloc((void **) &d_c, size);

    vec_add_kernel<<<ceil(n / 256.0), 256>>>(d_a, d_b, d_c, n);
    cudaMemcpy(c, d_c, size, cudaMemcpyDeviceToHost);
    cudaFree(d_a);
    cudaFree(d_b);
    cudaFree(d_c);
}


int main() {

    int const N = 1000;
    float a[N];
    float b[N];
    float c[N];
    for (int i = 0; i < N; i++) {
        a[i] = i;
        b[i] = 2 * i + 1;
    }

    vec_add(a, b, c, N);
    for (int i = 0; i < N; i++) {
        std::cout << c[i] << " ";
    }
    return 0;
}