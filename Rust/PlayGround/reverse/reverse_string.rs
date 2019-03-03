fn reverse_string(s: &String) -> String {
    let mut result = String::new();
    for i in s.chars() {
        result.insert(0, i);
    }
    result
}

fn main() {
    let a = String::from("I love you");
    println!("{}", reverse_string(&a));
}
