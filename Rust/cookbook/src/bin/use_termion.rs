use termion::{color,style};
use std::io;

fn main(){
    println!("{}Red",color::Fg(color::Red));
    println!("{}Blue",color::Fg(color::Blue));
    println!("{}Blue 'n'{}",style::Bold,style::Reset);
    println!("{}Just plain italic",style::Italic);
    println!("{}{}Clear all and move cursor",termion::clear::All,termion::cursor::Goto(1,1));
}