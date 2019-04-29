fn main() {
    let new_name = Name::new("VitalyR");
    new_name.print();
}

struct Name {
    name: String,
    length: usize,
}

impl Name {
    fn new(name: &str) -> Self {
        Name {
            length: name.len(),
            name:name.to_string(),
        }
    }
    fn print(&self) {
        println!("The name {} is {} characters long!", self.name, self.length);
    }
}