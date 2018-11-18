pub mod display;
pub mod test_list;

//use super::formatted_print::display::P;
//use super::formated_print::test_list::List;

#[derive(Debug)]
struct Point(f64);

#[derive(Debug)]
struct DeepStruct(Point);

#[derive(Debug)]
struct Person<'a> {
    name: &'a str,
    age: u8,
}

#[test]
fn test_derive_debug() {
    println!("Months in a year: {:?}.", 12);
    println!("{0:?} {1:?} is the {actor:?} name.", "Slater",
             "Christian", actor = "actor's");

    println!("Now {:?} will print!", Point(133424.3));

    println!("Now {:?} will print!", DeepStruct(Point(3242314.432)));
    let peter = Person { name: "Peter", age: 18 };
    println!("{:#?}", peter);
}


