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
