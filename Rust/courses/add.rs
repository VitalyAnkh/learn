fn add(x: i32, y: i32) -> i32 {
    x + y
}

fn main() {

    let x: i32 = 3;
    let y: i32 = 6;

    println!("{} + {} = {}", x, y, add(x,y))
}