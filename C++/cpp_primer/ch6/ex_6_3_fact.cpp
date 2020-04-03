#include <iostream>
long long fact(int n)
{
    long long result = 1;
    if (n == 0)
    {
        return 1;
    }
    else
    {
        result = n;
        while (--n)
        {
            result *= n;
        }
        return result;
    }
}

int main()
{
    int n;
    std::cin >> n;
    std::cout << "The factorial of n is " << fact(n) << std::endl;
    return 0;
}