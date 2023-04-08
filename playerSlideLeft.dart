import 'boardConvertFunctions.dart';

List<List<String>> slideLeft(List<List<String>> gameBoard) {
  List<List<int>> newBoard = boardStringToIntConverter(gameBoard);

// row 0
  for (int col = newBoard[0].length - 1; col >= 0; col--) {
    if (col < 0) {
      break;
    }
    if (col > 0) {
      if (newBoard[0][col - 1] == 0) {
        newBoard[0][col - 1] = newBoard[0][col];
        newBoard[0][col] = 0;
      }
      if (newBoard[0][col - 1] == newBoard[0][col]) {
        newBoard[0][col - 1] = newBoard[0][col] + newBoard[0][col - 1];
        newBoard[0][col] = 0;
      }
    }
  }
  // row 1
  for (int col = newBoard[0].length - 1; col >= 0; col--) {
    if (col < 0) {
      break;
    }
    if (col > 0) {
      if (newBoard[1][col - 1] == 0) {
        newBoard[1][col - 1] = newBoard[1][col];
        newBoard[1][col] = 0;
      }
      if (newBoard[1][col - 1] == newBoard[1][col]) {
        newBoard[1][col - 1] = newBoard[1][col] + newBoard[1][col - 1];
        newBoard[1][col] = 0;
      }
    }
  }
  // row 2
  for (int col = newBoard[0].length - 1; col >= 0; col--) {
    if (col < 0) {
      break;
    }
    if (col > 0) {
      if (newBoard[2][col - 1] == 0) {
        newBoard[2][col - 1] = newBoard[2][col];
        newBoard[2][col] = 0;
      }
      if (newBoard[2][col - 1] == newBoard[2][col]) {
        newBoard[2][col - 1] = newBoard[2][col] + newBoard[2][col - 1];
        newBoard[2][col] = 0;
      }
    }
  }
  // row 3
  for (int col = newBoard[0].length - 1; col >= 0; col--) {
    if (col < 0) {
      break;
    }
    if (col > 0) {
      if (newBoard[3][col - 1] == 0) {
        newBoard[3][col - 1] = newBoard[3][col];
        newBoard[3][col] = 0;
      }
      if (newBoard[3][col - 1] == newBoard[3][col]) {
        newBoard[3][col - 1] = newBoard[3][col] + newBoard[3][col - 1];
        newBoard[3][col] = 0;
      }
    }
  }
  gameBoard = boardIntToStringConverter(newBoard);
  return gameBoard;
}
