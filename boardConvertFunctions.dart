List<List<int>> boardStringToIntConverter(List<List<String>> board) {
  List<List<int>> newBoard = [];
  for (int x = 0; x < board.length; x++) {
    List<int> row = [0, 0, 0, 0];
    for (int y = 0; y < board[0].length; y++) {
      if (board[x][y] != ' ') {
        row[y] = int.parse(board[x][y]);
      }
    }
    newBoard.add(row);
  }
  return newBoard;
}

List<List<String>> boardIntToStringConverter(List<List<int>> board) {
  List<List<String>> newBoard = [];
  for (int x = 0; x < board.length; x++) {
    List<String> row = ['0', '0', '0', '0'];
    for (int y = 0; y < board[0].length; y++) {
      row[y] = (board[x][y].toString());
    }
    newBoard.add(row);
  }
  return newBoard;
}
