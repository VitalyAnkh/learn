fn main(){
    // will find the none range in char type is
    // from some: d800
    // from none: e000
    // from some: 110000
    let mut last_is_none = false;
    for code in 0..=u32::MAX {
        if char::from_u32(code).is_none() {
            if !last_is_none {
                println!("from some: {code:x}");
            }
            last_is_none = true;
        } else {
            if last_is_none {
                println!("from none: {code:x}");
            }
            last_is_none = false;
        }        
    }
}