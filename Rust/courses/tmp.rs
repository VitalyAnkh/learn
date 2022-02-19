
fn main() {
    
    let file = match File::open(filename) {
        Ok(file) => file,
        Err(err) => return Err(err),
    };

}
