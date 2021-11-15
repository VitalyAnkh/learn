use std::error::Error;
use std::fs::File;
use std::io::{prelude::*, BufReader};
use std::path::Path;

fn main() {
    let file = File::open("day1_input.txt").unwrap();
    let reader = BufReader::new(file);
    let mut numbers: Vec<i32> = reader
        .lines()
        .map(|num| num.ok().unwrap().parse::<i32>().expect("parse error!"))
        .collect();
    let len = numbers.len();
    for (i, number) in numbers.iter().enumerate() {
        for n in &numbers[i..len] {
            if number + n == 2020 {
                println!("{}", number * n);
                return;
            }
        }
    }
}
