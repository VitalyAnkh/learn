fn last<T: Clone>(slice: &[T]) -> T {
    if let Some(x)=slice.iter().rev().next(){
        x.to_owned()
    }else{
        panic!();
    }
}

#[test]
fn should_work_for_non_empty_list_of_integers() {
    assert_eq!(last(&[1, 2, 3]), 3);
}

#[test]
fn should_work_for_non_empty_list_of_strings() {
    assert_eq!(last(&["a", "b"]), "b");
}