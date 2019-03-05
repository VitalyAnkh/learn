fn reverse_string(s: &mut String) -> String {
    let mut result = String::new();
    for i in s.chars() {
        result.insert(0, i);
    }
    result
}

fn reverse_i32(s: &mut String) -> i32 {
    let mut sign = 1_i32;
    if '-' == s.chars().next().unwrap() {
        sign = -1;
        s.remove(0);
    }
    reverse_string(s).parse::<i32>().unwrap() * sign
}

fn main() {
    let mut a = String::from("-12334200000000");
    let x = 100.to_string();
    println!("{}", reverse_i32(&mut a));
}
