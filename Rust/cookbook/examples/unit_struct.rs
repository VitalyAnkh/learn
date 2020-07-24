struct Empty;
fn main() {
    let x = Empty;
    println! {"{:p}",&x};
    let y = Empty;
    println!("{:p}", &y);
    let z = Empty;
    println!("{:p}", &z);
}
