fn foo() -> u32 {
    let x = { return 123 };
}

fn main() {
    let num = Some(230);
    match num {
        Some(num) => num,
        None => panic!("Nothing!"),
    };
}
