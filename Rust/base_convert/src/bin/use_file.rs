use std::fs::File;
use std::io::{BufRead, BufReader, Error, Write};

fn main() -> Result<(), Error> {
    let path = "lines.txt";
    let mut output = File::create(path)?;
    write!(output, "Rust\n我\n很\n喜欢\n")?;

    let input = File::open(path)?;
    let buffered = BufReader::new(input);

    for line in buffered.lines() {
        println!("{}", line?);
    }
    Ok(())
}
