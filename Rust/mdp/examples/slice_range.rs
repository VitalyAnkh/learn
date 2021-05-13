fn main() {
    let name = "ABCD".to_owned();
    println!("{}", &name[2..3]);
    let s = &name[2..3];
    println!("{:?}", name.as_ptr());
    println!("{:?}", s.as_ptr());
}
