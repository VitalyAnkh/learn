fn main(){
    let x;
    while true{
        x=1;
        break;
    }
    println!("{}",x );// compile error: use of possibly uninitialized `x`
}