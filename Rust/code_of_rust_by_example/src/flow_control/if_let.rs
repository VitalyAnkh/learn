fn main() {
    let number = Some(7);
    let letter:Option<i32> = None;
    let emoticon:Option<i32> =None;

    if let Some(i)=number{
        println!("{Matched {:?}}",i );
    }
    
}
