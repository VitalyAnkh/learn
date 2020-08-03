use std::io::stdin;

fn main() {
    let mut s = String::new();
    stdin().read_line(&mut s).unwrap();
    for char in s.bytes() {
        println!("{}", char);
    }
    println!("{}", s.len());
}
