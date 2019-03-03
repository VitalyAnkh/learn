use std::sync::mpsc::channel;
use std::thread;

fn main() {
    let (tx, rx) = channel();
    for i in 1..100 {
        let tx = tx.clone();
        thread::spawn(move || {
            tx.send(i).unwrap();
        });
    }
    drop(tx);
    while let Ok(r) = rx.recv() {
        println!("received {}", r);
    }
}
