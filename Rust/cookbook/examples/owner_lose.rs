fn main() {
    let s = "hello".to_owned();
    let old_ref = &s;
    println!("{:p}", old_ref);

    let s = String::from("world");
    let new_ref = &s;
    println!("{:p}", new_ref);

    println!("{}", old_ref);
    println!("{}", *old_ref);
    println!("{}", s);
    let old_owner = *old_ref;
}
