#include <iostream>
#include <set>
#include <string>
#include <tuple>
#include <variant>

// struct MyStruct  {
//    int n;
//    std::string s;
//    float f;
//    bool operator<(const MyStruct &rhs) const {
//      return std::tie(n, s, f) < std::tie(rhs.s, rhs.s, rhs.f);
//    }
//  }

using IntFloatStr = std::variant<int, float, std::string>;

int main() {
  IntFloatStr x, y;
  x = 1;
  y = "I'm vitalyr";
  std::cout << std::get<int>(x) << std::endl;
  return 0;
}
