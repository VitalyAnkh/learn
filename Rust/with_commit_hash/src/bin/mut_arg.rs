extern crate rand;
use rand::Rng;

fn gen_num()->i32{
    let mut rng=rand::thread_rng();
    let mut a=rng.gen::<i32>();
    println!("generate i32: {}",a);
    a
}

fn mut_arg(mut arg:i32)->i32{
    arg=arg+1;
    arg
}

fn main(){
    println!("{}",mut_arg(gen_num()));
}