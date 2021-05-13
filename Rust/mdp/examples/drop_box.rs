fn main(){
    let t =(3, "2");
    let s =Box::new(t);
    drop(t);
    println!("{:?}",s);
}
