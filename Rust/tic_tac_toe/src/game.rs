use rand;
use std::io;
type Board = Vec<Vec<String>>;

enum Turn {
    Player,
    Bot,
}

pub struct Game {
    board: Board,
    current_turn: Turn,
}

impl Game {
    pub fn new() -> Game {
        let first_row = vec![String::from("1"), String::from("2"), String::from("3")];
        let second_row = vec![String::from("4"), String::from("5"), String::from("6")];
        let third_row = vec![String::from("7"), String::from("8"), String::from("9")];
        Game {
            board: vec![first_row, second_row, third_row],
            current_turn: Turn::Player,
        }
    }
    pub fn play_game(&mut self) {
        let mut finished = false;
        while !finished {
            self.play_turn();
            if self.game_is_won() {
                self.print_board();
                match self.current_turn {
                    Turn::Player => println!("You won!"),
                    Turn::Bot => println!("You lost!"),
                }
                finished = Self::player_is_finished();
                self.reset();
            }

            self.current_turn = self.get_next_turn();
        }
    }

    fn play_turn(&mut self) {
        self.print_board();
        let (token, valid_move) = match self.current_turn {
            Turn::Player => (String::from("P"), self.get_player_move()),
            Turn::Bot => (String::from("B"), self.get_bot_move()),
        };
        let (row, col) = Self::to_board_location(valid_move);
        self.board[row][col] = token;
    }
    fn print_board(&self) {
        let separator = "+---+---+---+";
        println!("{}", separator);
        for row in &self.board {
            // 这里不用&self用self行不行 答案：不行
            println!("| {} |", row.join(" | "));
            println!("{}", separator);
        }
    }

    fn get_player_move(&self) -> u32 {
        loop {
            let mut player_input = String::new();
            println!("Please enter your move (an integer between 1 an 9): ");
            match io::stdin().read_line(&mut player_input) {
                Err(e) => println!("Error reading input: {}, please try again", e),
                Ok(_) => match self.validate(&player_input) {
                    Err(e) => println!("{}", e),
                    Ok(num) => return num,
                },
            }
        }
    }
    fn validate(&self, input: &str) -> Result<u32, String> {
        match input.trim().parse::<u32>() {
            Err(_) => Err(String::from("Please input a valid unsigned integer")),
            Ok(number) => {
                if self.is_valid_move(number) {
                    Ok(number)
                } else {
                    Err(String::from(
                        "Please input a number, between 1 and 9, not 
                        already chosen",
                    ))
                }
            }
        }
    }

    fn is_valid_move(&self, unchecked_move: u32) -> bool {
        match unchecked_move {
            1..=9 => {
                let (row, col) = Self::to_board_location(unchecked_move);
                match self.board[row][col].as_str() {
                    "X" | "O" => false,
                    _ => true,
                }
            }
            _ => false,
        }
    }

    fn to_board_location(game_move: u32) -> (usize, usize) {
        let row = (game_move - 1) / 3;
        let col = (game_move - 1) % 3;
        (row as usize, col as usize)
    }
    fn get_bot_move(&self) -> u32 {
        let mut bot_move: u32 = rand::random::<u32>() % 9 + 1;
        while !self.is_valid_move(bot_move) {
            bot_move = rand::random::<u32>() % 9 + 1;
        }
        println!("Bot played moved at: {}", bot_move);
        bot_move
    }

    fn game_is_won(&self) -> bool {
        let mut all_same_row = false;
        let mut all_same_col = false;

        for index in 0..3 {
            all_same_row |= self.board[index][0] == self.board[index][1]
                && self.board[index][1] == self.board[index][2];
            all_same_col |= self.board[0][index] == self.board[1][index]
                && self.board[1][index] == self.board[2][index];
        }
        let all_same_diag_1 =
            self.board[0][0] == self.board[1][1] && self.board[1][1] == self.board[2][2];
        let all_same_diag_2 =
            self.board[0][2] == self.board[1][1] && self.board[2][0] == self.board[1][1];
        (all_same_col | all_same_row | all_same_diag_1 | all_same_diag_2)
    }
    fn player_is_finished() -> bool {
        let mut player_input = String::new();
        println!("Are you finished playing (y/n)");
        match io::stdin().read_line(&mut player_input) {
            Ok(_) => {
                let tmp = player_input.to_lowercase();
                tmp.trim() == "y" || tmp.trim() == "yes"
            }
            Err(_) => false,
        }
    }
    fn reset(&mut self) {
        self.current_turn = Turn::Player;
        self.board = vec![
            vec![String::from("1"), String::from("2"), String::from("3")],
            vec![String::from("4"), String::from("5"), String::from("6")],
            vec![String::from("7"), String::from("8"), String::from("9")],
        ]
    }
    fn get_next_turn(&self) -> Turn {
        match self.current_turn {
            Turn::Player => Turn::Bot,
            Turn::Bot => Turn::Player,
        }
    }
}
