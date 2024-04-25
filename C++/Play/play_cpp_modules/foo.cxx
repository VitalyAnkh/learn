module;
#include <iostream>

export module foo;

export class Foo {
public:
  Foo();
  ~Foo();
  void hello_world();
};

Foo::Foo() = default;
Foo::~Foo() = default;
void Foo::hello_world() { std::cout << "hello_world!\n"; }
