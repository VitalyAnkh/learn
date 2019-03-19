use std::fs::File;
use std::io::prelude::*;
use std::io::BufReader;

fn test_stdio() -> Result<(), std::io::Error> {
    let stdin = std::io::stdin();
    let stdin_lock = stdin.lock();
    let reader = BufReader::new(stdin_lock);
    for line in reader.lines() {
        let line = line?;
        if line.is_empty() {
            return Ok(());
        }
        println!("Read line: {}", line);
    }
    Ok(())
}

fn main() {
    match test_stdio() {
        Ok(_) => {}
        Err(e) => {
            println!("Error occured: {}", e);
        }
    }
}
