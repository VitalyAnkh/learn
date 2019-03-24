use std::io::prelude::*;
use std::io::{self, BufReader};
fn main() {
    let mut v = Vec::new();
    let f = io::stdin();
    let mut f = BufReader::new(f);
    let mut line_buf = String::new();
    f.read_line(&mut line_buf).unwrap();

    let mut words = line_buf.split_whitespace();
    let _m: u32 = words.next().unwrap().parse().unwrap();
    let _n: u32 = words.next().unwrap().parse().unwrap();
    for line in f.lines() {
        let tmp = line
            .unwrap()
            .split_whitespace()
            .filter_map(|x| x.parse::<u32>().ok())
            .collect::<Vec<u32>>();
        if tmp.len() == 0 {
            break;
        } else {
            v.push(tmp)
        };
    }
    dbg!(v);
}
