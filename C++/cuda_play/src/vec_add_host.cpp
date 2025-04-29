#include <iostream>
#include <vector>

void vec_add(float *A_h, float *B_h, float *C_h, int n) {
  for (int i = 0; i < n; i++) {
    C_h[i] = A_h[i] + B_h[i];
  }
}

int main() {
  int n = 1 << 30;
  std::vector<float> A_h(n);
  std::vector<float> B_h(n);
  std::vector<float> C_h(n);

  for (int i = 0; i < n; i++) {
    A_h[i] = 1.0f;
    B_h[i] = 2.0f;
  }

  vec_add(A_h.data(), B_h.data(), C_h.data(), n);

  for (int i = 0; i < 10; i++) {
    std::cout << C_h[i] << std::endl;
  }

  return 0;
}
