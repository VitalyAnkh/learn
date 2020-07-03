#include "fact.h"
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