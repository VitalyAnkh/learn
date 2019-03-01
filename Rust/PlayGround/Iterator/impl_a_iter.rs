use std::iter::Iterator;

struct Seq {
    current: i32,
}

impl Seq {
    fn new() -> Self {
        Seq { current: 0 }
    }
}

impl Iterator for Seq {
    type Item = i32;
    fn next(&mut self) -> Option<i32> {
        if self.current < 100 {
            self.current += 1;
            return Some(self.current);
        } else {
            return None;
        }
    }
}

fn main() {
    let mut seq = Seq::new();
    while let Some(i) = Seq::next(&mut seq) {
        println!("{}", i);
    }
}
