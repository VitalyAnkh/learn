use std::sync::mpsc::channel;
use std::thread;
struct MyType {
    items: Vec<String>,
}

impl MyType {
    fn iter(&self) -> impl Iterator<Item = &String> + '_ {
        MyIterator {
            index: 0,
            items: &self.items,
        }
    }
}

struct MyIterator<'a> {
    index: usize,
    items: &'a Vec<String>,
}

impl<'a> Iterator for MyIterator<'a> {
    type Item = &'a String;
    fn next(&mut self) -> Option<Self::Item> {
        if self.index >= self.items.len() {
            None
        } else {
            let item = &self.items[self.index];
            self.index += 1;
            Some(item)
        }
    }
}
#[test]
fn for_loop() {
    let v = vec![1, 2, 3];
    for i in &v {
        println!("{}", i);
    }
    println!("{:?}", v);
}

fn main() {
    let my_type = MyType {
        items: vec![
            "fdsa".to_owned(),
            "fdsafdsadsaf".to_owned(),
            "fdsweeoz".to_owned(),
            "vitalyr".to_owned(),
        ],
    };
    for elem in my_type.iter() {
        dbg!(elem);
    }
    receiver_can_be_iterated();
    //    example(&[4, 5, 6].iter().into());
}

fn example<I: Iterator<Item = i32>>(mut iter: I) {
    let first3: Vec<i32> = iter.by_ref().take(3).collect();
    for item in iter {}
}

fn receiver_can_be_iterated() {
    let (send, recv) = channel();
    thread::spawn(move || {
        send.send(1).unwrap();
        send.send(2).unwrap();
        send.send(3).unwrap();
    });
    for received in recv {
        dbg!(received);
    }
}
