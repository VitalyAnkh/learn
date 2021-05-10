use std::mem::transmute;

fn func() -> i32 {
    0
}
fn main() {
    let pointer = func as *mut ();
    let func = unsafe { transmute::<*mut (), fn() -> i32>(pointer) };
    println!("{}", func());
}
