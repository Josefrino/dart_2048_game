// Function responsible for spawning the board with the nubmer 2 every time the user makes a move

import 'dart:math';

import 'isBoardEmpty.dart';

List<List<String>> spawnTwos(List<List<String>> board) {
  List<List<String>> newBoard = board;
  int maxLength = newBoard[0].length;
  int maxHeight = newBoard.length;
  int randomX;
  int randomY;
  bool boardIsEmpty = isBoardEmpty(board);
  while (true && boardIsEmpty) {
    randomX = Random().nextInt(maxLength);
    randomY = Random().nextInt(maxHeight);
    if (newBoard[randomX][randomY] == ' ') {
      newBoard[randomX][randomY] = '2';
      break;
    }
  }
  return newBoard;
}
