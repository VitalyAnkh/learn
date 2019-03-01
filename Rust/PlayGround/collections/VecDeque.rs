use std::collections::VecDeque;

fn main() {
    let mut queue = VecDeque::with_capacity(64);
    for i in 1..10 {
        queue.push_back(i);
    }

    while let Some(i) = queue.pop_front() {
        println!("{}", i);
    }
}
