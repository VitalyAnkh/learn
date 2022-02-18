#![allow(unused_variables)]

fn main() {}
fn a() {
    // the `2` is unreachable:
    let x: (usize, usize) = (return, 2); //~ ERROR unreachable
}

fn b() {
    // the tuple is unreachable:
    let x: (usize, usize) = (2, return); //~ ERROR unreachable
}
