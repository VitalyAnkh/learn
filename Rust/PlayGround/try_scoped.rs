extern crate scoped_threadpool;
use scoped_threadpoll::Pool;

fn main() {
    let mut pool = Pool::new(4);
    let mut vec = vec![0, 1, 2, 3, 4, 5, 6, 7];
    pool.scoped(|scope| {
        for e in &mut vec {
            scope.execute(move || {
                *e += 1;
            });
        }
    });
    println!("{:?}", vec);
}
