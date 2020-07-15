fn fn4() -> fn() -> fn() -> fn() -> bool {
    || -> fn() -> fn() -> bool { || -> fn() -> bool { || -> bool { true } } }
}

fn fn3() -> fn() -> fn() -> bool {
    || || true
}

fn fn2() -> fn() -> bool {
    || true
}

fn fn1() -> bool {
    true
}

fn main() {
    let a = fn4;
    let b = "fdsa".to_string();
}
