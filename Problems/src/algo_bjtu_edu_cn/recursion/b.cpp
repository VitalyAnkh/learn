#include <iostream>
using namespace std;
void Circul(const int n);
int main()
{
    long n;
    cin >> n;
    Circul(n);
    return 0;
}

void Circul(const int n)
{

    int i;
    long long a[1000001];
    a[1] = 1;
    a[2] = 2;
    a[3] = 4;
    if (n == 1)
    {

        cout << a[1] << endl;
        return;
    }
    else if (n == 2)
    {

        cout << a[2] << endl;
        return;
    }
    else if (n == 3)
    {

        cout << a[3] << endl;
        return;
    }
    else
        for (i = 4; i <= n; i++)
        {

            a[i] = a[i - 3] + a[i - 2] + a[i - 1];
        }
    cout << a[n - 1] % (1000000007) << endl;
}
