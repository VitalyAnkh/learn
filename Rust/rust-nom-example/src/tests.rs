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
