use std::collections::HashMap;
use std::fs::File;
fn main() {
    let s = "Hello world my dear lulu my dear lulu my lulu";
    let mut m = HashMap::new();
    for word in s.split_whitespace() {
        let count = m.entry(word).or_insert(0);
        *count += 1;
    }
    println!("{:?}", m);
}
