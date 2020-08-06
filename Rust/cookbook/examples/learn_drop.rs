use std::ops::Drop;

#[derive(Debug)]
struct S(i32);
impl Drop for S {
    fn drop(&mut self) {
        println!("{:?} dropped!", self);
    }
}

fn main() {
    let s1 = S(1);
    {
        let s2 = S(2);
        println!("exit inner scope");
    }
    println!("exit outer scope");
}
