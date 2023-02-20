import 'boardConvertFunctions.dart';

List<List<String>> slideLeft(List<List<String>> gameBoard) {
  List<List<int>> newBoard = boardStringToIntConverter(gameBoard);

  for (int row = 0; row < newBoard[0].length; row++) {
    for (int col = newBoard.length - 1; col < gameBoard.length; col++) {
      if (gameBoard[row][col] == '0') {
        newBoard[3][col] = 2;
      }
    }
  }
  gameBoard = boardIntToStringConverter(newBoard);
  return gameBoard;
}
