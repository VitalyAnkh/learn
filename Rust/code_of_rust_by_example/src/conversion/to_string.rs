use std::string::ToString;

#[derive(Debug)]
struct Circle{
    radius:f64
}

impl ToString for Circle{
    fn to_string(&self)->String{
        format!("Circle of radius: {:?}",
        self.radius)
    }
}
#[test]
fn test_to_string(){
    let circle=Circle{radius:34.432};
    assert_eq!("Circle of radius: 34.432",circle.to_string() );
}

