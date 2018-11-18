use std::convert::From;

#[derive(Debug)]
struct Number{
    value:i32,
}

impl From<i32> for Number{
    fn from(item:i32)->Self{
        Number{value:item}
    }
}
#[test]
fn test_from(){
    let v=Number::from(32);
    eprintln!("The value of v is {:?}",v);
}