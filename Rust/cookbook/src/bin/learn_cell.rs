use std::cell::{RefCell, RefMut};
use std::collections::HashMap;
use std::rc::Rc;

fn main() {
    let shared_map = Rc::new(RefCell::new(HashMap::new()));
    {
        let mut map: RefMut<_> = shared_map.borrow_mut();
        map.insert("africa", 93425);
        map.insert("asia", 321512);
        map.insert("europe", 42331);
    }
    // the block above avoids panicking
    let total: i32 = shared_map.borrow().values().sum();
    println!("{}", total);
}

struct Graph{
    edges:Vec<(i32,i32)>,
    span_tree_cache:RefCell<Option<Vec<(i32,i32)>>>,
}

impl Graph{
    fn minimum_spanning_tree(&self)->Vec<(i32,i32)>{
        self.span_tree_cache.borrow_mut()
            .get_or_insert_with(||self.calc_span_tree())
            .clone()
    }
    fn calc_span_tree(&self)->Vec<(i32,i32)>{
        vec![]
    }
}