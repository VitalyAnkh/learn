// Clobals are declared all other scopes

static LANGUAGE:&str="Rust";
const THRESHOLD:i32=10;

fn is_big(n:i32)->bool{
    n>THRESHOLD
}

#[test]
fn test_const() {
    let n = 16;

    println!("This is {}", LANGUAGE);
    println!("The threshold is {}", THRESHOLD);
    println!("{} is {}", n, if is_big(n) { "big" } else { "small" });

//    THRESHOLD=3;
}