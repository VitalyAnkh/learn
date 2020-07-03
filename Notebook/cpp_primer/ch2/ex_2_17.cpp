#include <iostream>
void reset(int &a) { a = 0; }
int main() {
  int i, &ri = i;
  // i = 5;
  // ri = 10;
  std::cout << i << " " << ri << std::endl;

  int a = 123;
  int *pa = &a;
  int &ra = *pa;
  std::cout << a << " " << pa << " " << ra << std::endl;
  int *p_toy = &a;
  // reset(p_toy);
  std::cout << *p_toy << std::endl;
  return 0;
}
