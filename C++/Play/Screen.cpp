#include "Screen.h"

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

Pos Screen::size() const { return height * width; }
