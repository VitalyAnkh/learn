use std::io;

fn main() {
    let mut s = String::new();
    io::stdin().read_line(&mut s).unwrap();
    let input = s
        .split_whitespace()
        .filter_map(|c| c.parse::<usize>().ok())
        .collect::<Vec<usize>>();
    let (a, b, c, d) = (
        input[0] as isize,
        input[1] as isize,
        input[2] as isize,
        input[3] as isize,
    );
    let (mut hours, mut minutes) = (c - a, d - b);
    if minutes < 0 {
        minutes += 60;
        hours -= 1;
    }
    if minutes >= 60 {
        minutes -= 60;
        hours += 1;
    }
    println!("{} {}", hours, minutes);
}
