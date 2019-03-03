use std::sync::mpsc::sync_channel;
use std::thread;

fn main() {
    let (tx, rx) = sync_channel(2);
    tx.send(1).unwrap();
    println!("send first");
    thread::spawn(move || {
        tx.send(2).unwrap();
        println!("send second");
    });
    println!("receive first {}", rx.recv().unwrap());
    println!("redeive second {}", rx.recv().unwrap());
}
