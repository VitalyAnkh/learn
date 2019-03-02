use std::thread;

fn main() {
    let mut a = 10;
    let mut v = vec![1];
    thread::spawn(move || v.push(2));
    thread::spawn(move || a = a + 1);
    println!("{}", a);
    println!("{:?}", v);
}
