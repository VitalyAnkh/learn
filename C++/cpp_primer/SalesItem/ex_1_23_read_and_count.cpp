#include <iostream>
#include "SalesItem.h"
// warning: 代码只对ISBN相同的记录聚在一起时有效
int main()
{
    SalesItem item1, item2;
    int num = 1;
    std::cout << "请输入若干销售记录： " << std::endl;
    if (std::cin >> item1)
    {
        while (std::cin >> item2)
        {
            if (compareIsbn(item1, item2))
                num++;
            else
            {
                std::cout << item1.isbn() << "共有" << num << "条销售记录" << std::endl;
                item1 = item2;
                num = 1;
            }
        }
        std::cout << item1.isbn() << "共有" << num << "条销售记录" << std::endl;
        item1 = item2;
    }
    else
    {
        std::cout << "没有数据" << std::endl;
        return -1;
    }
}