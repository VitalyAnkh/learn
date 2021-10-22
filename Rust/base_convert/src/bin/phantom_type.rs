use std::{
    marker::PhantomData,
    ops::{Add, Sub},
};

#[derive(Debug, Clone, Copy)]
struct Unit<T> {
    value: f64,
    unit_type: PhantomData<T>,
}
#[derive(Debug, Clone, Copy)]
struct MeterType;
#[derive(Debug, Clone, Copy)]
struct KiloType;
type Meter = Unit<MeterType>;
type Kilo = Unit<KiloType>;

impl<T> Unit<T> {
    fn new(value: f64) -> Self {
        Self {
            value,
            unit_type: PhantomData,
        }
    }
}
impl<T> Add for Unit<T> {
    type Output = Self;
    fn add(self, rhs: Self) -> Self::Output {
        let value = self.value + rhs.value;
        Self::new(value)
    }
}
impl<T> Sub for Unit<T> {
    type Output = Self;
    fn sub(self, rhs: Self) -> Self::Output {
        let value = self.value - rhs.value;
        Self::new(value)
    }
}

fn main() {
    let m1 = Meter::new(1.0);
    let m2 = Meter::new(2.0);
    dbg!(m1 - m2);
    dbg!(m2 + m2);
}
