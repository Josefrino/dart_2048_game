List<List<int>> slideLeft(List<List<int>> board) {
  List<List<int>> newBoard =
      List.generate(board.length, (i) => List.filled(board[0].length, 0));

  for (int x = board.length - 1; x >= 0; x--) {
    if (x == board.length - 1) {
      newBoard[0][x] = 2;
    } else if (x >= 1) {
      newBoard[0][x - 1] = board[0][x] + board[0][x + 1];
    } else {
      newBoard[x][0] = 2;
    }
  }

  return newBoard;
}