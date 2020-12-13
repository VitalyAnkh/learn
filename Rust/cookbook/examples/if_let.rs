fn main() {
    let a = Some("Hello");
    if let Some(s) = a {
        println!("{}", s);
    }
}
