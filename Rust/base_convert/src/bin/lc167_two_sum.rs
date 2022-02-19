fn two_sum(numbers: Vec<i32>, target: i32) -> Vec<i32> {
    let mut left = 0 as i32;
    let mut right = (numbers.len() - 1) as i32;
    while left < right {
        let sum = numbers[left as usize] + numbers[right as usize];
        if sum == target {
            return vec![left + 1, right + 1];
        } else if target < sum {
            right -= 1;
        } else {
            left += 1;
        }
    }
    return vec![-1, -1];
}
fn main() {
    let numbers = vec![1, 2, 38, 7, 2];
    println!("{:?}", two_sum(numbers, 4));
}
