use std::fmt::Display;
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

#[derive(Copy, Clone, Debug)]
struct Point {
    x: f32,
    y: f32,
}

#[derive(Copy, Clone, Debug)]
struct Line {
    start: Point,
    end: Point,
}

impl Display for Point {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f, "({}, {})", self.x, self.y)
    }
}
impl Display for Line {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        writeln!(f, "start: ({x}, {y})", x = self.start.x, y = self.start.y)?;
        writeln!(f, "end: ({x}, {y})", x = self.end.x, y = self.end.y)
    }
}

#[derive(Debug)]
pub enum List<T> {
    Cons(T, Box<List<T>>),
    Nil,
}

#[derive(Debug, Clone, Copy)]
pub struct ListWrapper<T> {
    pub list: List<T>,
}
trait MyTrait {
    fn bark() {
        println!("bark!");
    }
}
impl From<(Point, Point)> for Line {
    fn from((start, end): (Point, Point)) -> Self {
        Line { start, end }
    }
}

impl MyTrait for Point {}
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
    let start = Point { x: 0.0, y: 0.0 };
    let end = Point { x: 1.0, y: 1.0 };
    let line = Line::from((start, end));
    println!("{:?}", start);
    println!("{:?}", end);
    println!("{:?}", line);
    println!("{}", line);
    assert_eq!(PI + 9.0, get_totoal_area(s));
}

#[test]
fn test_example() {
    let cond = true;
    let v = vec![1, 2, 3];
    example(cond, v);
}
