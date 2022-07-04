#include <fmt/core.h>
#include <iostream>

int main() {
  int a, b;
  while (std::cin >> a >> b) {
    try {
      if (b == 0) {
        throw std::runtime_error("Division by zero");
      }
      std::cout << a / b << std::endl;
    } catch (std::exception &e) {
      std::cout << e.what() << std::endl;
      std::cout << "Re-enter your input? y/n" << std::endl;
      char c;
      std::cin >> c;
      if (!std::cin || c != 'y') {
        break;
      }
    }
  }
  return 0;
}
