fn reverse_string(s: &String) -> String {
    let mut result = String::new();
    for i in s.chars() {
        result.insert(0, i);
    }
    result
}

fn reverse_i32(a: String) -> i32 {
    if let first = a.chars().next {}
}

fn main() {
    let a = String::from("12334200000000");
    let x = 100.to_string();
    println!(
        "{}",
        reverse_string(&a).parse::<i32>().ok_or(|arg| -1 * arg)
    );
}
