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
macro_rules! S {
    ($e:expr) => {
        String::from($e)
    };
}
macro_rules! vec_str {
	($(
        $e:expr
    ),*) => {
        {
        let mut v: Vec<String> = Vec::new();
        $(
         v.push(format!("{}",$e));
        )*
        v
	}
    };
}
macro_rules! expressions {
    ($($expr:expr)*) => {
        ()
    };
}
fn main() {
    let s = S!("Hello!");
    let x = 12321;
    let y = 12345;
    let vs = vec_str![1, 2, "hello", String::from("world"), 4e5];
    let expr = expressions!(
        "literal"
            x
            y
    );
    println!("{}", is_palindrome(x));
    println!("{}", is_palindrome(y));
    println!("{x}");
    println!("{s}");
}
