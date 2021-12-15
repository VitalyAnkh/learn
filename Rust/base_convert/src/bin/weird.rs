// https://cses.fi/problemset/task/1068/

fn main() {
    let mut n = std::env::args().nth(1).unwrap().parse::<i32>().unwrap();
    let mut v = vec![n];
    while n != 1 {
        if n % 2 == 0 {
            n /= 2;
        } else {
            n = n * 3 + 1
        }
        v.push(n);
    }
    for i in v {
        print!("{} ", i);
    }
    println!();
}
