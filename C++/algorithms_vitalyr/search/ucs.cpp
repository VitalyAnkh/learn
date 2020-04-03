#include <iostream>
#include <queue>
#include <stack>
#include <vector>
#include <climits>
using namespace std;

struct Node
{                        //节点结构体
    int Num;             //节点结构体，与节点一一对应
    int State;           //三种状态，0表示未被发现，1表示正在处理，2表示处理完成
    int Find;            //发现节点的时刻
    vector<Node *> next; //存储其对应的下一个节点
    Node *pre;           //储存前一个节点，需要赋值完成
    Node(int x) : State(0), Num(x), Find(0), pre(NULL)
    { //初始化
    }
};
void display2(int num) //序号与字母转换显示
{
    switch (num)
    {
    case 1:
        cout << "s";
        break;
    case 2:
        cout << "a";
        break;
    case 3:
        cout << "b";
        break;
    case 4:
        cout << "c";
        break;
    case 5:
        cout << "d";
        break;
    case 6:
        cout << "e";
        break;
    case 7:
        cout << "f";
        break;
    case 8:
        cout << "g";
        break;
    case 9:
        cout << "h";
        break;
    case 10:
        cout << "r";
        break;
    case 11:
        cout << "p";
        break;
    case 12:
        cout << "q";
        break;
    default:
        cout << endl;
    }
}
void insert(Node *L, Node *n)
{
    L->next.push_back(n);
}
void display(Node *L) //显示该节点的所有邻接节点
{
    int n = L->next.size();

    for (int i = 0; i < n; i++)
    {
        display2((L->next)[i]->Num);
        cout << "	";
    }
}

int Judge(char a)
{
    switch (a)
    {
    case 's':
        return 1;
    case 'a':
        return 2;
    case 'b':
        return 3;
    case 'c':
        return 4;
    case 'd':
        return 5;
    case 'e':
        return 6;
    case 'f':
        return 7;
    case 'g':
        return 8;
    case 'h':
        return 9;
    case 'r':
        return 10;
    case 'p':
        return 11;
    case 'q':
        return 12;
    default:
        cout << endl;
    }
}

int my_time = 0; //变量my_time是一个全局变量，用来计算时间

int ucs(Node *u[], int m, int aim) //ucs搜索最短路径，基于广度搜索完成
{
    Node *c[12];    //定义节点数组，存放下一级节点数据
    Node *mm;       //存放上一个节点变量
    int ww = 0;     //存放下一级节点个数
    int follow[12]; //存放最短路径序号并排列
    my_time++;
    for (int p = 0; p < m; p++)
    { //当前节点级搜素并已读
        u[p]->State = 2;
        u[p]->Find = my_time;
        for (int q = 0; q < (u[p]->next.size()); q++)
        { //当前节点级的每一个节点的下一个节点，并排除已经被上一级和同级的下一级发现过得节点

            if ((u[p]->next)[q]->State == 0)
                (u[p]->next)[q]->pre = u[p]; //若是未被搜索过得节点，才可以用来确定上一级节点，并储存上一级节点数据

            if ((u[p]->next)[q]->Num == aim)
            {                         //序号为8即s，为要寻找的点
                mm = (u[p]->next)[q]; //如果是则开始找寻前级节点
                follow[my_time] = mm->Num;
                for (int qq = 0; qq < my_time; qq++)
                { //根据时间顺序找前级节点个数以及序号
                    mm = mm->pre;
                    follow[my_time - qq - 1] = mm->Num; //存储在数组中
                    //	cout<<mm->Num<<"	";
                    //	display2(mm->Num);
                }

                for (int qc = 0; qc < my_time + 1; qc++)
                { //显示寻找顺序
                    display2(follow[qc]);
                    cout << "	" << follow[qc];
                    cout << endl;
                }
                //				cout<<u[p]->Num<<endl;
                //				display2(u[p]->Num);
                //				cout<<(u[p]->pre)->Num<<endl;
                //	cout<< (((u[p]->next)[q])->pre).Num<<endl;
                cout << "take: " << my_time << " steps" << endl;
                return 0;
            }
            if ((u[p]->next)[q]->State == 0)
            { //若是未处理点，则保存到数组c，并变为正在处理状态
                c[ww] = (u[p]->next)[q];
                ww++;
                (u[p]->next)[q]->State = 1;
            }
        }
    }
    ucs(c, ww, aim);
}

int main()
{
    Node *a[12];
    Node *DD[12];
    char abc;
    int b[12][12] = {{5, 6, 11}, {2}, {2}, {2}, {3, 4, 6}, {9, 10}, {4, 8}, {8}, {11, 12}, {7}, {12}, {12}};
    cout << "By drs" << endl;
    for (int i = 0; i < 12; i++)
    {
        a[i] = new Node(i + 1);
    }
    for (int j = 0; j < 12; j++)
    {
        for (int i = 0; i < 12; i++)
            if (b[j][i])
                a[j]->next.push_back(a[b[j][i] - 1]);
        cout << "节点";
        display2(j + 1);
        cout << "的下个节点为:	";
        display(a[j]);
        cout << endl;
    }
    //以上是构建一个有向图过程

    a[0]->State = 2;
    DD[0] = a[0];
    cout << endl;

    //	ucs(DD,1,8);
    //	cout<<"以上为s到g的最短路径"<<endl;
    cout << "请输入您想从s到达的点（小写字母s,a,b,c.....）";
    cin >> abc;
    //	cout<<Judge(abc)<<endl;
    if (Judge(abc) != 1)
        ucs(DD, 1, Judge(abc));
    else
        cout << "需要0步" << endl;
    return 0;
}