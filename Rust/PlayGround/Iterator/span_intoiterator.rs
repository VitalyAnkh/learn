fn do_something(e: &i32) {}

fn main() {
    let array = &[1, 2, 3, 4, 5];
    for i in array {
        do_something();
    }
}
