fn main() {
    let mut vec = vec![1, 2, 3];
    let ref_mut_vec = &mut vec;
    let mut vec_iter = ref_mut_vec.into_iter();
//    if let Some(i) = vec_iter.next() {
//        println!("{}", i);
//    }
//    dbg!(ref_mut_vec);
//    dbg!(vec);
    for i in ref_mut_vec {
        println!("{}",i);
    }
//    for i in it{
//
//    }
    let mut a=1;
    let ref_a=&mut a;
    *ref_a+=2;
    println!("{}",a);
    let mut s=String::from("Hello");
    let ref_string=&mut s;


    let ref_mut_haha=&mut Haha{
        data:String::from("fdsa"),
    };
//    ref_mut_haha.hello();
    dbg!(ref_mut_haha);

}

//trait Name{
//    fn hello(self){}
//}
#[derive(Debug)]
struct Haha{
    data:String,
}
//impl Name for &mut Haha{
//    fn hello(self){}
//}