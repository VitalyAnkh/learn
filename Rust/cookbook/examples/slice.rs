fn main() {
    let arr = [1, 2, 3, 4, 5];
    assert_eq!(&arr, &[1, 2, 3, 4, 5]);
    assert_eq!(&arr[1..], &[2, 3, 4, 5]);
    assert_eq!(arr.len(), 5);
}
