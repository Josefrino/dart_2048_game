import 'dart:convert';
import 'dart:io';

import 'isBoardEmpty.dart';
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
  printBoard(board);
  board = slideLeft(board);
  board[0][3] = '4';
  printBoard(board);
  board = slideLeft(board);
  printBoard(board);
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
