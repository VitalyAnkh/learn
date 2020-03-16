#include <iostream>
#include "SalesItem.h"
int main()
{
    SalesItem item, sum;
    std::cin >> item;
    sum = item;
    while (std::cin >> item)
    {
        if (sum.isbn() != item.isbn())
        {
            std::cerr << "The ISBN of the items is not same! Existing..." << std::endl;
            return -1;
        }
        else
        {
            sum += item;
        }
    }
    std::cout << sum << std::endl;
    return 0;
}
