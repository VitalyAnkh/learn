#![feature(specialization)]

use std::fmt::Display;

trait Example {
    fn call(&self);
}

impl<T> Example for T {
    default fn call(&self) {
        println!("most generic");
    }
}

impl<T> Example for T
where
    T: Display,
{
    default fn call(&self) {
        println!("generic for Display,{}", self);
    }
}

impl Example for str {
    fn call(&self) {
        println!("specialization for str, {}", self);
    }
}

fn main() {
    let v1 = vec![1i32, 2, 3];
    let v2 = 1_i32;
    let v3 = "hello";

    v1.call();
    v2.call();
    v3.call();
}
