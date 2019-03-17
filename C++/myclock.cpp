#include <iostream>
using namespace std;
class MyClock
{
  public:
    void settime(int h, int m, int s);
    void show()
    {
        cout << hour << ":" << minute << ":" << second << endl;
    }

  private:
    int hour, minute, second;
};

void MyClock::settime(int h, int m, int s)
{
    hour = h;
    minute = m;
    second = s;
}

int main()
{
    MyClock clk;
    clk.settime(1, 0, 0);
    clk.show();
    return 0;
}