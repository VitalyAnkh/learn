use std::cell::RefCell;
use std::rc::Rc;

struct Node<T> {
    data: T,
    next: NodePtr<T>,
}
type InnerMutable<G> = Rc<RefCell<G>>;
type NodePtr<T> = Option<InnerMutable<Node<T>>>;
impl<T> Drop for Node<T> {
    fn drop(&mut self) {
        println!("Droped here!");
    }
}
fn main() {
    println!("{:?}", 1);
    let node1 = Rc::new(RefCell::new(Node {
        data: 1,
        next: None,
    }));
    let node2 = Rc::new(RefCell::new(Node {
        data: 2,
        next: None,
    }));
    node1.borrow_mut().next = Some(node2.clone());
    node2.borrow_mut().next = Some(node1.clone())
}
