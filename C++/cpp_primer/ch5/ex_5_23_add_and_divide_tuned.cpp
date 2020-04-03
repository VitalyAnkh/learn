#include <iostream>
#include <stdexcept>
int main()
{
    int a, b;
    std::cout << "请输入两个数字： " << std::endl;
    std::cin >> a >> b;
    int q;
    // try
    // {
    // 不要写成 b = 0
    if (b == 0)
    {
        throw std::runtime_error("The second argument must not be 0!");
    }
    else
    {
        q = a / b;
    }
    // }
    std::cout << "第一个数字除以第二个数字的商是： " << q << std::endl;
    return 0;
}