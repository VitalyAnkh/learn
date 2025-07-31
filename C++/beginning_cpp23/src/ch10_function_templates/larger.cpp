import std;

template <typename T> T larger(T a, T b) { return a > b ? a : b; }

int main() {
  int min{std::numeric_limits<int>::max()};
  int max{std::numeric_limits<int>::min()};

  std::cout << "which is larger, 2.3 or 3.2? " << larger(2.3, 3.2) << std::endl;
  return 0;
}
