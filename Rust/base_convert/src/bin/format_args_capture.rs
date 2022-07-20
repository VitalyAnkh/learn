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
    // could we look up format arguments's definitions?
    format_args!("{}", but);
    println!("{}", but);
    println!("{a}"); // () () error: `a` is not a formatting directive
    println!("{b} {a}");
    // dbg!(a);
    // dbg!(but);
    let bar = Bar;
    let f = Foo { bar };
    let rf = &f;
    // dbg!(rf);
    // dbg!(f);
    // BOOM! move out from shared ptr.
    // let &own_f = rf;
}
