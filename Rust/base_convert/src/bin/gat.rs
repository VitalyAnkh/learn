#![feature(generic_associated_types)]

const A: u32 = 0;
fn f<T>() {}
type V<T> = Vec<T>;

trait X {
    const D: i32;
    fn f<T>() {}
    type V<T>;
}

struct T;

impl X for T {
    const D: i32 = 0;
    fn f<T>() {}
    type V<T> = Vec<T>;
}
fn main() {}
