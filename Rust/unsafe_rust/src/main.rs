fn main() {
    println!("Hello, world!");
    let mut num = 5;
    let r1 = &num as *const i32;
    let r2 = &mut num as *mut i32;
    let address = 0x012345usize;
    let r = address as *const i32;
    unsafe {
        dangerous();
    }

    println!("Good luck!");
    unsafe {
        println!("r1 is: {}", *r1);
        println!("r2 is: {}", *r2);
    }
    unsafe {
        println!("The absolute value of -233 is {}", abs(-233));
    }
    let v=vec![1,2,3,4,5]
    .into_iter()
    .tap(|)
}
extern "C" {
    fn abs(input: i32) -> i32;
}

static mut HELLO_WORLD:&str="Hello, world!";
unsafe fn dangerous() {}
