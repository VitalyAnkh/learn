use std::collections::btree_map::Range;

fn main() {
    let range = 0..10;
    let get_range_count = || range.count();
    assert_eq!(get_range_count(), 10);
    // get_range_count();
    let nums = vec![2, 3, 1, 5, 8, 6, 10];
    let mut min = i32::MIN;
    let ascending = nums
        .into_iter()
        .filter(|&n| {
            if n <= min {
                false
            } else {
                min = n;
                true
            }
        })
        .collect::<Vec<_>>();
    dbg!(ascending);
}
