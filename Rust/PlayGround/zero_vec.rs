struct ZeroSized;

fn main() {
    let mut v = Vec::<ZeroSized>::new();
    println!("capacity: {}, length: {}", v.capacity(), v.len());
    v.push(ZeroSized);
    v.push(ZeroSized);

    println!("capacity: {}, length: {}", v.capacity(), v.len());

    let p = v.as_ptr();
    println!("ptr: {:p}", p);
    println!("Max usize: {}", std::usize::MAX);
    let size1 = std::mem::size_of::<Vec<i32>>();
    let size2 = std::mem::size_of::<Option<Vec<i32>>>();
    println!("size of Vec: {}, size of option Vec: {}", size1, size2);
}
