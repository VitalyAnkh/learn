#include <stdio.h>
#include <stdlib.h>

float sum_float(float *p, int length) {
  float result = 0.0;
  for (int i = 0; i < length; i++) {
    result += p[i];
  }
  return result;
}

float sum_of_square_float(float *p, int length) {
  float result = 0.0;
  for (int i = 0; i < length; i++) {
    result += p[i] * p[i];
  }
  return result;
}

// normalize the row to have the mean 0
void normalize_linear(float *p, int length) {
  float mean = sum_float(p, length) / length;
  for (int i = 0; i < length; i++) {
    p[i] -= mean;
  }
}

// normalize the row so that the sum of the squares of the elements is 1
void normalize_square(float *p, int length) {
  float sum_of_sqare_of_element = sum_of_square_float(p, length);
  float sum = sum_float(p, length);
  float bias = (sum_of_sqare_of_element - 1) / (2 * sum - length);
  for (int i = 0; i < length; i++) {
    p[i] -= bias;
  }
}

float dot_product(const float *a, const float *b, int n) {
  float result = 0.0;
  for (int i = 0; i < n; i++) {
    result += a[i] * b[i];
  }
  return result;
}

// b is the transposed matrix of the original matrix
void matmul_transposed_float(const float *a, const float *b, float *result,
                             int nx, int ny) {
  for (int x = nx - 1; x >= 0; x--) {
    for (int y = ny - 1; y >= 0; y--) {
      // a is the starting address of a's x row
      // b is the starting address of b's y collumn
      // nx == ny
      result[x + y * nx] = dot_product(a + x * nx, b + y * nx, nx);
    }
  }
}

void print_vector(float *a, int n) {
  for (int i = 0; i < n; i++) {
    printf("%f ", a[i]);
  }
  printf("\n");
}

/*
This is the function you need to implement. Quick reference:
- input rows: 0 <= y < ny
- input columns: 0 <= x < nx
- element at row y and column x is stored in data[x + y*nx]
- correlation between rows i and row j has to be stored in result[i + j*ny]
- only parts with 0 <= j <= i < ny need to be filled
*/
void correlate(int ny, int nx, const float *data, float *result) {
  // initialize result
  for (int x = 0; x < nx; x++) {
    for (int y = 0; y < ny; y++) {
      result[x + y * nx] = data[x + y * nx];
    }
  }

  for (int y = 0; y < ny; y++) {
    normalize_linear(result + y * nx, nx);
    printf("vector after normalizing to linear:\n");
    print_vector(result + y * nx, nx);
  }

  for (int y = 0; y < ny; y++) {
    normalize_square(result + y * nx, nx);
    printf("vector after normalizing square:\n");
    print_vector(result + y * nx, nx);
  }

  // get data transposed
  float *data_transposed = (float *)malloc(ny * nx * sizeof(float));
  for (int x = 0; x < nx; x++) {
    for (int y = 0; y < ny; y++) {
      data_transposed[x + y * nx] = result[y + x * nx];
    }
  }
  // Y = X * X^{T}
  matmul_transposed_float(result, data_transposed, result, nx, ny);
  free(data_transposed);
}
