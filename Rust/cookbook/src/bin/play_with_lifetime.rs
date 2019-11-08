fn add_world(s:&mut String){
    s.push_str(" world");
}
fn main(){
    let mut s=String::from("Hello, ");
    let r=&mut s;
    add_world(r);
    println!("{}",r);
    println!("{}",s);
}