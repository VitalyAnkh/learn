pub fn search(nums: Vec<i32>, target: i32) -> i32 {
    let mut left: usize = 0;
    let mut right = nums.len();
    let mut middle;
    while left < right {
        middle = (left + right) >> 1;
        if target < nums[middle] {
            right = middle;
        } else if target > nums[middle] {
            left = middle + 1;
        } else {
            return middle as i32;
        }
    }
    -1
}

#[test]
fn test_search() {
    let v = vec![-1, 0, 3, 5, 9, 12];
    assert_eq!(4, search(v, 9));
}

fn main(){}
