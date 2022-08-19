#include "SalesData.h"

int main() {
  SalesData myData("Anna Karenina");
  SalesData yourData("Good Omens");
  myData.combine(yourData);
  return 0;
}
