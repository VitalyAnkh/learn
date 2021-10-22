use std::{f64::consts::PI, process::ChildStderr};
fn example(cond: bool, vec: Vec<i32>) -> Box<dyn Iterator<Item = i32>> {
    let iter = vec.into_iter();
    if cond {
        Box::new(iter.map(|n| n * 2))
    } else {
        Box::new(iter.filter(|&n| n >= 2))
    }
}
struct Circle {
    radius: f64,
}

struct Square {
    side: f64,
}
trait Shape {
    fn area(&self) -> f64;
}

impl Shape for Circle {
    fn area(&self) -> f64 {
        PI * self.radius * self.radius
    }
}
impl Shape for Square {
    fn area(&self) -> f64 {
        self.side * self.side
    }
}
fn get_totoal_area(shapes: Vec<Box<dyn Shape>>) -> f64 {
    shapes.into_iter().map(|s| s.area()).sum()
}

fn main() {
    let c = Circle { radius: 1.0 };
    let sq = Square { side: 3.0 };
    let s: Vec<Box<dyn Shape>> = vec![Box::new(c), Box::new(sq)];
    assert_eq!(PI + 9.0, get_totoal_area(s));
}

#[test]
fn test_example() {
    let cond = true;
    let v = vec![1, 2, 3];
    example(cond, v);
}
