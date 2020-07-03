//
// Created by vitalyr on 2020/6/29.
//

#include <iostream>
#include <string.h>
using namespace std;
bool isShorter(const string &s1, const string &s2)
{
    return s1.size() < s1.size();
}
int main()
{
    string s1, s2;
    cin >> s1 >> s2;
    cout << "Is s1 shorter than s2?" << endl;
    cout << "Shorter? "<<isShorter(s1, s2) << endl;
    return 0;
}
