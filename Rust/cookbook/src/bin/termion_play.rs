extern crate termion;

use std::io;

use termion::{clear, color, cursor, style};

fn main() {
    println!("{}Red", color::Fg(color::Red));
    println!("{}Blue", color::Fg(color::Blue));
    println!("{}Blue'n'Bold{}", style::Bold, style::Reset);
    println!("{}Just plain italic", style::Italic);
    println!("{}{}Stuff", clear::All, cursor::Goto(1, 1));
}
