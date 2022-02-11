fn count_ones(mut n: i64) -> usize {
    let mut count: usize = 0;
    while 0 < n {
        count += (1 & n) as usize;
        n >>= 1;
    }
    count
}
fn main() {
    let number = 3;
    println!("{}", count_ones(number));
    println!("{number}");
}
