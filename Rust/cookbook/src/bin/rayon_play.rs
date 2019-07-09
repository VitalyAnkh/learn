use rayon::prelude::*;

fn main() {
    let mut arr = [1, 2, 3, 4, 4, 5];
    arr.par_iter_mut().for_each(|p| *p += 1);
    dbg!(arr);
}