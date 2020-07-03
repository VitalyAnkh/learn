#include <iostream>
#include "SalesItem.h"
int main()
{
    SalesItem total, trans;
    if (std::cin >> total)
    {
        while (std::cin >> trans)
        {
            if (trans.isbn() != total.isbn())
            {
                std::cout << total << std::endl;
                total = trans;
            }
            else
            {
                total += trans;
            }
        }
        // 注意！ 退出while循环时最后一条记录还没有打印
        std::cout << total << std::endl;
        return 0;
    }
    else
    {
        // 没有输入！
        // 要养成用if检查是否有输入的习惯
        std::cerr << "No data!" << std::endl;
        return -1;
    }
}
