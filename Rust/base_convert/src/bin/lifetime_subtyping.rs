fn foo<'a, 'b>(a: &'a u32, b: &'b u32) {
    let x: fn(&u32) = |x| {
        x + 1;
    };
    x(a);
    x(b);
}

fn main() {
    let a = &3;
    let b = &4;
    foo(a, b);
}
