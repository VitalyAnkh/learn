use std::io;

fn get_line() -> String {
    println!("Please input a series of numbers: ");
    let mut s = String::new();
    io::stdin().read_line(&mut s).unwrap();
    s
}

fn sum(s: &str) -> usize {
    s.split_whitespace()
        .filter_map(|c| c.parse::<usize>().ok())
        .sum()
}

fn main() {
    let s = get_line();
    println!("{:?}", sum(&s));
}
