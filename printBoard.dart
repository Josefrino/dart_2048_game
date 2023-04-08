import 'dart:io';

void printBoard(List<List<String>> board) {
  var row = board.length;
  var col = board[0].length;
  print('\n');
  print('------------');
  for (int a = 0; a < row; a++) {
    for (int b = 0; b < col; b++) {
      if (board[a][b] == '0') {
        board[a][b] = ' ';
      }
      stdout.write('|');
      stdout.write(board[a][b]);
      stdout.write('|');
    }
    stdout.write('\n');
    print('------------');
  }
}
