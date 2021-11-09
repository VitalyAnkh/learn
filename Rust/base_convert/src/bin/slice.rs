fn main() {
    let mut s: &str = "a";
    let ref_mut_slice: &mut &str = &mut s;
    s = "ab";
}
