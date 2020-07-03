#include <iostream>
#include <vector>
#include <cstdlib>
using namespace std;
int main()
{
    // n is height, m is width
    int n, m;
    cin >> n >> m;
    int map[n][m]; // 这么写是n行m列还是n列m行？-- solution: n行m列
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j < m; j++)
        {
            cin >> map[i][j];
        }
    }
    char char_map[n][m];
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j < m; j++)
        {
            char_map[i].push_back(char(map[i][j]));
        }
    }
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j < m; j++)
        {
            cout << map[i][j] << " ";
        }
        cout << endl;
    }
    cout << map << endl;
    return 0;
}