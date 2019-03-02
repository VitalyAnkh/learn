use std::ops::Add;
#[derive(Copy, Clone, Debug, PartialEq)]
struct Complex {
    real: i32,
    imag: i32,
}

impl Add for Complex {
    type Output = Complex;
    fn add(self, other: Complex) -> Complex {
        Complex {
            real: self.real + other.real,
            imag: self.real + other.imag,
        }
    }
}

impl<'a> Add<&'a Complex> for Complex {
    type Output = Complex;
    fn add(self, other: &'a Complex) -> Complex {
        Complex {
            real: self.real + other.imag,
            imag: self.imag + other.imag,
        }
    }
}

impl Add<i32> for Complex {
    type Output = Complex;
    fn add(self, other: i32) -> Complex {
        Complex {
            real: self.real + other,
            imag: self.imag,
        }
    }
}

fn main() {
    let z: Complex = Complex { real: 1, imag: 1 };
    let r = Complex { real: 2, imag: 2 };

    println!("{:?}", z + r);
    println!("{:?}", z + 1_i32);
}
