use std::sync::mpsc;
use std::thread;

fn main() {
    const NTHREADS: u8 = 12;
    let (tx, rx) = mpsc::channel();
    let mut children = Vec::with_capacity(NTHREADS as usize);
    for id in 0..NTHREADS {
        let tx_clone = tx.clone();
        children.push(thread::spawn(move || {
            tx_clone.send(id).unwrap();
            println!("Thread {} finished!",id);
        }));
    }

    let mut ids = Vec::with_capacity(NTHREADS as usize);
    for _ in 0..NTHREADS {

       ids.push(rx.recv().unwrap());
    }

    for child in children{
        let _ =child.join();
    }

    println!("{:?}",rx);
    dbg!(ids);
}