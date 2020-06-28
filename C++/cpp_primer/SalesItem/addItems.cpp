#include <iostream>
#include "SalesItem.h"
int main()
{
    SalesItem item1, item2;
    std::cout<<"我们我们我们我我们的enter bookNumber, unitsSold and price to input an item"<<std::endl;
    std::cin >> item1 >> item2;

    std::cout << item1 + item2 << std::endl;
    return 0;
}