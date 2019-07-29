#[derive(Debug)]
struct Point{
    x:f64,
    y:f64
}
fn main(){
    println!("{}", t(1));
    let p=Point{x:1.,y:2.};
    println!("{:?}",s(p) );
}

fn t(mut n:i32)->i32{
    n+=1;
    n
}

fn s(mut n:Point)->Point{
    n.x+=1.;
    n.y+=1.;
    n
}