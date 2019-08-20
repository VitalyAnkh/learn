fn printer_error(s: &str) -> String {
    let mut total = 0;
    let mut bad = 0;
    for c in s.chars() {
        total += 1;
        match c {
            'a'..='m' => {},
            _ => bad += 1,
        }
    }
    let mut s = String::new();
    s.push_str(&bad.to_string());
    s.push('/');
    s.push_str(&total.to_string());
    s
}

fn main() {
    should_pass_all_the_tests_provided();
}

fn should_pass_all_the_tests_provided() {
    assert_eq!(&printer_error("aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz"), "3/56");
    assert_eq!(&printer_error("kkkwwwaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz"), "6/60");
    assert_eq!(&printer_error("kkkwwwaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyzuuuuu"), "11/65");
}