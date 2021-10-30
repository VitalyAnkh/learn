fn main() {
    let r: &String;
    {
        let s = "fdsafds".to_owned();
        let r = &s;
        println!("{}", r);
    }
}
