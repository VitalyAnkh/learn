extern crate cookbook;

use nom::{bytes::complete::tag, IResult};


fn main() {
    for argument in std::env::args() {
        println!("{}", argument);

    }
}

//fn f(i: &[u8]) -> IResult<&[u8], &[u8]> {
//    dbg_dmp(tag("abcd"))(i)
//}