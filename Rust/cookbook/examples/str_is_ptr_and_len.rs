fn main() {
    let truth = "Rust 是一门优雅的语言";
    let ptr = truth.as_ptr();
    let len = truth.len();
    assert_eq!(len, 29);
    let s = unsafe {
        let slice = std::slice::from_raw_parts(ptr, len);
        println!("{:#?}", slice);
        std::str::from_utf8(slice)
    };
    assert_eq!(s, Ok(truth));
}
