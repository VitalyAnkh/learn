use std::io::prelude::*;
fn print_u8<T: AsRef<[u8]>>(s: T) {
    let s_u8 = s.as_ref();
    for i in s_u8 {
        print!("{} ", i);
    }
    std::io::stdout().flush().expect("Failed to flush stdout");
}

fn main() {
    let v = vec![1, 2, 3, 4, 8, 6];
    print_u8(v);
    let s = String::from("hello, world");
    print_u8(s);
    let array = ['y', 'i', 'x'];
    // print_u8(array);
}
// struct ThreeCharArray<'a>(&'a [char; 3]);
// impl<'a, 'b> AsRef<[u8]> for ThreeCharArray<'a> {
//     fn as_ref(&self) -> &[u8] {
//         &[self.0[0] as u8, self.0[1] as u8, self.0[2] as u8]
//     }
// }
