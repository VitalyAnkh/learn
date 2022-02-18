fn abs(a: f64) -> f64 {
    if a <= 0f64 {
        -a
    } else {
        a
    }
}
fn good_enough(guess: f64, x: f64) -> bool {
    if abs(guess - x) <= 0.01 {
        true
    } else {
        false
    }
}

fn improve(guess: f64, x: f64) -> f64 {
    (x / guess + guess) / 2.0
}
fn sqrt_iter(mut guess: f64, x: f64) -> f64 {
    while !good_enough(guess, x) {
        guess = improve(guess, x);
    }
    guess
}

fn sqrt(x: f64) -> f64 {
    sqrt_iter(1.0, x)
}
fn main() {
    sqrt_iter(1.2, 3.0);
}
