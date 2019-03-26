use std::convert::From;
#[derive(Debug)]
struct Num {
    number: i32,
}

impl From<i32> for Num {
    fn from(item: i32) -> Self {
        Num { number: item }
    }
}

fn main() {
    let int = 23;
    let n: Num = 23.into();
    dbg!(n);
}
