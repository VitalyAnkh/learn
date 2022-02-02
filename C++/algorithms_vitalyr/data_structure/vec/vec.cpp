//
// Created by vitalyr on 2022/1/15.
//

#include "vec.h"
#include <fmt/core.h>

int main() {
    std::string s = fmt::format("The answer is {}", 42);
    fmt::print("The number is {}", 42);
    std::string str = fmt::format("Hello, how? {.2f}", 1.2);
    return 0;
}