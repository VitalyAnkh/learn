fn main() {
    let mut buf = String::new();
    std::io::stdin().read_line(&mut buf);
    let mut words = buf.split_whitespace();
    let a: i64 = words.next().unwrap().parse().unwrap();
    let b: i64 = words.next().unwrap().parse().unwrap();
    let c: i64 = words.next().unwrap().parse().unwrap();
    println!("{}", a + b + c);
}
