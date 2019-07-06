trait AppendString {
    fn append_this_string(&self,s:&str)->String;
    fn append_hello_string(&self)->String;
}

enum Integer{
    Uint8(u8),
    Uint16(u16),

}

struct MyString(String);

impl AppendString for Integer{
    fn append_this_string(&self,s:&str)->String{
        match self{
            Integer::Uint8(uint8)=>String::from(uint8.to_string()+s),
            Integer::Uint16(uint16)=>String::from(uint16.to_string()+s)
        }
    }
    fn append_hello_string(&self)->String{
        match self{
            Integer::Uint8(uint8)=>String::from(uint8.to_string()+", hello!"),
            Integer::Uint16(uint16)=>String::from(uint16.to_string()+", hello!")
        }

    }
}

fn main(){
    let mao18=Integer::Uint16(143);
    println!("{}",mao18.append_hello_string());
    println!("{}",mao18.append_this_string(", fuck you!"));
}