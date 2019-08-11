// game module controls the game process
mod game;
// board module holds the chess board data
mod board;
// chess module contains Chess enum, which represent chess
mod chess;

fn main() {
    println!("Hello, world!");
    let b=board::Board::new(12,13);
    dbg!(b);
}
