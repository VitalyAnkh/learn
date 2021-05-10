#![feature(generic_associated_types)]

trait Monad /* : Applicative (for pure/return, doesn't matter for this example) */ {
    // Self is like the "f a" in haskell

    /// extract the "a" from "f a"
    type Unplug;

    /// exchange the "a" in "f a" in the type of Self with B
    type Plug<B>: Monad;

    fn bind<B, F>(self, f: F) -> Self::Plug<B>
    where
        F: Fn(Self::Unplug) -> Self::Plug<B>;
}

impl<A> Monad for Option<A> {
    type Unplug = A;
    type Plug<B> = Option<B>;
    fn bind<B, F>(self, f: F) -> Option<B>
    where
        F: Fn(A) -> Option<B>,
    {
        self.and_then(f)
    }
}

fn main() {
    let x = Some(1).bind(|x| Some(x * 2));
    println!("{:?}", x);
}
