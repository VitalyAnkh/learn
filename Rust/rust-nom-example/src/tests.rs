use super::*;
use nom::{
    error::{ErrorKind, VerboseError, VerboseErrorKind},
    Err as NomErr,
};

#[test]
fn test_scheme() {
    assert_eq!(scheme("https://yay"), Ok(("yay", Scheme::HTTPS)));
    assert_eq!(scheme("http://github"), Ok(("github", Scheme::HTTP)));
    assert_eq!(
        scheme("bla://mingirl"),
        Err(NomErr::Error(VerboseError {
            errors: vec![
                ("bla://mingirl", VerboseErrorKind::Nom(ErrorKind::Tag)),
                ("bla://mingirl", VerboseErrorKind::Nom(ErrorKind::Alt)),
                ("bla://mingirl", VerboseErrorKind::Context("scheme")),
            ]
        }))
    );
}

#[test]
fn test_authorithy() {
    assert_eq!(
        authorithy("vitalyr:password@vitalyr.org"),
        Ok(("vitalyr.org", ("vitalyr", Some("password"))))
    );

    assert_eq!(authorithy("vitalyr@"), Ok(("", ("vitalyr", None))));
}

#[test]
fn test_host() {
    assert_eq!(
        host("localhost:1080"),
        Ok((":1080", Host::HOST("localhost".to_string())))
    );
    assert_eq!(
        host("example.org:8080"),
        Ok((":8080", Host::HOST("example.org".to_string())))
    );
    assert_eq!(
        host("subtitle.example.org:8080"),
        Ok((":8080", Host::HOST("subtitle.example.org".to_string())))
    );
}

#[test]
fn test_right_paren() {
    assert_eq!(left_paren("((()))"), Ok(("(()))", "(")));
}

#[test]
fn test_separated_pair() {
    assert_eq!(
        parse_separated_pair("1,2 -> 3,4"),
        Ok((" -> 3,4", ("1", "2")))
    );
}
