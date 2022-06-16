use std::io::prelude::*;
use std::ops::Add;

#[derive(Eq, PartialEq, Debug, Clone, Copy)]
enum Outcome {
    Win(Player),
    Draw,
}
#[derive(Eq, PartialEq, Debug, Clone, Copy)]
enum Player {
    Player1,
    Player2,
}

/// A Turn is either a ture of player,
/// or game over.
#[derive(Eq, PartialEq, Debug, Clone, Copy)]
enum Turn {
    Turn(Player),
    GameOver(Outcome),
}

#[derive(Eq, PartialEq, Debug, Clone, Copy)]
struct Location(usize, usize);

#[derive(Eq, PartialEq, Debug, Clone)]
enum Captor {
    None,
    Captor(Location, Vec<Location>),
}
#[derive(Eq, PartialEq, Debug, Clone, Copy)]
enum Square {
    Piece(Player),
    Empty,
}

/// A Board always consists of 'gameHeight' rows and 'gameWidth' columns.
/// The top left corner is @'Locatioin'(0, 0).
type Board = Vec<Square>;

/// The 'History' of a game state constains past boards
type History = Vec<Board>;

/// Game represents all the current state of Faronona game
struct Game {
    turn: Turn,
    captor: Captor,
    location: Location,
    board: Board,
    history: History,
}

impl Game {
    fn new() -> Game {
        Game {
            turn: Turn::Turn(Player::Player1),
            captor: Captor::None,
            location: Location(0, 0),
            board: vec![Square::Empty; 9 * 5],
            history: vec![],
        }
    }

    fn print(&self) {
        println!("{}", "  0 1 2 3 4 5 6 7 8");
        for (i, row) in self.board.chunks(5).enumerate() {
            print!("{}", i);
            for square in row {
                match square {
                    Square::Piece(Player::Player1) => print!(" {}", "X"),
                    Square::Piece(Player::Player2) => print!(" {}", "O"),
                    Square::Empty => print!(" {}", "."),
                }
            }
            println!("");
        }
    }

    fn read_input(&self) -> Result<String, ()> {
        use std::io;
        let mut input = String::new();
        match io::stdin().read_line(&mut input) {
            Ok(_) => Ok(input),
            Err(_) => Err(()),
        }
    }

    fn update(&mut self, input: String) {
        todo!();
    }
}

impl Add for Location {
    type Output = Location;
    fn add(self, other: Location) -> Location {
        Location(self.0 + other.0, self.1 + other.1)
    }
}

fn main() {
    let mut game = Game::new();
    game.print();
    loop {
        let input = game.read_input();
        if let Err(e) = input {
            println!("{:?}", e);
            continue;
        }
        let input = input.unwrap();
        // if let Err(e) = game.update(input) {
        //     println!("{}", e);
        //     continue;
        // }
        game.print();
    }
}
