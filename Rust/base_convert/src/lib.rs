mod test;
// fn my_flatten<T>(mut xs: &[T]) -> Vec<T> {
//     match xs {
//         [] => vec![],
//         [mut x, mut y @ ..] => {
//             let mut x = my_flatten(x);
//             x.append(my_flatten(&y))
//         }
//         _ => xs,
//     }
// }
