#[derive(Default)]
struct Point {
    x: i32,
    y: i32,
}

impl PartialEq for Point {
    fn eq(&self, rhs: &Point) -> bool {
        self.x == rhs.x && self.y == rhs.y
    }
}

fn main() {
    let p1 = Point::default();
    let p2 = Point::default();
    assert!(p1 == p2);
}
