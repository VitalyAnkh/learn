use std::io;
use std::io::prelude::*;

fn main() {
    print_single_line("Please enter your forename: ");
    let forename = read_line_iter();
}

fn print_single_line(text: &str) {
    print!("{}", text);
    io::stdout().flush().expect("Failed to flush stdout");
}

fn read_line_iter() -> String {
    let stdin = io::stdin();
    let input = stdin.lock().lines.next();
    input
        .expect("No lines in buffer")
        .expect("Failed to read line")
        .trim()
        .to_string()
}

fn read_line_buffer() -> String {
    let mut input = String::new();
    io::stdin().read_line()
}
