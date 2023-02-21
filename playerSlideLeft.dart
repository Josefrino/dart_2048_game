import 'boardConvertFunctions.dart';

List<List<String>> slideLeft(List<List<String>> gameBoard) {
  List<List<int>> newBoard = boardStringToIntConverter(gameBoard);

  for (int col = 0; col < newBoard[0].length; col++) {
    if (col + 1 > 3) {
      break;
    }
    newBoard[0][col] = newBoard[0][col] + newBoard[0][col + 1];
  }
  gameBoard = boardIntToStringConverter(newBoard);
  return gameBoard;
}
