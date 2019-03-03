use std::cell::Cell;
use std::rc::Rc;
fn main() {
    let r1 = Rc::new(1);
    println!("reference count {}", Rc::strong_count(&r1));
    let r2 = r1.clone();
    println!("reference count {}", Rc::strong_count(&r2));
    let data: Cell<i32> = Cell::new(100);
    let p = &data;

    data.set(2);
    println!("{}", p.get());
    println!("{:?}", data);
    let data2 = Cell::new(321);
    p.swap(&data2);
    println!("{:p}", p);
    println!("{:?}", r1);
}
