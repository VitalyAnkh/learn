int foo(int c) {
  c = 2;
  return c;
}
const int D = 3;
class A {
public:
  int a;
  A(int a) : a(a) {}
};
const A a(1);
int main() {
  a = A(2);
  D = 4;
}
