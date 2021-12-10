use std::io;
use std::io::prelude::*;
fn main() -> io::Result<()> {
    let mut stdin = io::stdin();
    let mut stdout = io::stdout();
    io::copy(&mut stdin, &mut stdout)?;
    Ok(())
}
