#include <iostream>
#include "Stack.h"

inline double square(double x) { return x * x; }

int main() {
    using namespace std;
//    increase(2);
//    simple_template_func(2);
    std::cout << "Hello, World!" << std::endl;
//    std::cout << increase<int>(1);
    double a, b;
    double c = 13.0;
    a = square(5.0);
    b = square(4.5 + 7.5);
    cout<<"a= "<<a<<", b= "<<b<<endl;
    cout<<"c= "<<c<<endl;

    int rats=101;
    int &p_rats=rats;
    int & p_p_rats=p_rats;
    cout<<&rats <<"---"<<"---"<<&p_rats<<"---"<<&p_p_rats<<endl;


    return 0;
}

template<typename T>
T increase(T &a) {
    return a++;
}

template<typename T>
void simple_template_func(T a) {
    std::cout << a << std::endl;
}