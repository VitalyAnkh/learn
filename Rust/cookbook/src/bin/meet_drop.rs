#![feature(associated_type_bounds)]
#![feature(specialization)]

use std::fmt::Display;
#[allow(unused)]
use std::ops::Drop;

struct S(i32);

struct JoJo;

struct SJ(JoJo);

impl Drop for S {
    fn drop(&mut self) {
        println!("Dropping S({})", self.0);
    }
}

impl Drop for JoJo {
    fn drop(&mut self) {
        println!("JoJo!");
    }
}

struct GenericType<T>(T) where T: Display + Drop;

default impl<T: Drop + Display> Drop for GenericType<T> {
    fn drop(&mut self) {
        println!("Dropping S({})", self.0);
    }
}

impl Drop for SJ {
    fn drop(&mut self) {
        println!("SJ!");
    }
}

fn main() {
    let a = S(0);
    let jojo = JoJo;
    let _ = a;
    let _ = S(1);
    let b = S(2);
    drop(b);
    let _ = JoJo;
    let j = jojo;
    let sj = SJ(j);
    println!("Have fun!");
}