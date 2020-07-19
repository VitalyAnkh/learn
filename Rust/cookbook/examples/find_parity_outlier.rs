fn find_outlier(values: &[i32]) -> i32 {
    todo!();
}
fn is_even(n: i32) -> bool {
    if n % 2 == 0 {
        true
    } else {
        false
    }
}
fn main() {
    let v = vec![1, 2, 3];
    let v2: Vec<i32> = v.iter().map(|x| x + 1).rev().collect();
    let v3: Vec<i32> = v.iter().map(|&x| x * 2).collect();
    println!("{:?}", v.iter().enumerate());
    println!("{:?}", v2);
}
