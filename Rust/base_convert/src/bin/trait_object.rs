fn example(cond: bool, vec: Vec<i32>) -> Box<dyn Iterator<Item = i32>> {
    let iter = vec.into_iter();
    if cond {
        Box::new(iter.map(|n| n * 2))
    } else {
        Box::new(iter.filter(|&n| n >= 2))
    }
}

#[test]
fn test_example() {
    let cond = true;
    let v = vec![1, 2, 3];
    example(cond, v);
}
