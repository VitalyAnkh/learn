#[test]
fn for_loop() {
    let v = vec![1, 2, 3];
    for i in &v {
        println!("{}", i);
    }
    println!("{:?}", v);
}
