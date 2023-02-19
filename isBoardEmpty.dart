bool isBoardEmpty(List<List<String>> board) {
  for (int x = 0; x < board[0].length; x++) {
    for (int y = 0; y < board.length; y++) {
      if (board[x][y] == ' ') {
        return true;
      }
    }
  }
  return false;
}
