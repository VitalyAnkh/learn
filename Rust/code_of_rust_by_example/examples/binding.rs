fn age() -> u32 {
    15
}

fn main() {
    println!("Tell me what type of person you are!");

    match age() {
        0 => println!("I'm not born yet I guess"),
        n @ 1...12 => println!("I am an child of age {:?}", n),
        n @ 13...19 => println!("I am a teen of age {:?}", n),
        n => println!("I am an old person of age {}", n),
    }
}
