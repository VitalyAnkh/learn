use std::fs::File;
use std::io::prelude::*;
use std::io::{self, BufReader};

fn main() -> io::Result<()> {
    let f = io::stdin();
    let f = BufReader::new(f);
    for line in f.lines() {
        println!("{}", line.unwrap());
    }
    Ok(())
}
