use std::io::Read;

fn main() {
    let mut buf = [0; 3];
    let mut data: &[u8] = &[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    while let Ok(1..) = Read::read(&mut data, &mut buf) {
        println!("({r:p}, {len}): {r:?}", r = data, len = data.len());
    }
}
