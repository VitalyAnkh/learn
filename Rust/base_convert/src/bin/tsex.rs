//! rust type system exercises

struct Zero();

struct Succ<T>(T);

// alias
type One = Succ<Zero>;
type Two = Succ<One>;
type Three = Succ<Two>;
type Four = Succ<Three>;
type Five = Succ<Four>;
type Six = Succ<Five>;

struct AddHelper<A, B>(A, B);
trait Add {
    type Result;
}

impl<A> Add for AddHelper<A, Zero> {
    type Result = A;
}

impl<A, B> Add for AddHelper<A, Succ<B>>
where
    AddHelper<A, B>: Add,
{
    type Result = Succ<<AddHelper<A, B> as Add>::Result>;
}

const QED: Option<<AddHelper<One, One> as Add>::Result> = Option::<Two>::None;

fn main() {}
