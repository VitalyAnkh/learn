use std::cell::RefCell;
use std::rc::Rc;

struct Node {
    next: Option<Rc<RefCell<Node>>>,
}

impl Node {
    fn new() -> Node {
        Node { next: None }
    }
}

impl Drop for Node {
    fn drop(&mut self) {
        println!("drop!");
    }
}

fn alloc_objects() {
    let node1 = Rc::new(RefCell::new(Node::new()));
    let node2 = Rc::new(RefCell::new(Node::new()));
    let node3 = Rc::new(RefCell::new(Node::new()));
    node1.borrow_mut().next = Some(node2.clone());
    node2.borrow_mut().next = Some(node3.clone());
    node3.borrow_mut().next = Some(node1.clone());
}

fn main() {
    alloc_objects();
    println!("Program finished.");
}
