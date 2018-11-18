#[test]
fn test_literals(){
    // Suffixed literals,their types are known at initialization
    let x=1u8;
    let y=2u32;
    let z=8i128;

    // Unsufixed literals, their types depends on how they are used
    let i=1;
    let f=1.0;


    // `size_of_val` return the size of a variable in bytes
    println!("size of `x` in bytes: {}",std::mem::size_of_val(&x));
    println!("size of `y` in bytes: {}",std::mem::size_of_val(&y));
    println!("size of `z` in bytes: {}",std::mem::size_of_val(&z));
    println!("size of `i` in bytes: {}",std::mem::size_of_val(&i));
    println!("size of `f` in bytes: {}",std::mem::size_of_val(&f));

}