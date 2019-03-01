use std::collections::HashMap;

#[derive(Hash, Eq, PartialEq, Debug)]
struct Person {
    first_name: String,
    last_name: String,
}

impl Person {
    fn new(first: &str, last_name: &str) -> Person {
        Person {
            first_name: first.to_string(),
            last_name: last_name.to_string(),
        }
    }
}

fn main() {
    let mut book = HashMap::new();
    let p1 = Person::new("汉东", "张");
    book.insert(Person::new("汉东", "张"), "Rust编程之道");
    book.insert(Person::new("长春", "范"), "深入浅出Rust");
    let p2 = Person::new("John", "Smith");

    if let Some(name) = book.get(&p1) {
        println!("{}", name);
    }
    if let Some(name) = book.get(&p2) {
        println!("{}", name);
    }

    book.remove(&p1);
    book.remove(&p2);

    println!("Find key: {}", book.contains_key(&p1));
}
