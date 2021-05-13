fn use_ref(ref a: i32) {
    print_type_of(&a);
}

fn print_type_of<T>(_: &T) {
    println!("{}", std::any::type_name::<T>());
}

fn main() {
    let a: i32 = 3;
    use_ref(a);
    print_type_of(&main);
    print_type_of(&print_type_of::<i32>);
    print_type_of(&{||"Hi!"});
}
