struct T(i32);

impl T {
    fn get1(&self) -> i32 {
        self.0
    }
    fn get2(&self) -> i32 {
        self.0
    }
}

fn get3(n: &T) -> i32 {
    n.0
}

fn check_type(_: fn(&T) -> i32) {}
fn main() {
    check_type(T::get1);
    check_type(T::get2);
    check_type(get3);
}
