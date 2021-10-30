fn main() {
    let mut a = 3;
    let d = &mut a;
    let e = &mut *d;
    //*d += 1;
    *e += 1;
    let s = S { d };
    let x = s;
    ff(d);
    foo(d);
    use_after_free();
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
struct Foo<'a> {
    name: &'a String,
}

fn use_after_free() {
    let mut f = Foo {
        name: &"".to_owned(),
    };
    unsafe {
        let world = "world".to_owned();
        let ptr: *const String = &world as *const String;
        if let Some(val_back) = ptr.as_ref() {
            println!("We got back the value: {}!", val_back);
            f.name = val_back;
        }
    }
    // now f.name is meaningless bytes.
    // find why
    println!("{}", f.name);
    println!("{:p}", &f.name);
    println!("{:p}", &f);
}
