fn foo(mut v: [i32; 3]) -> [i32; 3] {
    v[0] = 3;
    v
}
fn main() {
    let v = [1, 3, 4];
    println!("{:?}", foo(v));
}
