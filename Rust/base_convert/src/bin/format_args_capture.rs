#![feature(format_args_capture)]

struct Bar;

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
}
