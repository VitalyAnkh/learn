// 复刻一个标准库中的repeat函数
fn repeat<T>(slice: &[T], n: usize) -> Vec<T>
where
    T: Copy,
{
    let mut v: Vec<T> = Vec::new();
    for _ in 0..n {
        for x in slice {
            v.push(*x);
        }
    }
    v
}

fn main() {
    let x = [1, 2, 3];
    println!("{:?}", repeat(&x, 3));
}
