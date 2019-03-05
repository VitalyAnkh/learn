use std::io;
fn read_num(s: &str) -> Vec<usize> {
    s.split_whitespace()
        .filter_map(|c| c.parse::<usize>().ok())
        .collect::<Vec<usize>>()
}
fn get_line() -> String {
    let mut s = String::new();
    io::stdin().read_line(&mut s).unwrap();
    s
}

fn main() {
    let v = read_num(&get_line());
    let money: f64 = (v[0] * 10 + v[1]) as f64;
    println!("{}", (money / 19 as f64).floor() as isize);
}
