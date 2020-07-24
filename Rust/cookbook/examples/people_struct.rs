#[derive(Debug, PartialEq)]
struct People {
    name: &'static str,
    gender: u32,
}

impl People {
    fn new(name: &'static str, gender: u32) -> Self {
        People {
            name: name,
            gender: gender,
        }
    }
    fn name(&self) -> &'static str {
        self.name
    }
    fn gender(&self) -> u32 {
        self.gender
    }
    fn set_name(&mut self, new_name: &'static str) {
        self.name = new_name;
    }
    fn get_gender(&self) -> &'static str {
        let gender_str: &'static str;
        if self.gender == 0 {
            gender_str = "male";
        } else {
            gender_str = "female";
        }

        println!("The gender is {}", gender_str);
        gender_str
    }
    fn self_intro(&self) {
        println!("Hi!");
        println!("I'm {}.", self.name);
        if self.gender == 0 {
            println!("I'm a boy");
        } else {
            println!("I'm a girl");
        }
    }
}

fn main() {
    let jane = People::new("Jane White", 1);
    jane.self_intro();
}
