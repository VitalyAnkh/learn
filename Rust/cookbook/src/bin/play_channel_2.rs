use std::sync::mpsc;
use std::thread;
use std::str::FromStr;


#[derive(Debug)]
struct Complex<T> {
    re: T,
    im: T,
}

fn main() {
    let (tx, rx) = mpsc::channel();
    let z = Complex { re: 1, im: 2 };
    tx.send(z).unwrap();
    tx.send(Complex { re: 3, im: 4 }).unwrap();
    let received_1 = rx.recv().unwrap();
    let received_2 = rx.recv().unwrap();
    let received_3 = rx.recv().unwrap();
    println!("{:?}", received_1);
    println!("{:?}", received_2);
//    println!("{:?}", received_3);
//    println!("{:?}", received_3);
}

