use std::error::Error;
use std::fs::File;
use std::io;
use std::io::Read;
fn main() -> Result<String, io::Error> {
    let mut f = String::new();
    File::open("foo.txt")?.read_to_string(&mut f)?;
    Ok(f)
}
