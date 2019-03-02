fn main() {
    if std::env::args().any(|arg| arg == "--kill") {
        std::process::exit(1);
    }

    for arg in std::env::args() {
        println!("{}", arg);
    }
}
