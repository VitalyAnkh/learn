use nom::bytes::complete::{take, tag, take_while_m_n};
use nom::combinator::map_res;
use nom::sequence::tuple;
use nom::IResult;

#[derive(Debug, Clone, PartialEq)]
pub enum Err<E> {
    Incompleted(Needed),
    Error(E),
    Failure(E),
}

pub fn length_value(input: &[u8]) -> IResult<&[u8], &[u8]> {
    let (input, length) = be_u16(input)?;
    take(length)(input)
}

let method = take_while1(is_alpha);
