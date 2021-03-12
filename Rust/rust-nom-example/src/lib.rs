use nom::{
    branch::alt,
    bytes::complete::{tag, tag_no_case},
    character::complete::alphanumeric1,
    combinator::opt,
    error::{context, ErrorKind, VerboseError, VerboseErrorKind},
    sequence::{separated_pair, terminated},
    Err as NomErr, IResult,
};

#[cfg(test)]
mod tests;

// URI example: https://www.zupzup.org/about/?someVal=5&anotherVal=hello#anchor
// URI example: http://user:pw@127.0.0.1:8080
//
#[derive(Debug, PartialEq, Eq)]
pub struct URI<'a> {
    scheme: Scheme,
    authorithy: Option<Authorithy<'a>>,
    host: Host,
    port: Option<u16>,
    path: Option<Vec<&'a str>>,
    query: Option<QueryParams<'a>>,
    fragment: Option<&'a str>,
}

#[derive(Debug, PartialEq, Eq)]
pub enum Scheme {
    HTTP,
    HTTPS,
}

pub type Authorithy<'a> = (&'a str, Option<&'a str>);

#[derive(Debug, PartialEq, Eq)]
pub enum Host {
    HOST(String),
    // todo: make this IPv6 compatible?
    IP([u8; 4]),
}

pub type QueryParam<'a> = (&'a str, &'a str);
pub type QueryParams<'a> = Vec<QueryParam<'a>>;

impl From<&str> for Scheme {
    fn from(i: &str) -> Self {
        match i.to_lowercase().as_str() {
            "http://" => Scheme::HTTP,
            "https://" => Scheme::HTTPS,
            _ => todo!("no other shemes supported!"),
        }
    }
}

type Res<T, U> = IResult<T, U, VerboseError<T>>;

// the first parser combinator
fn scheme(input: &str) -> Res<&str, Scheme> {
    context(
        "scheme",
        alt((tag_no_case("http://"), tag_no_case("https://"))),
    )(input)
    .map(|(next_input, res)| (next_input, res.into()))
}

fn authorithy(input: &str) -> Res<&str, Authorithy> {
    context(
        "authorithy",
        terminated(
            separated_pair(alphanumeric1, opt(tag(":")), opt(alphanumeric1)),
            tag("@"),
        ),
    )(input)
}

fn host(input:&str)->Res<&str, Host>{
    context{
        "host",
        alt((
            tuple((many1(terminated(alphanumeric1hyphen1, tag(".")))))
        ))
    }
}
