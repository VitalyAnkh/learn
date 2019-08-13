use std::io::prelude::*;

fn main() {
    let stdin = std::io::stdin();
    let f = std::io::BufReader::new(stdin);
    let mut counter=0;
    let mut final_counter=0;
    let mut sum=0;
    let mut max_sum=0;
    for line in f.lines() {
        counter+=1;
        let s = line.unwrap();
        let mut two_nums = s.split_whitespace();
        let a: i32 = two_nums.next().unwrap().parse().unwrap();
        let b: i32 = two_nums.next().unwrap().parse().unwrap();
        sum=a+b;
        if sum>max_sum{
            max_sum=sum;
            final_counter=counter;
        }
    }
    println!("{}",final_counter);
}