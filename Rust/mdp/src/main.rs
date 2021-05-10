fn main() {
    println!("Hello, world!");
}

trait Trait {
    fn r#trait() {}
}

struct Person {
    name: String,
    age: u32,
}
impl Trait for Person {
    fn r#trait() {}
}
