fn main() {
    let s;
    {
        let x = 3;
        // compile error!
        s = &x;
    }
    println!("{}", s);
}
