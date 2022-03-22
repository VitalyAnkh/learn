struct typeBase {
  constexpr typeBase() : Lvalue() {}
  int Lvalue;
};

struct type : private typeBase {
  bool value;
  type(bool v = 0) { value = v; }
  consteval type(int i) { value = i; }
  const bool operator*() const { return value; }
};

auto operator>(const type &a, const type &b) { return *a > *b; }

int main() {
  type T;
  if (T > type(100)) {
  }
}
