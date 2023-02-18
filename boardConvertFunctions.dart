List<List<int>> boardStringToIntConverter(List<List<String>> board) {
  List<List<int>> newBoard = [];
  for (int x = 0; x < board.length; x++) {
    List<int> row = [];
    for (int y = 0; y < board[0].length; y++) {
      row.add(int.parse(board[x][y]));
    }
    newBoard.add(row);
  }
  return newBoard;
}

List<List<String>> boardIntToStringConverter(List<List<int>> board) {
  List<List<String>> newBoard = [];
  for (int x = 0; x < board.length; x++) {
    List<String> row = [];
    for (int y = 0; y < board[0].length; y++) {
      row.add(board[x][y].toString());
    }
    newBoard.add(row);
  }
  return newBoard;
}