#include <cstdlib>
#include <iostream>

int main() {
  std::cout << "Please enter one integer:" << std::endl;
  int num;
  std::cin >> num;
  std::cout << "The number you entered is " << num << std::endl;

  srand(time(NULL));

  int random_value = rand() % 42 + 1;
  std::cout << "A random value is generated: " << random_value << std::endl;
  return 0;
}
