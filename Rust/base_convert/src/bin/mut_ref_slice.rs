use std::io::Read;
struct StructRefMut<'a, T> {
    a: &'a mut T,
}

fn main() {
    let mut foo = "hello";
    let bar = StructRefMut { a: &mut foo };
    *(bar.a) = "world";
    // Can't compile if you uncomment the following two lines
    // let mut baz = String::from("okaeri");
    // bar.a = &mut baz;
    dbg!(bar.a);
    let mut buf = [0; 3];
    let mut data: &[u8] = &[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    while let Ok(1..) = Read::read(&mut data, &mut buf) {
        println!("({r:p}, {len}): {r:?}", r = data, len = data.len());
    }
}
