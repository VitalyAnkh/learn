fn main() {
    let mutate_original_value = |_x: &mut i32| *_x += 1;
    let mut i = 1;
    mutate_original_value(&mut i);
    println!("{}", i);
}
