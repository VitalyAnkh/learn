fn main() {
    let parsed: i32 = "3".parse().unwrap();
    let turbo_parsed = "32.4".parse::<f64>().unwrap();

    let sum = parsed as f64 + turbo_parsed;
    println!("Sum: {:?}", sum);

    for n in 1..100 {
        if n % 15 == 0 {
            println!("fizzbuzz!");
        } else if n % 3 == 0 {
            println!("fizz!");
        } else if n % 5 == 0 {
            println!("buzz!");
        } else {
            println!("{}", n);
        }
    }

    let mut names = vec!["Bob", "Frank", "Ferris"];
    for name in names.iter_mut() {
        match name {
            &mut "Ferris" => println!("There is a rustacean among us!"),
            _ => println!("Hello, {}!", name),
        }
    }
}
