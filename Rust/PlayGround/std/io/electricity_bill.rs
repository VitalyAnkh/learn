use std::io;

fn main() {
    let mut s = String::new();
    io::stdin().read_line(&mut s).unwrap();
    let amount = s.trim().parse::<u16>().ok().unwrap();
    println!(
        "{:.1}",
        if amount <= 150 {
            amount as f32 * 0.4463
        } else if amount <= 400 {
            150_f32 * 0.4463 + (amount - 150) as f32 * 0.4663
        } else {
            150_f32 * 0.4463 + 250_f32 * 0.4663 + (amount - 400) as f32 * 0.5663
        }
    );
}
