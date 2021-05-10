#![feature(ptr_internals)]
use std::ptr::Unique;

struct MyVec<T> {
    buf: MyRawVec<T>,
    len: usize,
}

struct MyRawVec<T> {
    ptr: Unique<T>,
    cap: usize,
}

fn main() {}
