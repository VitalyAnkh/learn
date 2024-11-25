import <iostream>;
import <limits>;

int main() {
  int min{std::numeric_limits<int>::max()};
  int max{std::numeric_limits<int>::min()};

  std::cout << "min = " << min << "\nmax = " << max << '\n';
}
