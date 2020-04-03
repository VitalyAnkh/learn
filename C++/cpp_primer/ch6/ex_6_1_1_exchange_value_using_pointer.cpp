#include <iostream>
void exchange_value(int *p1, int *p2)
{
    int tmp;
    tmp = *p2;
    *p2 = *p1;
    *p1 = tmp;
}
int main()
{
    int a, b;
    std::cout << "Enter two numbers: " << std::endl;
    std::cin >> a >> b;
    exchange_value(&a, &b);
    std::cout << "The value of a is " << a << " and the value of b is " << b << std::endl;
    return 0;
}