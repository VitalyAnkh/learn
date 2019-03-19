use std::io;
use std::io::prelude::*;

fn main() {
    print_single_line("Please enter your forename: ");
    let forename = read_line_iter();
    print_single_line("Please enter your surname: ");
    let surname = read_line_buffer();

    print_single_line("Please enter your age: ");
    let age = read_number();

    println!(
        "Hello, {} year old human named {} {}!",
        age, forename, surname
    );
}

fn print_single_line(text: &str) {
    print!("{}", text);
    io::stdout().flush().expect("Failed to flush stdout");
}

fn read_line_iter() -> String {
    let stdin = io::stdin();
    let input = stdin.lock().lines().next();
    input
        .expect("No lines in buffer")
        .expect("Failed to read line")
        .trim()
        .to_string()
}

fn read_line_buffer() -> String {
    let mut input = String::new();
    io::stdin()
        .read_line(&mut input)
        .expect("Failed to read line");
    input.trim().to_string()
}
fn read_number() -> i32 {
    let stdin = io::stdin();
    loop {
        for line in stdin.lock().lines() {
            let input = line.expect("Failed to read line");
            match input.trim().parse::<i32>() {
                Ok(num) => return num,
                Err(e) => println!("Failed to read number: {}", e),
            }
        }
    }
}
