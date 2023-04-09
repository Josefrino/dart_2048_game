# 2048
## Recreating the famous 2048 game using the Dart programming language
- [2048](https://2048game.com/?ref=google-search-classic&gclid=Cj0KCQjw8qmhBhClARIsANAtbofGvr8fmccOja9kg2pzLOjVEUefSEFFzeptyiZVf8nE7mK8fGjE-kIaAmVpEALw_wcB)

Pseudocode:
- Print the initial Board with 2 number 2s placed randomly on the board, the board should by 4 by 4 (4x4), 4 rows and 4 columns
- Create a function to slide every number in the board as far to the left as it can, if it reaches the end then stop, if the number right after is equal, add the number on the right to the one on the left
- Do the same as step 2 but for sliding right, bottom and up
- Place everything inside a game loop that stops when you can't move any further(no neighbor numbers are equal) or you've reached a total of 2048
___
