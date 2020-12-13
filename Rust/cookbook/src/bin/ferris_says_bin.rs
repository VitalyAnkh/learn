extern crate cookbook;
extern crate textwrap;
extern crate unicode_width;

use cookbook::ferris_says;
use textwrap::fill;
use unicode_width::UnicodeWidthStr;

fn main() {
    let test_str = "fda 我们 咕咕咕";
    let wrapped = fill(test_str, 5);
    let lines: Vec<&str> = wrapped.lines().collect();
    println!("{:?}", lines);
    println!("{}", ferris_says::longest_line(&lines));
}
