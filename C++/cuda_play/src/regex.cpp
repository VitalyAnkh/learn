#include <iostream>
#include <regex>

int main() {
  std::string text = "Hello World";
  std::regex pattern("^Hello");

  if (std::regex_search(text, pattern)) {
    std::cout << "Pattern found!" << std::endl;
  } else {
    std::cout << "Pattern not found." << std::endl;
  }

  return 0;
}
