/* The following exercises were borrowed from Will Crichton's CS 242 Rust lab. */

use std::collections::HashSet;

fn main() {
    println!("Hi! Try running \"cargo test\" to run tests.");
}

fn add_n(v: Vec<i32>, n: i32) -> Vec<i32> {
    
    let mut new = vec![];
    for value in v.iter() {
        new.push(value + n);
    };

    new

}

fn add_n_inplace(v: &mut Vec<i32>, n: i32) {
    for val in v.iter_mut() {
        *val += n
    }
}

fn dedup(v: &mut Vec<i32>) {

    let mut exists = HashSet::new();
    let mut to_delete = vec![];
    for (i, item) in v.iter_mut().enumerate() {
        if !exists.contains(item) {
            exists.insert(item);
        } else {
            to_delete.push(i);
        }
    }
    
    let mut num_deleted = 0;
    for &item in to_delete.iter() {
        v.remove(item - num_deleted);
        num_deleted += 1;
    }

    
}

#[cfg(test)]
mod test {
    use super::*;

    #[test]
    fn test_add_n() {
        assert_eq!(add_n(vec![1], 2), vec![3]);
    }

    #[test]
    fn test_add_n_inplace() {
        let mut v = vec![1];
        add_n_inplace(&mut v, 2);
        assert_eq!(v, vec![3]);
    }

    #[test]
    fn test_dedup() {
        let mut v = vec![3, 1, 0, 1, 4, 4];
        dedup(&mut v);
        assert_eq!(v, vec![3, 1, 0, 4]);
    }
}
