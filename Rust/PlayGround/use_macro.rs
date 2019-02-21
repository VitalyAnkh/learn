macro_rules! hashmap {
    ($($key:expr=>$val:expr),*) => {{
        let mut map = ::std::collections::HashMap::new();
       $( map.insert($key, $val);)*
        map
    }}
}

fn main() {
    let counts = hashmap!['A'=>0,'C'=>0,'G'=>0,'M'=>1];
    dbg!(counts);
}
