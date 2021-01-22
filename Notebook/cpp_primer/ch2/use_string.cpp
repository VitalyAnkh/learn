#include <iostream>
#include <string>
using namespace std;
int main() {
  string s("some string");
  for (auto &c : s) {
    c = toupper(c);
  }
  int a;
  cout << s;
  string t;
  cin>>t;
  cout << t[0] << endl;
  return 0;
}
