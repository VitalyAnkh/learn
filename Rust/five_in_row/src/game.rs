use crate::board;

const DIAMOND_WHITE_LARGE:&str="⬜";
const NUMBER_SYMBOLS:[&'static str;9]=["①","②","③","④","⑤","⑥","⑦","⑧","⑨"];
pub struct Game{
    board:board::Board,

}

impl Game{
    fn new()->Game{
        Game{board:board::Board::new(15,15)}
    }
    fn prompt_board_size(){}
    fn prompt_game_difficulty(){}
    fn display_board(&self){
    }

}