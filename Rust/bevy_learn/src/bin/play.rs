#[derive(Default, Debug, Clone, Eq, PartialEq)]
struct Point {
    x: i32,
    y: i32,
}

fn main() {
    let mut p = Point::default();
    let mut r = &mut p;
    r.x = 1;
    r.y = 2;
    dbg!(p);
}
