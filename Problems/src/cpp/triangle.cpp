// given a series of number
// task: output three numbers which could form a triangle which has the longest round among all the triangles that could has three of
// the given numbers as length
// sample input:
// 5
// 2 3 4 5 10
// first input is less than 100
#include <iostream>
#include <algorithm>
using namespace std;
int main()
{
    int n, number[100];

    cin >> n;
    for (int i = 0; i < n; i++)
    {
        cin >> number[i];
    }
    int ans = 0;
    for (int i = 0; i < n; i++)
    {
        for (int j = i + 1; j < n; j++)
        {
            for (int k = j + 1; k < n; k++)
            {
                int len = number[i] + number[j] + number[k];
                int max_edge = max(number[i], max(number[j], number[k]));
                int rest = len - max_edge;
                if (max_edge < rest)
                {
                    ans = max(ans, len);
                }
            }
        }
    }
    cout << ans << endl;
    return 0;
}