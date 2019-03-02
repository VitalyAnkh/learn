use std::cmp::max;
macro_rules! max {
     ($e: expr) => { $e };
     ($e: expr, $($rest: tt)*) => { max($e, max!($($rest)*)) }
}
#[derive(Debug)]
struct WithArr<'a, T> {
    p: &'a str,
    v: Vec<T>,
}

fn main() {
    let (x, y, z) = (1, 2, 3);
    let (a, b, c) = ('a', 'b', 'c');
    println!("{}", max!(a, b, c));
    println!("{:?}", max!(x, y, z));

    let s = WithArr {
        p: "I love your",
        v: vec![x, y, z],
    };
}
