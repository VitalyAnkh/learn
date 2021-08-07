fn main() {
    let mut a = 3;
    let d = &mut a;
    let e = &mut *d;
    let s = S { d };
    let x = s;
    ff(d);
    foo(d);
}
#[derive(Debug)]
struct S<'a> {
    d: &'a i32,
}

fn ff(d: &i32) {
    println!("{}", d);
}

fn foo(d: &i32) {
    let a = d;
}
fn bar(s: S) {
    eprintln!("{:?}", s);
}
