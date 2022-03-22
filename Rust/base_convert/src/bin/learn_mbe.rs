macro_rules! items {
    ($($item: item)*) => {
        ()
    };
}
macro_rules! statements {
	($($stmt: stmt)*) => {
		$($stmt)*
	};
}
fn main() {
    items!(
        struct Foo;
        enum Bar{
            Baz(String)
        }
        pub use crate::foo;
        impl Foo{}
    );
    statements!(
        let x =3;
        struct Foo;
        3
            3;
        let zig=3;
        if true {} else {}
        {}
    );
}
