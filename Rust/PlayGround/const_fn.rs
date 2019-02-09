#![feature(const_fn)]
const fn cube(num:usize)->usize{
    num*num*num
}

fn main(){
    const DIM:usize=cube(2);
    const ARR:[usize;DIM]=[0;DIM];
    println!("{:?}", ARR);
}