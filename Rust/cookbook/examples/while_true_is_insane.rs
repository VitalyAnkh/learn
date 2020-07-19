fn while_true(n: i32) -> i32 {
    loop {
        return n + 1;
    }
}
fn main() {
    let y = while_true(5);
    assert_eq!(y, 6);
}
