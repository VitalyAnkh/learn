use std::fmt::Debug;

fn my_print<T: Debug>(x: T) {
    println!("The value is {:?}", x);
}

fn main() {
    my_print(32);
    my_print((32, 32, 3422432));
    my_print([3, 32, 52]);
    my_print(32_i32);
    println!("{}", 1);
}
