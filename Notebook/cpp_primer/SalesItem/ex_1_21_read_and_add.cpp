#include <iostream>
#include "SalesItem.h"
int main()
{
    SalesItem item1, item2;
    std::cin >> item1 >> item2;
    if (item1.isbn() != item2.isbn())
    {
        std::cout << "The ISBN of the two items is not same! Existing..." << std::endl;
        exit(1);
    }
    else
    {
        std::cout << item1 + item2 << std::endl;
    }
    return 0;
}
