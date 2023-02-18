// Function responsible for spawning the board with the nubmer 2 every time the user makes a move

import 'dart:math';

List<List<String>> spawnTwos(List<List<String>> board) {
  List<List<String>> newBoard = board;
  int xPos = newBoard[0].length;
  int yPos = newBoard.length;
  int randomX = Random().nextInt(xPos);
  int randomY = Random().nextInt(yPos);
  for (int x = 0; x < xPos; x++) {
    randomX = Random().nextInt(xPos);
    randomY = Random().nextInt(yPos);
    for (int y = 0; y < yPos; y++) {
      if (newBoard[randomX][randomY] == ' ') {
        newBoard[randomX][randomY] = '2';
        x = 10;
        y = 10;
        break;
      }
    }
  }
  return newBoard;
}
