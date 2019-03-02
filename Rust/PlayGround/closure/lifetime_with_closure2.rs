fn gen_iter<'a, T, F>(init: T, next: F) -> impl Iterator<Item = T>
where
    T: Copy + 'a,
    F: Fn(T) -> Option<T> + 'a,
{
    struct S<T, F>(T, F)
    where
        T: Copy,
        F: Fn(T) -> Option<T>;

    impl<T, F> Iterator for S<T, F>
    where
        T: Copy,
        F: Fn(T) -> Option<T>,
    {
        type Item = T;
        fn next(&mut self) -> Option<Self::Item> {
            if let Some(v) = (self.1)(self.0) {
                self.0 = v;
                Some(v)
            } else {
                None
            }
        }
    }
    S(init, next)
}

fn main() {
    let i = "DCjanus";
    let f = |i| Some(i);
    let mut iter = gen_iter(i, f);
    if let Some(dc) = iter.next() {
        let dc2 = dc.clone();
        println!("{} {}", dc2, dc);
    }
}
