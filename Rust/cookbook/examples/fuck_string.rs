#![feature(core_intrinsics)]
fn print_type_of<T>(_: &T) {
    println!("{}", unsafe { std::intrinsics::type_name::<T>() });
}
fn main() {
    let a = String::from("Hello");
    let c = "fdsaf".to_string();
    let b = &a;
    print_type_of(&&a);
    print_type_of(&b);
    print_type_of(&a);
    let &c = &b;
}
// error[E0507]: cannot move out of borrowed content
//  --> fuck_string.rs:4:9
//   |
//   |     let &c = &a;
//   |         ^-
//   |         ||
//   |         |hint: to prevent move, use `ref c` or `ref mut c`
//   |         cannot move out of borrowed content
