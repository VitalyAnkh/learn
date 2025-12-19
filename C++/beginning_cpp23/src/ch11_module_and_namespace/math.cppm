export module math;
import std;

bool isOdd(int n) {
    if (n % 2 == 0) {
        return false;
    } else {
        return true;
    }
}

export {
    template <typename T> T square(T &x) { return x * x; }
    const double lambda{1.34321};
    enum class Oddity { Odd, Even };
    Oddity getOddity(int n) {
        if (isOdd(n)) {
            return Oddity::Odd;
        } else {
            return Oddity::Even;
        }
    }
}
