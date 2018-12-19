pub fn roman_to_int(s:String)->i32{
    let mut result:i32=0;
    let mut v=Vec::new();
    for char in s.chars(){
        match char{
            'I'=>v.push(1),
            'V'=>v.push(5),
             'X'=>v.push(10),
             'L'=>v.push(50),
             'C'=>v.push(100),
             'D'=>v.push(500),
             'M'=>v.push(1000),
             _=>()
    }}
    for i in 0..v.len(){
        if i==v.len()-1 || v[i]>=v[i+1] {
            result+=v[i];
        }else{
            result-=v[i];
        }
    }
    result
}
/// I 1
/// V 5
/// X 10 
/// L 50
/// C 100
/// D 500
/// M 1000
fn main(){
    println!("{}",roman_to_int(String::from("XIV")));

}