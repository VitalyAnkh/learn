#![feature(never_type)]
use std::mem::{size_of, size_of_val};
use std::str::FromStr;
struct T(String);

impl FromStr for T {
    type Err = !;
    fn from_str(s: &str) -> Result<T, !> {
        Ok(T(String::from(s)))
    }
}

fn main() {
    let r: Result<T, !> = T::from_str("Hello");
    println!("Size of T: {}", size_of::<T>());
    println!("Size of Result: {}", size_of_val(&r));
}
