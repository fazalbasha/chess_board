# chess_board
Program to find number of possible positions for given piece & current position in the board.

Logic
  - Board.rb is the class to build nxn size board.
  - Piece.rb is the parent class to all piece Objects.
  - All Pieces are defined with their appropriate directions.
  - Parent class Piece has handling the moves logic.
  - Chess.rb is the main class to start the process.

Features
  - Used terminal-table gem to display board on terminal.
  - Object Oriented Design
  - RSpec for test coverage
  
Up and running:
  - bundle
  - ruby chess.rb

Sample Output:

Welcome to Chess Board

Find out the movable positions of your selected Piece from the board with size of your choice!

Enter board size: 8

+----+----+----+----+----+----+----+----+

|           8 x 8 ChessBoard            |

+----+----+----+----+----+----+----+----+

| A8 | B8 | C8 | D8 | E8 | F8 | G8 | H8 |

+----+----+----+----+----+----+----+----+

| A7 | B7 | C7 | D7 | E7 | F7 | G7 | H7 |

+----+----+----+----+----+----+----+----+

| A6 | B6 | C6 | D6 | E6 | F6 | G6 | H6 |

+----+----+----+----+----+----+----+----+

| A5 | B5 | C5 | D5 | E5 | F5 | G5 | H5 |

+----+----+----+----+----+----+----+----+

| A4 | B4 | C4 | D4 | E4 | F4 | G4 | H4 |

+----+----+----+----+----+----+----+----+

| A3 | B3 | C3 | D3 | E3 | F3 | G3 | H3 |

+----+----+----+----+----+----+----+----+

| A2 | B2 | C2 | D2 | E2 | F2 | G2 | H2 |

+----+----+----+----+----+----+----+----+

| A1 | B1 | C1 | D1 | E1 | F1 | G1 | H1 |

+----+----+----+----+----+----+----+----+

Available pieces are listed below:
1. Queen
2. Knight
3. Bishop
4. Rook
Please choose any one

Enter piece name: rook

Enter piece position: h1

Total movable positions from your choosen position for the given piece Rook are: 

H2, H3, H4, H5, H6, H7, H8, G1, F1, E1, D1, C1, B1, A1
