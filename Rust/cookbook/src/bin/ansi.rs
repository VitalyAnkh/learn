extern crate ansi_term;

use ansi_term::Colour;
use ansi_term::Style;

fn main() {
    println!(
        "This is {} in color, {} in color and {} in color",
        Colour::Red.paint("红"),
        Colour::Blue.paint("蓝"),
        Colour::Green.paint("绿")
    );
    println!(
        "{} and this not.",
        Style::new().bold().paint("This is bold")
    );
    println!(
        "{}",
        Colour::Yellow.bold().paint("This is yellow and is bolded.")
    );
}
