struct Bar;

struct Foo {
    bar: Bar,
}

fn main() {
    let a = String::from("a");
    let b = format!("{a}");
    println!("{}", b);
    println!("{a}");
    println!("{b} {a}");
}
