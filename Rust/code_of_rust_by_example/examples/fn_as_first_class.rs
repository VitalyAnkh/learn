fn main() {
    let p = (1, 2);
    let mut func = add_tuple;
    let m = 3;
    println!("{}", func(p));
}

fn add_tuple((x, y): (i32, i32)) -> i32 {
    x + y
}
