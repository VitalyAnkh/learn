use std::collections::HashMap;
fn main() {
    let mut table = HashMap::new();
    let s = "S".to_owned();
    let u = "U".to_owned();
    let t = "T".to_owned();
    let input_1 = "1".to_owned();
    let input_3 = "3".to_owned();
    let input_4 = "4".to_owned();
    table.insert((&s, &input_1), Some(&t));
    table.insert((&t, &input_3), Some(&t));
    table.insert((&t, &input_4), Some(&u));
    let mut buf = String::new();
    std::io::stdin().read_line(&mut buf);
    let mut words = buf.split_whitespace();
    let input: String = words.next().unwrap().parse().unwrap();
    let mut current_state = &s;
    for c in input.chars() {
        current_state = table
            .get(&(current_state, &c.to_string()))
            .unwrap()
            .unwrap();
    }
    if current_state == &u {
        println!("Accept!");
    }

    println!("{:?}", table);
}
