

#[derive(Debug,PartialEq,Eq)]
enum GridPoint{
    Blank,
    Chess,
}

#[derive(Debug,PartialEq,Eq)]
pub struct Board(Vec<Vec<GridPoint>>);

impl Board{
    pub fn new(height:u8,width:u8)->Board{
        let mut b = Board(Vec::new());
        for _i in 0..width{
            let mut row=Vec::new();
            for _j in 0..height{
                row.push(GridPoint::Blank);
            }
            b.0.push(row);
        }
        b
    }
}