fn bin_to_decimal(inp: &str) -> i32 {
    let mut sum = 0i32;
    let length = inp.len() as u32;
    for (i, c) in inp.chars().enumerate() {
        let n = c.to_digit(2).unwrap() as i32;
        sum += n * (2_i32.pow(length - 1 -i as u32));
    }
    sum
}

fn main() {}
#[test]
fn test_bin_to_decimal() {
    assert_eq!(bin_to_decimal("0"), 0);
    assert_eq!(bin_to_decimal("1"), 1);
    assert_eq!(bin_to_decimal("1001001"), 73);
}