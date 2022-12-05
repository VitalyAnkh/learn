#include </opt/cuda/include/cuda.h>
#include </opt/cuda/include/cuda_runtime.h>

void vec_add(float *a, float *b, float *c, int n) {
    float *d_a, *d_b, *d_c;
    int size = n * sizeof(float);
    cudaMalloc((void **) &d_a, size);
    cudaMalloc((void **) &d_b, size);
    cudaMalloc((void **) &d_c, size);

}

int main() {
    float *a;
    float *b;
    float *c;
    int n = 1000;
    vec_add(a, b, c, n);
    return 0;
}