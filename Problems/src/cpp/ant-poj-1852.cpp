#include <iostream>
using namespace std;
int main()
{
    ios::sync_with_stdio(false);
    int group, L, n, x;
    cin >> group;

    while (group--)
    {
        int min_time = 0, max_time = 0;
        cin >> L >> n;
        while (n--)
        {
            cin >> x;
            min_time = max(min_time, min(x, L - x));
            max_time = max(max_time, max(x, L - x));
        }
        cout << min_time << " " << max_time << endl;
    }

    return 0;
}