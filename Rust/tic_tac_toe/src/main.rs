pub mod game;
extern crate rand;
use game::Game;

fn main() {
    println!("Welcome to Tic-Tac-Toe!");
    let mut game = Game::new();
    game.play_game();
}
