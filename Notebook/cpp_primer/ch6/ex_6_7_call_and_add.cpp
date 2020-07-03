#include <iostream>
int count_calls()
{
    static size_t count = 0;
    return count++;
}
int main()
{
    for (int i = 0; i < 10; i++)
    {
        // 函数count_calls()要定义在main()之前，否则gcc会认不出count_calls()
        // 这个identifier。好傻的编译器
        std::cout << count_calls() << std::endl;
    }
    return 0;
}
