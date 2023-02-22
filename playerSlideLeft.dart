import 'boardConvertFunctions.dart';

List<List<String>> slideLeft(List<List<String>> gameBoard) {
  List<List<int>> newBoard = boardStringToIntConverter(gameBoard);

  for (int col = newBoard[0].length - 1; col >= 0; col--) {
    if (col < 0) {
      break;
    }
    if (col > 0) {
      if (newBoard[0][col - 1] == 0) {
        newBoard[0][col - 1] = 2;
        newBoard[0][col] = 0;
      }
      if (newBoard[0][col - 1] == 2) {
        newBoard[0][col - 1] = newBoard[0][col] + newBoard[0][col - 1];
        newBoard[0][col] = 0;
        break;
      }
    }
    // if (newBoard[0][col] == 0 && col > 0) {
    //   if (newBoard[0][col - 1] == 2) {
    //     newBoard[0][col - 1] = 0;
    //     newBoard[0][col] = 2;
    //   }
    // }
    // newBoard[0][col] = newBoard[0][col] + newBoard[0][col + 1];
  }
  gameBoard = boardIntToStringConverter(newBoard);
  return gameBoard;
}
