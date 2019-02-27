use std::fmt;

struct Wrapper(Vec<String>);

impl fmt::Display for Wrapper {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "{}", self.0.join(", "))
    }
}

fn main() {
    let w = Wrapper(vec![String::from("I love you"), String::from("Li Qi")]);
    println!("{}", w.to_string());
}
