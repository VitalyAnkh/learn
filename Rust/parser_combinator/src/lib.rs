#[derive(Debug, Clone, PartialEq, Eq)]
struct Element {
    name: String,
    attibutes: Vec<(String, String)>,
    children: Vec<Element>,
}

fn the_letter_a(input: &str) -> Result<(&str, ()), &str> {
    match input.chars().next() {
        Some('a') => Ok((&input['a'.len_utf8()..], ())),
        _ => Err(input),
    }
}
