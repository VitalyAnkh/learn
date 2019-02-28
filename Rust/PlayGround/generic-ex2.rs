use std::fmt::Debug;
use std::iter::Iterator;

fn use_iter<ITER>(mut iter: ITER)
where
    ITER: Iterator,
    ITER::Item: Debug,
{
    while let Some(i) = iter.next() {
        println!("{:?}", i);
    }
}

fn main() {
    let v: Vec<i32> = vec![1, 2, 3, 4, 5];
    use_iter(v.iter());
}
