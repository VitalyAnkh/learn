import std;

template <typename T, int lower, int upper> bool is_in_range(const T &v) {
    return v >= lower && v <= upper;
}

int main() {
    const int v{100};
    std::println("is in range: {}", is_in_range<int, 0, 20>(100));
    return 0;
}
