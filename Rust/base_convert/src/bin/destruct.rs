#[derive(Default)]
struct Point {
    x: i32,
    y: i32,
}
impl Point {
    fn add_one(Self { x, y }: Self) -> (i32, i32) {
        (x + 1, y + 1)
    }
    fn add_one_ref(&mut Self { x, y }: &mut Self) -> (i32, i32) {
        (x + 1, y + 1)
    }
}
fn main() {
    let p = Point::default();
}
