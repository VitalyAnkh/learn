#include <iostream>
#include "fact.h"
int main()
{
    int n;
    std::cin >> n;
    std::cout << "The factorial of n is " << fact(n) << std::endl;
    return 0;
}