#include <iostream>

int main() {
    if (__cplusplus > 201703L) std::cout << "C++2a\n";
    else if (__cplusplus == 201703L) std::cout << "C++17\n";
    else if (__cplusplus == 201402L) std::cout << "C++14\n";
    else if (__cplusplus == 201103L) std::cout << "C++11\n";
    else if (__cplusplus == 199711L) std::cout << "C++98\n";
    else std::cout << "pre-standard C++\n";

//    std::cout << "Press ANY key to exit.";
//    std::cin.get();
    char a,b;
    std::cin>>a;
    b=std::cin.get();
    std::cout<<a<<b;
    return (0);
}