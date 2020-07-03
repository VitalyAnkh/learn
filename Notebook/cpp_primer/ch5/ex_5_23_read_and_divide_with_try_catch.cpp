#include <iostream>
#include <stdexcept>
int main()
{
    int a, b;
    std::cout << "请输入两个数字： " << std::endl;

    int q;
    while (std::cin >> a >> b)
    {
        try
        {
            // 不要写成 b = 0
            if (b == 0)
            {
                throw std::runtime_error("The second argument must not be 0!");
            }
            else
            {
                q = a / b;
                std::cout << "第一个数字除以第二个数字的商是： " << q << std::endl;
                return 0;
            }
        }
        catch (std::runtime_error err)
        {
            std::cout << err.what() << std::endl;
            std::cout << "还要继续吗？" << std::endl;
            std::cout << "继续的话，输入y，否则输入n" << std::endl;
            char c;
            std::cin >> c;
            if (!c || c != 'y')
            {
                break;
            }
            std::cout << "再次输入两个数字！第二个数字最好不为0！" << std::endl;
        }
    }
}