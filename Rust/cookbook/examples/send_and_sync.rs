use std::rc::Rc;
use std::thread;

fn main() {
    let mut v = Rc::new(vec![1, 2, 3]);
    thread::spawn(move || v.push(2));
    // v.push(3);
}
