pub fn roman_to_int(s:String)->i32{
    let mut result:i32=0;
    let str_iter=s.chars();
    let mut next:i32=0;
    for char in str_iter{
        match char{
            Some('I')=>{
                let now=1;
                let Some(next)=str_iter.next;
                if now>=next{
                    result+=now;
                }
                else{
                    result +=next-now;
                }
            }
            Some('V')=>{
                let now=5;
                if
            }
             Some('X')=>{

            }
             Some('L')=>{

            }
             Some('C')=>{

            }
             Some('D')=>{

            }
             Some('M')=>{

            }
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
    roman_to_int(String::from("IV"));
}