fn main() {
    let x: Option<i32> = Some(32);
    let a = match x {
        Some(i) => println!("Catch {}", i),
        None => println!("Catch nothing!"),
    };
    dbg!(a);
    x.unwrap();
}
