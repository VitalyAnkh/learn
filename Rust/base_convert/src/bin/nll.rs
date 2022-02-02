#[derive(Debug)]
struct Point {
    x: i32,
    y: i32,
}
impl Point {
    fn set(&mut self, x: i32, y: i32) {
        self.x = x;
        self.y = y;
    }
}
fn main() {
    let mut p = Point { x: 1, y: 3 };
    let r = &mut p;
    let rr = &*r;
    println!("{:?}", rr);
    r.set(3, 4);
}
