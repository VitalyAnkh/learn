use std::alloc;
use std::mem;
fn main() {
    println!(
        "The layout of 1i32 is {:?}.",
        alloc::Layout::for_value(&1i32)
    );
}
