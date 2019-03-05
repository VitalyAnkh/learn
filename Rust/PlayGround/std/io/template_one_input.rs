use std::io;

fn main() {
    let mut s = String::new();
    io::stdin().read_line(&mut s).unwrap();
    let input = s.parse::<usize>().ok();

    println!("{}", input);
}
