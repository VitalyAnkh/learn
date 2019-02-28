trait ConvertTo {
    type DEST;
    fn convert(&self) -> Self::DEST;
}

impl ConvertTo for i32 {
    type DEST = f64;
    fn convert(&self) -> f64 {
        *self as f64
    }
}

impl ConvertTo for i32 {
    type DEST = f32;
    fn convert(&self) -> f32 {
        *self as f32
    }
}
