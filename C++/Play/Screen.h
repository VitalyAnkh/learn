#include <iostream>
#include <string>
#include <vector>

class Screen {
public:
  typedef std::string::size_type Pos;
  Screen() = default;

  Screen(Pos ht, Pos wd, char c)
      : height(ht), width(wd), contents(ht * wd, c) {}
  Screen(Pos ht, Pos wd) : height(ht), width(wd), contents(ht * wd, ' ') {}

  char get() const { return contents[cursor]; }
  inline char get(Pos ht, Pos wd) const;
  Screen &move(Pos r, Pos c);
  Screen &set(char);
  Screen &set(Pos, Pos, char);
  Screen &display(std::ostream &os);
  const Screen &display(std::ostream &os) const;

private:
  Pos cursor = 0;
  Pos height = 0, width = 0;
  mutable size_t access_counter = 0;
  std::string contents;
  void do_display(std::ostream &os) const { os << contents; }
};

class WindowManager {
private:
  std::vector<Screen> screens{Screen(24, 80, ' ')};
};
inline Screen &Screen::move(Pos row, Pos col) {
  cursor = row * width + col;
  return *this;
}

char Screen::get(Pos row, Pos col) const { return contents[row * width + col]; }
inline Screen &Screen::set(char c) {
  contents[cursor] = c;
  return *this;
}

inline Screen &Screen::set(Pos row, Pos col, char c) {
  contents[row * width + col] = c;
  return *this;
}

inline Screen &Screen::display(std::ostream &os) {
  do_display(os);
  return *this;
}

inline const Screen &Screen::display(std::ostream &os) const {
  do_display(os);
  return *this;
}

// test if names which represent types can be redefined in a new class scope
typedef double Money;

class Account {
public:
  Money balance() { return bal; }

private:
  // typedef double Money;
  //错误：declaration of ‘typedef double Account::Money’ changes meaning of
  //‘Money’ [-fpermissive]
  Money bal;
};

class TestBase {
protected:
  int value;

public:
  TestBase(int value) : value(value) {}
  int getValue() { return value; }
  void showValue() { std::cout << "The value is " << value << std::endl; }
};

class Derived : TestBase {
public:
  using TestBase::showValue;
  using TestBase::value;
};
