use std::ops::Deref;
use std::sync::{Arc, Mutex};
use std::thread;

static NTHREADS: u8 = 12;

fn main() {
    let mut children = vec![];
    let mut children2 = vec![];
    for i in 0..NTHREADS {
        children.push(thread::spawn(move || {
            println!("This is the thread number: {}!", i);
        }));
    }
    let mut a = Arc::new(3);
    {
        let a1 = a.clone();
        children2.push(thread::spawn(move || { a = Arc::new(a1.deref() + 1); }));
    }
    {
        let a2 = a.clone();
        children2.push(thread::spawn(move|| { a = Arc::new(0); }));
    }{let a3=a.clone();
    children2.push(thread::spawn(move || { a = Arc::new(a.deref() + 2); }));
    }

    for child in children {
        let _ = child.join();
    }
}