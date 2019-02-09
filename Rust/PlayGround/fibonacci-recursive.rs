fn fib(n:usize)->usize{
    if n==1||n==2{
        1
    }else{
        fib(n-1)+fib(n-2)
    }
}

fn main(){
    println!("{}",fib(100) );
}