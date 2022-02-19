fn largest_i32(list: &[i32]) -> i32 {
    let mut largest = list[0];

    for &item in list {
        if item > largest {
            largest = item;
        }
    }

    largest
}

fn largest_char(list: &[char]) -> char {
    let mut largest = list[0];

    // we do &item to dereference each item in the slice
    for &item in list {
        if item > largest {
            largest = item;
        }
    }

    largest
}


// the function largest is generic over some type T. 
// This function has one parameter named list, which is a slice of values of type T. 
// The largest function will return a value of the same type T.
fn largest<T: PartialOrd + Copy>(list: &[T]) -> T {
    let mut largest = list[0];

    for &item in list {
        if item > largest {
            largest = item;
        }
    }

    largest
}


struct Point<T> {
    x: T,
    y: T,
}


// we do impl<T> to tell rust that T is some generic type
// as opposed to some concrete type that may exist
// and that we are implementing methods for a generic point
impl<T> Point<T> {
    fn x(&self) -> &T {
        &self.x
    }
}

// you can also impl methods for point of a specific type
impl Point<f32> {
    fn distance_from_origin(&self) -> f32 {
        (self.x.powi(2) + self.y.powi(2)).sqrt()
    }
}


fn main() {
    let number_list = vec![34, 50, 25, 100, 65];

    let result = largest_i32(&number_list);
    println!("The largest number is {}", result);
    assert_eq!(result, 100);

    let char_list = vec!['y', 'm', 'a', 'q'];

    let result = largest_char(&char_list);
    println!("The largest char is {}", result);
    assert_eq!(result, 'y');

    // use generic version
    let number_list = vec![34, 50, 25, 100, 65];
    let result = largest(&number_list);
    println!("The largest number is {}", result);

    let char_list = vec!['y', 'm', 'a', 'q'];

    let result = largest(&char_list);
    println!("The largest char is {}", result);

    let p = Point { x: 5, y: 10 };

    println!("p.x = {}", p.x());
}
