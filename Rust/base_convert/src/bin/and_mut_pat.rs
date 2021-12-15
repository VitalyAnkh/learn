fn main() {
    let mut s = String::from("fdsafdsa");
    let r = &mut s;
    println!("{:p}", r);
    let mut rs: &mut String = r;
    println!("{:p}", rs);
}
