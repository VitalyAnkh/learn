struct Bar;

struct Foo {
    bar: Bar,
}

fn main() {
    let a = String::from("a");
    let b = format!("{a}");
    println!("{a}");
    println!("{b}");
}
