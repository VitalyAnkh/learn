struct A {
    a: u8,
    b: u16,
    c: u32,
}

fn main() {
    println!("{:?}", std::mem::size_of::<A>());
}
