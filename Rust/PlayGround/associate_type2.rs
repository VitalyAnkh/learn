trait ConvertTo<T> {
    fn convert(&self) -> T;
}

impl ConvertTo<f64> for i32 {
    fn convert(&self) -> f64 {
        *self as f64
    }
}

impl ConvertTo<f32> for i32 {
    fn convert(&self) -> f32 {
        *self as f32
    }
}

fn main() {
    let x: i32 = 2;
    println!("{}", x.convert());
}
