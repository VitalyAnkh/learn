fn f<'a>() {}
fn g<'a: 'a>() {}
fn fun<'a>(_: &'a ()) {}
fn comp_str<'a>(a: &'a str, b: &'a str) -> &'a str {
    if a.len() > b.len() {
        a
    } else {
        b
    }
}

fn comp_str_two<'a, 'b: 'a>(a: &'b str, b: &'b str) -> &'a str {
    if a.len() > b.len() {
        a
    } else {
        b
    }
}

struct Student<'a> {
    name: &'a str,
}

impl<'a> Student<'a> {
    fn comp_name<'b>(&self, other_name: &'b str) -> bool {
        self.name.len() > other_name.len()
    }
}

enum Example {
    A { i: i32, j: f64 },
    B(isize),
}

fn main() {
    // let pf = f::<'static> as fn();
    // let pg = g::<'static> as fn();
    let a = fun;
    // let b: impl for<'a> Fn(&'a ()) = fun;
    // let _ = comp_str::<'static> as fn(&'static str, &'static str) -> &'static str;
    let _ = comp_str_two::<'static, 'static> as fn(&'static str, &'static str) -> &'static str;
    let _ = Student::<'static>::comp_name as fn(&'static Student<'static>, &'static str) -> bool;
}
