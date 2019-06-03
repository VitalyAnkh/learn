#include <iostream>
#include "Stack.h"
int main() {
    increase(2);
    simple_template_func(2);
    std::cout << "Hello, World!" << std::endl;
    std::cout << increase<int>(1);
    return 0;
}

template<typename T>
T increase(T &a) {
    return a++;
}

template <typename T>
void simple_template_func(T a){
    std::cout<<a<<std::endl;
}