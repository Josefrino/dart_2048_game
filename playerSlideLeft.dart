import 'boardConvertFunctions.dart';

List<List<String>> slideLeft(List<List<String>> gameBoard) {
  List<List<int>> newBoard = boardStringToIntConverter(gameBoard);

  for (int x = newBoard.length - 1; x >= 0; x--) {
    if (x == newBoard.length - 1) {
    }
  }
  gameBoard = boardIntToStringConverter(newBoard);
  return gameBoard;
}
