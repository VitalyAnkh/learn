fn bubble_sort(v: &mut Vec<i32>) {
    let mut n = v.len();
    while n > 0 {
        let (mut i, mut max_ptr) = (1, 0);
        while i < n {
            if v[i - 1] < v[i] {
                v.swap(i, i - 1);
                max_ptr = i;
            }
            i += 1;
        }
        n = max_ptr;
    }
}

fn main() {
    let mut v = vec![14, 4, 1, 4321, 2, 8];
    bubble_sort(&mut v);
    println!("{:?}", v);
}
