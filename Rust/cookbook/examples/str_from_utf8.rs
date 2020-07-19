fn main() {
    let sparkle_heart = vec![240, 159, 146, 150];
    let sparkle_heart = std::str::from_utf8(&sparkle_heart).unwrap();
    println!("{}", sparkle_heart);
    // a stack allocated array
    let sparkle_heart = [240, 159, 146, 150];
    let sparkle_heart = std::str::from_utf8(&sparkle_heart).unwrap();
    println!("{}", sparkle_heart);
}
