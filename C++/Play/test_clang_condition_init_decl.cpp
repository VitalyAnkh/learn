#include <cstdio>

int main() {
  bool b = true;
  int a = 10;
  const int *p;
  if ((p = &a) != nullptr && b) {
    printf("hahaha\n");
  }
  if ((const int i = (30 + 30) / 60) - 30) {
    printf("hahaha\n");
  }
  return 0;
}
