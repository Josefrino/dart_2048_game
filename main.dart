import 'dart:io';

void main() {
  print("Welcome to the game of 2048");
  // Steps to build the game
  /*
    1st -> display the board
  */
  List<List<String>> board = [
    ['1', '5', '7', '12'],
    ['4', '2', '2', '2'],
    ['4', '2', '2', '2'],
    ['2', '4', '4', '2'],
  ];
  printBoard(board);
  var newBoard = boardStringToIntConverter(board);
  newBoard = slideLeft(newBoard);
  printBoard(boardIntToStringConverter(newBoard));
}

void printBoard(List<List<String>> board) {
  var row = board.length;
  var col = board[0].length;
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

List<List<int>> slideLeft(List<List<int>> board) {
  List<List<int>> newBoard =
      List.generate(board.length, (i) => List.filled(board[0].length, 0));

  for (int x = board.length - 1; x >= 0; x--) {
    if (x >= 1) {
      newBoard[0][x] = board[0][x] + board[0][x - 1];
    } else {
      newBoard[0][x] = 2;
    }
  }

  return newBoard;
}

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
