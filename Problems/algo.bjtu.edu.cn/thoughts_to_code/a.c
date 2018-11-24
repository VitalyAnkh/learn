#include <stdio.h>
#include <math.h>

int main()
{
    double a, b;
    scanf("%lf%lf", &a, &b);
    a /= 100;
    b /= 100;
    for (int i = 1;; i++)
    {
        double c = a * i;
        double d = b * i;
        if (ceil(c + 0.000000000001) <= floor(d - 0.000000000001))
        {
            printf("%d\n", i);
            return 0;
        }
    }
    return 0;
}
