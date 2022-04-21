//
// Created by vitalyr on 2022/2/22.
//
#include <fmt/core.h>

int main() {
    int a[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    auto a2 = a;
    decltype(a) a3 = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    for (int *ptr = a; ptr != a + 10; ptr++)
        fmt::print("{} ", *ptr);

    fmt::print("hello");
    return 0;
    int ia[3][4];
    int count = 0;
    for (auto &row: ia) {
        for (auto &col: row) {
            col = count;
            count++;
        }
    }
//fmt::print("{} ", ia);
}