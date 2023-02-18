import 'dart:convert';
import 'dart:io';

import 'printBoard.dart';
import 'spawnTwos.dart';

void main() {
  print("Welcome to the game of 2048");
  // Steps to build the game
  /*
    1st -> display the board
  */
  List<List<String>> board = [
    ['0', '0', '0', '2'],
    ['0', '2', '0', '0'],
    ['0', '0', '0', '0'],
    ['0', '0', '0', '0'],
  ];

  printBoard(board);
  board = spawnTwos(board);
  while (true) {
    print(
        "Do you want to spawn twos on your board? answer with \"yes\" or \"no\"");
    var line = stdin.readLineSync(encoding: utf8);
    if (line == "yes") {
      board = spawnTwos(board);
      printBoard(board);
    } else {
      break;
    }
  }
}
