pub fn is_palindrome(x: i32) -> bool {
    let mut x = x;
    let mut digits = vec![];
    if x < 0 {
        return false;
    }
    while x > 0 {
        digits.push(x % 10);
        x = x / 10;
    }
    let original_digits = digits.clone();
    digits.reverse();
    original_digits == digits
}
fn main() {
    let x = 12321;
    let y = 12345;
    println!("{}", is_palindrome(x));
    println!("{}", is_palindrome(y));
}
