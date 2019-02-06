fn main(){
    let array=[1,2,3,4,5]; // how to correct this program 
    for i in array{
        println!("{}",i );
    }
    /// = help: the trait `std::iter::Iterator` is not implemented for `[{integer}; 5]`
    /// = note: arrays are not iterators, but slices like the following are: `&[1, 2, 3]`
    /// = note: required by `std::iter::IntoIterator::into_iter`
}