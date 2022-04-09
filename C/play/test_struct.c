#include <stdio.h>

typedef struct {
  int age;
  char name[100];
} Person;
int main() {
  Person jon;
  scanf("%d", &jon.age);
  scanf("%s", &(jon.name));
  printf("Jon's age: %d\n", jon.age);
  printf("Jon's name: %s\n", jon.name);
  return 0;
}
