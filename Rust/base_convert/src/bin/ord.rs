use std::cmp::Ordering;

struct Point{
    x: i32,
    y: i32,
}

impl Ord for Point {
    fn cmp(&self, other: &Self) -> Ordering {
        match self.x.cmp(&other.x) {
            Some(Ordering::Equal) => self.y.cmp(&other.y),
            ordering => ordering,
        }
    }
}

impl PartialOrd for Point {
    fn partial_cmp(&self, other: &Self) -> Option<Ordering> {
        Some(self.cmp(other))
    }
}

impl PartialEq for Point {
    fn eq(&self, other: &Self) -> bool {
        self.cmp(other) == Ordering::Equal
    }
}

impl Eq for Point {}

fn main(){}