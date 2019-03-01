use std::collections::BTreeMap;
fn main() {
    let mut map = BTreeMap::new();
    map.insert(2, "two");
    map.insert(3, "three");
    for (k, v) in map.range(2..6) {
        println!("{},{}", k, v);
    }
}
