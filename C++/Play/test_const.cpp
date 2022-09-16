#include <string>
class Student {
private:
  std::string name;
  int age;

public:
  Student(std::string name, int age): name(name), age(age) {}
  std::string getName() { return name; }
  int getAge() { return age; }
  void setAge(int a) const{ this->age = a; }
};

int main() {
  const Student s("John", 20);
  s.setAge(11); // error: assignment of member 'Student::name' in read-only object
}
