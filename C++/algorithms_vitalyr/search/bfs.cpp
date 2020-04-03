#include <stdio.h>
#include <iostream>
#include <stdlib.h>
#include <string>
#include <string.h>
#include <algorithm>
#include <stack>
#include <queue>
#include <iterator>
using namespace std;
#define MAX 10

int x, y, a, b;
struct point
{
    int x, y, dis; //x坐标y坐标步数
};
int fx[4] = {-1, 1, 0, 0}, fy[4] = {0, 0, -1, 1};
int bfs(int x, int y, int maze[][9])
{
    queue<point> myque;
    point tp;
    tp.x = x;
    tp.y = y;
    tp.dis = 0; //初始化开始节点dis设为0
    myque.push(tp);
    while (!myque.empty())
    {
        tp = myque.front();
        myque.pop(); //从队头取节点
        if (tp.x == a && tp.y == b)
        {
            return tp.dis;
        } //判断是否到达目的地
        for (int i = 0; i < 4; i++)
        {
            if (tp.x + fx[i] < 9 && tp.x + fx[i] >= 0 && tp.y + fy[i] < 9 &&
                tp.y + fy[i] >= 0 && maze[tp.x + fx[i]][tp.y + fy[i]] == 0)
            {
                point tmp;
                tmp.x = tp.x + fx[i];
                tmp.y = tp.y + fy[i];
                tmp.dis = tp.dis + 1;
                maze[tmp.x][tmp.y] = 1; //添加进队列就将该位置设为1
                myque.push(tmp);
            }
        }
    }
}

int main()
{
    int t;
    cin >> t;
    while (t--)
    {
        int maze[9][9] =
            {
                {1, 1, 1, 1, 1, 1, 1, 1, 1},
                {1, 0, 0, 1, 0, 0, 1, 0, 1},
                {1, 0, 0, 1, 1, 0, 0, 0, 1},
                {1, 0, 1, 0, 1, 1, 0, 1, 1},
                {1, 0, 0, 0, 0, 1, 0, 0, 1},
                {1, 1, 0, 1, 0, 1, 0, 0, 1},
                {1, 1, 0, 1, 0, 1, 0, 0, 1},
                {1, 1, 0, 1, 0, 0, 0, 0, 1},
                {1, 1, 1, 1, 1, 1, 1, 1, 1},
            };
        cin >> x >> y >> a >> b;
        cout << bfs(x, y, maze) << endl;
    }
    return 0;
}