fn min_value(mut digits: Vec<i32>) -> i32 {
    let mut d=digits.as_mut_slice().sort();
    digits.dedup();
    let mut result = 0;
    for i in digits {
        result += result * 10 + i;
    }
    result
} 
fn main(){
    assert_eq!(min_value(vec![1, 3, 1]), 13);
  assert_eq!(min_value(vec![4, 7, 5, 7]), 457);
  assert_eq!(min_value(vec![4, 8, 1, 4]), 148);
}