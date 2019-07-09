use std::fs::File;
use std::io::prelude::*;

fn main() -> std::io::Result<()> {
    let mut f = File::create("foo.txt")?;

    f.write_all(b"Hello, world!")?;
    dbg!(f);
    Ok(())
}