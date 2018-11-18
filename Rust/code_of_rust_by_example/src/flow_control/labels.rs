#![allow(unreachable_code)]

#[test]
fn test_label() {
    'outer: loop {
        let mut i = 1;
        println!("Enter outer loop!");
        'inner: loop {
            println!("Enter inner loop!");
            i += 1;
            if i > 10 {
                break 'outer;
            }
        }
    }
    println!("This point will never be reached!");
}

#[test]
fn test_return_from_loop() {
    let mut counter = 1;
    let result = loop {
        counter += 1;
        if counter == 10 {
            break counter * 2;
        }
    };
    assert_eq!(result, 20);
}