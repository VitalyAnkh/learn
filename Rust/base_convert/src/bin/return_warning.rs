#![allow(unused_variables)]
#![deny(unreachable_code)]

fn main() {
    let x = loop {
        continue;
        println!("hi");
        //~^ ERROR unreachable statement
    };
}
fn a() {
    // the `2` is unreachable:
    let x: (usize, usize) = (return, 2); //~ ERROR unreachable
}

fn b() {
    // the tuple is unreachable:
    let x: (usize, usize) = (2, return); //~ ERROR unreachable
}
