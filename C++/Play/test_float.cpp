#include <cfloat>
#include <cmath>
#include <iostream>
#include <limits.h>
int double2int_rn(double x) {

  if (std::isnan(x)) {
    return int(0x80000000);
  } else if (std::isinf(x)) {
    if (x < 0) {
      return int(0x80000000);
    } else {
      return int(0x7fffffff);
    }
  } else {
    double tmp = std::rint(x);
    if (tmp > 0x7fffffff) {
      return int(0x7fffffff);
    } else if (tmp < 0x00000000) {
      return int(0x80000000);
    } else {
      return int(tmp);
    }
  }
}

void test_rint_isnan_isinf() {
  std::cout << "isnan(rint(0.0/0.0)) is " << std::isnan(rint(0.0 / 0.0))
            << std::endl;
  std::cout << "isinf(rint(INFINITY)) is " << std::isinf(rint(INFINITY))
            << std::endl;
}

int main() {
  std::cout << std::boolalpha << "isnan(NaN) = " << std::isnan(NAN) << '\n'
            << "isnan(Inf) = " << std::isnan(INFINITY) << '\n'
            << "isnan(0.0) = " << std::isnan(0.0) << '\n'
            << "isnan(DBL_MIN/2.0) = " << std::isnan(DBL_MIN / 2.0) << '\n'
            << "isnan(0.0 / 0.0)   = " << std::isnan(0.0 / 0.0) << '\n'
            << "isnan(2.0 / 0.0)   = " << std::isnan(2.0 / 0.0) << '\n'
            << "isnan(Inf - Inf)   = " << std::isnan(INFINITY - INFINITY)
            << '\n';
  double x = 0x7FE0000000000001;
  std::cout << "double2int_rn(0x7FE000000000001) is " << double2int_rn(x)
            << '\n';
  std::cout << "double2int_rn(0x7023E000000000001) is "
            << double2int_rn(double(0x7023E000000000001)) << '\n';
  std::cout << "double2int_r(2.0/0.0) is " << double2int_rn(0.0 / 0.0) << '\n';
  std::cout << "double2int_rn(0x7FE000000000001) is " << double2int_rn(x)
            << '\n';
  std::cout << "isinf(trunc(INFINITY)) is " << std::isinf(trunc(-INFINITY))
            << '\n';
  std::cout << "trunc(-INFINITY) < 0 is " << (trunc(-INFINITY) < 0) << '\n';
  std::cout << "trunc(INFINITY) > 0 is " << (trunc(INFINITY) > 0) << '\n';
  std::cout << "rint(-INFINITY) < 0 is " << (rint(-INFINITY) < 0) << '\n';
  std::cout << "rint(INFINITY) > 0 is " << (rint(INFINITY) > 0) << '\n';
  std::cout << "ceil(-INFINITY) < 0 is " << (ceil(-INFINITY) < 0) << '\n';
  std::cout << "ceil(INFINITY) > 0 is " << (ceil(INFINITY) > 0) << '\n';
  std::cout << "floor(-INFINITY) < 0 is " << (floor(-INFINITY) < 0) << '\n';
  std::cout << "floor(INFINITY) > 0 is " << (floor(INFINITY) > 0) << '\n';
  std::cout << "INFINITY > INT_MAX is " << (INFINITY > INT_MAX) << '\n';

  // test_rint_isnan_isinf();
  return 0;
}
