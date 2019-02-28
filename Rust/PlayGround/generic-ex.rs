use std::cmp::Ordering;
use std::cmp::PartialOrd;
use std::fmt;

struct Ice {
    value: i32,
}

impl fmt::Display for Ice {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "Ice {{value: {}}}", self.value)
    }
}

impl PartialOrd for Ice {
    fn partial_cmp(&self, other: &Ice) -> Option<Ordering> {
        self.value.partial_cmp(&other.value)
    }
}
impl PartialEq for Ice {
    fn eq(&self, other: &Ice) -> bool {
        &self.value == &other.value
    }
}

fn max<'x, T: PartialOrd>(a: &'x T, b: &'x T) -> &'x T {
    if a > b {
        a
    } else {
        b
    }
}

fn main() {
    let a = 1;
    let b = 2;
    let c = 'a';
    let d = 'b';
    let ice100 = Ice { value: 100 };
    let ice1000 = Ice { value: 1000 };
    println!("{}", max(&ice100, &ice1000));

    println!("{}", max(&c, &d));
    println!("{}", max(&a, &b));
    println!("{},{}", a, b);
}
