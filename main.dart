import 'playerSlideLeft.dart';
import 'printBoard.dart';
import 'spawnTwos.dart';

void main() {
  print("Welcome to the game of 2048");
  // Steps to build the game
  /*
    1st -> display the board
  */
  List<List<String>> board = [
    ['2', '0', '0', '2'],
    ['0', '2', '0', '0'],
    ['0', '0', '0', '0'],
    ['0', '0', '0', '0'],
  ];
  // 1st Play
  printBoard(board);
  board = slideLeft(board);
  printBoard(board);
  // 2nd Play
  board = spawnTwos(board);
  printBoard(board);
  board = slideLeft(board);
  printBoard(board);
  // 3rd play
  board = spawnTwos(board);
  printBoard(board);
  board = slideLeft(board);
  printBoard(board);
  // 4th play
  board = spawnTwos(board);
  printBoard(board);
  board = slideLeft(board);
  printBoard(board);
  // 5th play
  board = spawnTwos(board);
  printBoard(board);
  board = slideLeft(board);
  printBoard(board);
  // 6th play

  // while (true) {
  //   print(
  //       "Do you want to spawn twos on your board? answer with \"yes\" or \"no\"");
  //   var line = stdin.readLineSync(encoding: utf8);
  //   if (line == "yes" && isBoardEmpty(board)) {
  //     board = spawnTwos(board);
  //     printBoard(board);
  //   } else {
  //     break;
  //   }
  // }
}
