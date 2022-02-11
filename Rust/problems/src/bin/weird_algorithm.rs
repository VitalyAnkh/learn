use std::io::{BufRead, BufReader};
fn main() {
    let mut input = BufReader::new(std::io::stdin());
    let mut line = String::new();
    input.read_line(&mut line).unwrap();
    let mut split = line.split_whitespace();
    let mut a: u64 = split.next().unwrap().parse().unwrap();
    while a != 1 {
        print!("{} ", a);
        if a % 2 == 0 {
            a >>= 1;
        } else {
            a = a * 3 + 1;
        }
    }
    println!("{}", a);
}
