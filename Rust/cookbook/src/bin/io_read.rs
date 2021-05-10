use std::fs::File;
use std::io;
use std::io::Read;

fn main() -> Result<(), io::Error> {
    let mut file = File::open("Cargo.toml")?;
    let mut buffer = String::new();
    file.read_to_string(&mut buffer)?;
    println!("{}", buffer);
    Ok(())
}
