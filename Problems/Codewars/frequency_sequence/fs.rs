fn main(s:&str,sep:&str)->String {
    println!("Hello, world!");
}

fn

#[test]
fn returns_expected() {
  assert_eq!(freq_seq("hello world", "-"), "1-1-3-3-2-1-1-2-1-3-1");
  assert_eq!(freq_seq("19999999", ":"), "1:7:7:7:7:7:7:7");
  assert_eq!(freq_seq("^^^**$", "x"), "3x3x3x2x2x1");
}
