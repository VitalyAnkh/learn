fn josephus_survivor(n: i32, k: i32) -> i32 {
    (1..=n).fold(1, |i, j| (i + k) % j) + 1
}
fn main() {}
