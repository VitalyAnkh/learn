fn main(){
    let mut a=135i128;
    let mut_ref_a=&mut a;
    *mut_ref_a=167;
    println!("{}", mut_ref_a);
    println!("{}", a);
}