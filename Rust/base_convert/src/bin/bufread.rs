use std::io::{self, BufRead};

fn main() {
    let mut cursor = io::Cursor::new("vitalyr-winter");
    let mut buf = vec![];
    let num_byte = cursor
        .read_until(b'-', &mut buf)
        .expect("Cursor reading won't fail");
    assert_eq!(num_byte, 8);
}
