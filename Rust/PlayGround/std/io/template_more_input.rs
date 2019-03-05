use std::io;

fn main() {
    let mut s = String::new();
    io::stdin().read_line(&mut s).unwrap();
    let input = s
        .split_whitespace()
        .filter_map(|c| c.parse::<isize>().ok())
        .collect::<Vec<isize>>();
    let (a, b, c, d) = (
        input[0] as isize,
        input[1] as isize,
        input[2] as isize,
        input[3] as isize,
    );

    println!("{:?}", input);
}
