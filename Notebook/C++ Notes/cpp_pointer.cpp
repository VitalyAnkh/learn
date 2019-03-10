using namespace std;
#include <iostream>
int main()
{
    int64_t b[2][3];
    cout << b << endl;
    cout << b + 1 << endl;
    cout << *b + 1 << endl;
    cout << **b << endl;
    cout << *(b + 1) << endl;
    cout << *(*(b + 1) + 1) << endl;
    cout << b[0] << endl;
    cout << b[0] + 1 << endl;
    cout << *(b[1] + 1) << endl;
}