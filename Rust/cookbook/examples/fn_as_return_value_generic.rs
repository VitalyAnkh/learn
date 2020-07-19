fn two_times_impl() -> impl Fn(i32) -> i32 {
    let i = 2;
    move |j| i * j
}
fn main() {
    let a = 3;
    let result = two_times_impl();
    assert_eq!(result(a), 6);
}
