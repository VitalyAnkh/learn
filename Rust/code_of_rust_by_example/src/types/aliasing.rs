type NanoSecond =u64;
type Inch=u64;

#[allow(no_camel_case_types)]
type u64_t=u64;

#[test]
fn test_aliasing(){
    let nanoseconds:NanoSecond=67u64 as u64_t;
    let inches:Inch=2 as u64_t;

    // Note that types aliasing *don't* provide any extra safety, because
    // alising are *not* new types.

    println!("{} nanoseconds + {} inches = {} units? ", nanoseconds,
             inches, nanoseconds+inches);



}