use std::io;
use std::io::prelude::*;

fn sum_series(n: u128) -> f64 {
    let mut sum = 0f64;
    for i in 1..=n {
        sum += 1f64 / (i as f64);
    }
    sum
}

fn main() -> std::io::Result<()> {
    let input = io::stdin();
    let mut input = io::BufReader::new(input);
    let mut num = String::new();
    loop {
        println!("Please input an integer to calculate the sum of homo series: ");
        let num = read_number();
        println!("the sum is {}", sum_series(num));
    }
    let a = 3;
    Ok(())
}

fn read_number() -> u128 {
    let stdin = io::stdin();
    loop {
        for line in stdin.lock().lines() {
            let input = line.expect("Failed to read line");
            match input.trim().parse::<u128>() {
                Ok(num) => return num,
                Err(e) => println!("Failed to read number: {}", e),
            }
        }
    }
}
