use std::io::prelude::*;
use std::io::{self, stdin};
fn main() -> io::Result<()> {
    let mut input = String::new();
    let mut stdin = stdin();
    let mut stdout = io::stdout();
    io::copy(&mut stdin, &mut stdout)?;
    Ok(())
}
