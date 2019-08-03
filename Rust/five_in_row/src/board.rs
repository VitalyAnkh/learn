use crate::chess::Chess;

#[derive(Debug,PartialEq,Eq)]
enum GridPoint{
    Blank,
    Chess,
}
struct Board(Vec<GridPoint>);

impl Board{
    fn new(height:u8,width:u8)->Board{
        let mut b = Board(Vec::new());
        for i in 0..width{
            for j in 0..height{
                b.0.push(GridPoint::Blank);
            }
        }
        b
    }
}