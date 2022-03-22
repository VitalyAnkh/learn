#[derive(Debug)]
struct Bar;

#[derive(Debug)]
struct Foo {
    bar: Bar,
}

fn main() {
    let a = String::from("a");
    let but = format!("{a}");
    let b = 2;
    println!("{}", b);
    format_args!("{}", but);
    println!("{}", but);
    println!("{a}");
    println!("{b} {a}");
    dbg!(a);
    dbg!(but);
    let bar = Bar;
    let f = Foo { bar };
    let rf = &f;
    // BOOM! move out from shared ptr.
    let &own_f = rf;
}
