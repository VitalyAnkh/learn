#include <fenv.h>
#include <math.h>
#include <stdio.h>
int add(float a, float b) { return a + b; }

int main() {
  fesetround(FE_DOWNWARD);
  double a = 1.2;
  float b = 2.3;
  add(a, b);

  printf("+11.5 -> %+4.1f\n", rint(+11.5)); /* midway between two integers */
  printf("+12.5 -> %+4.1f\n", rint(+12.5)); /* midway between two integers */

  return 0;
}
