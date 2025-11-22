// Rules of the "Rock, Paper, Scissors" game are:

// Rock beats Scissors,
// Scissors beat Paper,
// Paper beats Rock,
// Two identical moves are a draw.
// Let's play! You will be given valid moves of two Rock, Paper, Scissors players, and have to return which player won: "Player 1 won!" for player 1, and "Player 2 won!" for player 2. In case of a draw return Draw!.

void main() {
  String player1 = "paper";
  String player2 = "scissors";

  if (player1 == player2) {
    print("Draw!");
  } else if (player1 == "rock" && player2 == "scissors") {
    print("Player 1 won!");
  } else if (player1 == "scissors" && player2 == "paper") {
    print("Player 1 won!");
  } else if (player1 == "paper" && player2 == "rock") {
    print("Player 1 won!");
  } else {
    print("player 2 won!");
  }
}
