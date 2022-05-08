#include <iostream>
#include <string>
#include <vector>
int main() {
  std::vector<std::string> v;
  v.push_back("Hello, ");
  std::string &x = v[0];

  v.push_back(" world!");
  std::cout << x << std::endl;
  return 0;
}
