fn calc_by<'a, F>(var: &'a i32, f: F) -> i32
where
    F: Fn(&'a i32) -> i32,
{
    f(var)
}

fn main() {
    let v = 3_i32;
    let result = calc_by(&v, |i| i * 2);
    println!("{}", result);
}
