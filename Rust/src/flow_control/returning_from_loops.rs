#[test]
fn test_return(){
    let mut counter=0;
    let result=loop{
        counter+=counter;
        if counter>123{
            break counter;
        }
    };
    assert_eq!(result,124 );
}