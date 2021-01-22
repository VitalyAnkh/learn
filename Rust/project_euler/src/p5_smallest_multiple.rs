fn main() {
    let mut n = 0;
    for i in 1..=1000 {
        if i % 2 == 0 {
            n += 1;
        }
    }
    println!("{}", n);
}
