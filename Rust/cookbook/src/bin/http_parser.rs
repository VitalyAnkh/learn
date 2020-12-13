extern crate cookbook;

use nom::{bytes::complete::tag, sequence::preceded, IResult};

fn main() {
    let method = take_while1(is_alpha);
    for argument in std::env::args() {
        println!("{}", argument);
    }
}

//fn f(i: &[u8]) -> IResult<&[u8], &[u8]> {
//    dbg_dmp(tag("abcd"))(i)
//}
