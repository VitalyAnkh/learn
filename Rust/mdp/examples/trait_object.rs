trait Bar {
    fn fn1() {
        println!("Hello, trait!");
    }
}

fn baz(s: &dyn Bar) {
    s.fn1();
}

struct S;
impl Bar for S {}
fn main() {
    let s = S;
    baz(&s);
}
