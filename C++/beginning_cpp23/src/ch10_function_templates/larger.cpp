#include <cstdio>

import std;

template <typename T> T larger(T a, T b) { return a > b ? a : b; }

template <typename T> const T &larger_ref(T &a, T &b) { return a > b ? a : b; }

template <> const double *larger(const double *a, const double *b) {
  return *a > *b ? a : b;
}

int main() {
  std::cout << "which is larger, 2.3 or 3.2? " << larger(2.3, 3.2) << std::endl;
  std::println("Larger of 3.5 and 4.5 is {}", larger(3.5, 4.5));

  printf("hello!");

  return 0;
}
