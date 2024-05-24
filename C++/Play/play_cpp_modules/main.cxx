import foo;
import std;

void vr_hello_world(std::string const &name);

int main(int argc, char *argv[]) {
  Foo f;
  f.hello_world();
  std::string word{"Hello, world!"};
  std::print("{:>15}", word);
  vr_hello_world(argv[0] ? argv[0] : "Voldemort?");
  return 0;
}
