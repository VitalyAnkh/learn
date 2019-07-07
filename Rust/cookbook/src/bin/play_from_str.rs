use std::num::ParseIntError;
use std::str::FromStr;

#[derive(Debug,Eq,PartialEq)]
struct Point {
    x: i32,
    y: i32,
}

impl FromStr for Point {
    type Err = ParseIntError;
    fn from_str(s: &str) -> Result<Self, Self::Err> {
        let coords: Vec<&str> = s.trim_matches(|p| p == '(' || p == ')')
            .split(',')
            .collect();
        let x = coords[0].parse::<i32>()?;
        let y = coords[1].parse::<i32>()?;
        Ok(Point {
            x,
            y,
        })
    }
}
fn main(){

    let p="(1,2)";
    let p=Point::from_str(p);
    dbg!(p);
}