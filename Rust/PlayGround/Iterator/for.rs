use std::collections::HashMap;

fn main() {
    let v = vec![1, 2, 3, 4, 5];

    for i in v {
        println!("{}", i);
    }
    let map: HashMap<i32, char> = [(1, 'a'), (2, 'b'), (3, 'c')].iter().cloned().collect();
    for (k, v) in &map {
        println!("{} : {}", k, v);
    }
}
