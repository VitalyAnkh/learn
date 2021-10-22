use crossbeam::thread;

fn main() {
    let mut greeting = String::from("Hello");
    let greeting_ref = &greeting;

    thread::scope(|scoped_thread| {
        for n in 1..=1000 {
            scoped_thread.spawn(move |_| {
                println!("{} {}", greeting_ref, n);
            });
        }
        //   greeting += " world";
    });
    greeting += "world";
    println!("{}", greeting);
}
