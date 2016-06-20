use std::io;


#[derive(Clone, Copy, Eq, PartialEq)]
enum Space {
    X,
    O,
    Empty
}

impl std::fmt::Display for Space {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        match *self {
            Space::X     => write!(f, "X"),
            Space::O     => write!(f, "O"),
            Space::Empty => write!(f, " "),
        }
    }
}


#[derive(Eq, PartialEq)]
struct Board {
    spaces: Vec<Space>
}

impl Board {
    fn make_move(self, position: usize, piece: Space) -> Board {
        let mut updated_spaces = self.spaces.to_vec();

        updated_spaces[position] = piece;

        Board { spaces: updated_spaces }
    }

    fn display_board(&self) {
        println!("\
        | ---------- |\n\
        |  {} | {} | {} |\n\
        | ---------- |\n\
        |  {} | {} | {} |\n\
        | ---------- |\n\
        |  {} | {} | {} |\n\
        | __________ |\n\
        ", 
        self.spaces[0],
        self.spaces[1],
        self.spaces[2],
        self.spaces[3],
        self.spaces[4],
        self.spaces[5],
        self.spaces[6],
        self.spaces[7],
        self.spaces[8],
        )
    }

    fn new_board() -> Vec<Space> {
        vec![Space::Empty, Space::Empty, Space::Empty, 
             Space::Empty, Space::Empty, Space::Empty, 
             Space::Empty, Space::Empty, Space::Empty]
    }
}


fn main() {
    println!("What is your name?");

    let mut name = String::new();
    let mut board = Board { spaces: Board::new_board() };

    io::stdin().read_line(&mut name).expect("Failed");

    board.display_board();
    board = board.make_move(0, Space::X);
    board.display_board();
}
