struct Duck;
struct Pig;
trait Fly {
    fn fly(&self) -> bool;
}

impl Fly for Duck {
    fn fly(&self) -> bool {
        println!("Duck could fly!");
        true
    }
}
impl Fly for Pig {
    fn fly(&self) -> bool {
        println!("Pig cannot fly!");
        false
    }
}
fn can_fly_static<T: Fly>(object: &T) {
    object.fly();
}
fn can_fly_dynamic(object: &dyn Fly) {
    object.fly();
}
fn main() {
    let duck = Duck;
    let pig = Pig;
    can_fly_static(&duck);
    can_fly_dynamic(&duck);
    can_fly_static(&pig);
    can_fly_dynamic(&pig);
}
