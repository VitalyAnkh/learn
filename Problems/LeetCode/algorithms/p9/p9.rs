#![feature(euclidean_division)]
fn is_palindrome(n:i32)->bool{
    let mut m=n;
    let mut tmp=1;
    let mut digits=0;
    let mut v=Vec::new();
    let mut reverse:i32=0;
    while m!=0{
        tmp=m.mod_euc(10);
        v.push(tmp);
        m=(m-tmp)/10;
        digits+=1;
    }
    for i in 0..digits{
        reverse+=v[digits-1-i].pow(i as u32);
    }
    println!("{}",reverse);
    reverse==n
}
fn main(){
    println!("{:?}",is_palindrome(929) );
}