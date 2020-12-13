fn euclid_gcd(mut a:i32,mut b:i32)->i32{
    let mut a=a;
    let mut b = b;
    if a<b{
        let tmp = a;
        a=b;
        b=a;
    }
    let mut remainder = a % b;
    while(remainder!=0){
        a=b;
        b=remainder;
        remainder=a % b;
    }
    return b;
}

fn main(){
    let mut buf = String::new();
    std::io::stdin().read_line(&mut buf);
    let mut words = buf.split_whitespace();
    let a: i32 = words.next().unwrap().parse().unwrap();
    let b: i32 = words.next().unwrap().parse().unwrap();
    // println!("{} {}", a,b );
    println!("{}",euclid_gcd(a ,b));
}