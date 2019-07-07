use num::Complex;

fn square_loop(mut x: f64) {
    loop {
        x *= x;
    }
}

fn escape_time(c: Complex<f64>, limit: u64) -> Option<u64> {
    let z = Complex { re: 0f64, im: 0f64 };
    for i in 0..limit {
        let z = z * z + c;
        if z.norm_sqr() > 4.0 {
            return Some(i);
        }
    }
    None
}

fn main() {
    let mut x = 1.2;
    square_loop(x);
}