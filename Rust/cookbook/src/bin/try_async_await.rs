#![feature(async_await)]
extern crate futures;

fn main() {
    let closure = async || {
        println!("Hello from async closure.");
    };
    println!("Hello from main");
    let future = closure();
    println!("Hello from main again");
    futures::block_on(future);
}