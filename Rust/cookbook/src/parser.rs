use nom::{combinator::map_res, IResult};
use nom::bytes::complete::{tag, take, take_while1};
use nom::number::complete::be_u16;
use nom::sequence::{preceded, tuple};

pub fn length_value(input: &[u8]) -> IResult<&[u8], &[u8]> {
    let (input, length) = be_u16(input)?;
    take(length)(input)
}

#[derive(Debug,PartialEq)]
pub struct Color {
    pub red: u8,
    pub green: u8,
    pub blue: u8,
}

fn from_hex(input:&str)->Result<u8, std::num::ParseIntError>{
    u8::from_str_radix(input,16)
}


//pub fn http_request_line(i: &[u8]) -> IResult<&[u8], Request> {
//    let method = take_while1(is_alpha);
//    let space = take_while1(|c| c == ' ');
//    let url = take_while1(|c| c != ' ');
//    let is_version = |c| c >= b'0' && c <= b'9' || c == b'.';
//    let http = tag("HTTP/");
//    let version = take_while1(is_version);
//    let line_ending = tag("\r\n");
//
//    let http_version = preceded(http, version);
//
//    let (input, (method, _, url, _, version)) = tuple((method, space, url, space, http_version, line_ending))(i)?;
//    Ok((input, Request { method, url, version }))
//}



