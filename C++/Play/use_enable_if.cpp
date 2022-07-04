#include <fmt/core.h>

struct TestType {
  typedef int foo;
};

template <typename T> void f(typename T::foo) {}

int main() {}
