fn main() {
    let s = "hello";
    println!("{}", s.contains('a'));
    println!("{}", s.contains("abc"));
    println!("{}", s.contains(&['H'] as &[char]));
    println!("{}", s.contains(|c: char| c.len_utf8() > 2));
}
