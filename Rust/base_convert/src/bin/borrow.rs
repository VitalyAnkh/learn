use std::borrow::Borrow;

#[derive(Debug, Clone, Copy)]
struct Point {
    x: i32,
    y: i32,
}
impl From<(i32, i32)> for Point {
    fn from((x, y): (i32, i32)) -> Self {
        Point { x, y }
    }
}

fn main() {
    let p = Point { x: 1, y: 2 };
    let p2 = Point::from((3, 4));
    dbg!(p2);
}
