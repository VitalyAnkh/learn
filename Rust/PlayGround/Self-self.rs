trait Shape {
    fn area(&self) -> f64;
}

struct Circle {
    radius: f64,
    coordinate: (f64, f64),
}

impl Shape for Circle {
    fn area(&self) -> f64 {
        std::f64::consts::PI * self.radius * self.radius
    }
}

fn main() {
    let c = Circle {
        coordinate: (0.0, 0.0),
        radius: 3.2,
    };
    println!("{}", c.area());
}
