use std::collections::hash_map::DefaultHasher;
use std::hash::Hash;
use std::hash::Hasher;

#[derive(Hash)]
struct Foo;

#[derive(Hash)]
struct Faz;

fn calculate_hash<T: Hash>(t: &T) -> u64 {
    let mut s = DefaultHasher::new();
    t.hash(&mut s);
    s.finish()
}

fn main() {
    assert_ne!(calculate_hash(&Foo), calculate_hash(&Faz));
}
