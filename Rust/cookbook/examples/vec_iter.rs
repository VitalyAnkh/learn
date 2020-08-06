fn main() {
    let mut v = vec![0; 100];
    v.iter_mut().for_each(|x| *x = 1);
    println!("{:?}", v);
}
