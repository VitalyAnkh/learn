use std::io;

fn main(){
    let mut input =String::new();
    loop{
        io::stdin().read_line(&mut input).unwrap();
        println!("{}",input );
    }
}