extern crate ansi_term;

use ansi_term::Colour;
use ansi_term::Style;

fn main() {
    let i = 2;
    let j = 3;
    println!(
        "This is {} in color, {} in color and {} in color",
        Colour::Red.paint("红"),
        Colour::Blue.paint("蓝"),
        Colour::Green.bold().paint("绿")
    );
    println!(
        "{} and this not.",
        Style::new().bold().paint("This is bold")
    );
    let a: i32 = 0;

    println!(
        "{}",
        Colour::Yellow.bold().paint("This is yellow and is bolded.")
    );
    println!("{}", Colour::Purple.blink().paint("I'm purple"));
    let fdsa: f64 = 1.0;
}
