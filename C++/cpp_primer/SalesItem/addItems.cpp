#include <iostream>
#include "SalesItem.h"
int main()
{
    SalesItem item1, item2;
    std::cin >> item1 >> item2;

    std::cout << item1 + item2 << std::endl;
    return 0;
}