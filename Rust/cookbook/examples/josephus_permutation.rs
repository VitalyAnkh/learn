struct CirCleState<'a> {
    position: Option<i32>,
    circle: &'a mut Vec<i32>,
}
fn josephus_permutation(cs: &mut CirCleState, k: i32) {
    let len = cs.circle.len();
    if len == 0 {
        return;
    }
    match cs.position {
        None => {
            cs.circle.remove((k - 1) as usize % len);

            cs.position = Some(((k - 1) as usize % len) as i32);
        }
        Some(i) => {
            let new_position = (i + k - 1) % (len as i32);
            cs.position = Some(new_position);
            // we begin counting from 1
            // but when dealing with the read stuff( rust vector, we minus the index by 1 )
            // that's to say, in vector, we begin counting by 0
            // No! No! No!
            // I don't want to do this
            // Thinking in the programming language is the best way to solve a
            // programming problem
            cs.circle.remove(new_position as usize);
        }
    }
}
fn josephus_survivor(n: i32, k: i32) -> i32 {
    let mut v: Vec<i32> = (1..=n).into_iter().collect();
    let mut cs = CirCleState {
        position: None,
        circle: &mut v,
    };
    loop {
        if cs.circle.len() == 1 {
            break;
        }
        josephus_permutation(&mut cs, k);
        //    println!("{:?}", cs.circle);
    }
    cs.circle[0]
}

fn main() {
    let mut v = vec![1, 2, 3, 4, 5, 6, 7];
    let now: Option<i32> = None;
    let k = 3;
    let mut cs = CirCleState {
        position: None,
        circle: &mut v,
    };
    josephus_permutation(&mut cs, k);
    println!("{:?}", cs.circle);
    loop {
        if cs.circle.len() == 0 {
            break;
        }
        josephus_permutation(&mut cs, k);
        println!("{:?}", cs.circle);
    }
}
#[test]
fn basic_tests() {
    assert_eq!(josephus_survivor(7, 3), 4);
    assert_eq!(josephus_survivor(11, 19), 10);
    assert_eq!(josephus_survivor(40, 3), 28);
    assert_eq!(josephus_survivor(14, 2), 13);
    assert_eq!(josephus_survivor(100, 1), 100);
    assert_eq!(josephus_survivor(1, 300), 1);
    assert_eq!(josephus_survivor(2, 300), 1);
    assert_eq!(josephus_survivor(5, 300), 1);
    assert_eq!(josephus_survivor(7, 300), 7);
    assert_eq!(josephus_survivor(300, 300), 265);
}
