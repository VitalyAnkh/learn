#include <cstdio>
int main()
{
    double a, b, result = 0;
    char op;
    std::scanf("%lf %c %lf", &a, &op, &b);
    switch (op)
    {
    case '+':
        result = a + b;
        break;
    case '-':
        result = a - b;
        break;
    default:
        result = a * b;
    }
    std::printf("%.0lf\n", result);
    return 0;
}