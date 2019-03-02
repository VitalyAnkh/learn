use std::io::prelude::*;
use std::io::BufReader;

fn test_stdin() -> Result<(), std::io::Error> {
    let stdin = std::io::stdin();
    let handle = stdin.lock();
    let reader = BufReader::new(handle);

    for line in reader.lines() {
        let line = line?;
        if line.is_empty() {
            return Ok(());
        }
        println!("{}", line);
    }
    Ok(())
}

fn main() {
    match test_stdin() {
        Ok(_) => {}
        Err(e) => {
            println!("Error occured: {}", e);
        }
    }
}
