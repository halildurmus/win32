import 'dart:math' show min, max;

import 'drawengine.dart';
import 'pieceset.dart';
import 'piece.dart';

class Level {
  List<List<int>> board; // The cavnas, the drawing board
  DrawEngine de; // Does graphics stuffs
  PieceSet pieceSet; // Piece generator
  Piece current; // Current dropping piece
  Piece next; // Next piece
  int width; // Level width (in cells)
  int height; // Level height
  int posX; // X coordinate of dropping piece (Cartesian system)
  int posY; // Y coordinate of dropping piece
  int speed; // Drop a cell every _speed_ millisecs
  double lastTime; // Last time updated
  double currentTime; // Current update time
  int score; // Player's score

  // de: used to draw the level
  // width & height: level size in cells
  Level(DrawEngine de, [int width = 10, int height = 20])
      : de = de,
        width = width,
        height = height {
    // srand(time(0));

    // // Allocate the drawing board
    // board = new COLORREF*[width];
    // for (int i = 0; i < width; i++)
    // {
    //     board[i] = new COLORREF[height];
    //     for (int j = 0; j < height; j++)
    //         board[i][j] = RGB(0, 0, 0);
    // }

    // current = 0;
    // next = pieceSet.getRandomPiece();
  }

  // Draws the level
  void drawBoard() {
    for (var i = 0; i < width; i++) {
      for (var j = 0; j < height; j++) {
        de.drawBlock(i, j, board[i][j]);
      }
    }
  }

  // Rotates the dropping piece, returns true if successful
  bool rotate() {
    return false;
  }

  // Moves the dropping piece, returns true if successful
  // cxDistance is horizontal movement, positive value is right
  // cyDistance is vertical movement, positive value is up (normally it's
  // negaive)
  bool move(int cxDistance, int cyDistance) {
    return false;
    // if (posX + cxDistance < 0 || posY + cyDistance < 0 ||
    //     posX + current.getWidth() + cxDistance > width)
    //     return false;
    // if (cxDistance < 0 && isHitLeft())
    //     return false;
    // if (cxDistance > 0 && isHitRight())
    //     return false;
    // if (cyDistance < 0 && isHitBottom())
    //     return false;
    // clear(current);
    // return place(posX + cxDistance, posY + cyDistance, current);
  }

  // Updates the level based on the current speed
  void timerUpdate() {}

  bool isGameOver() {
    return false;
  }

  // Draw different kinds of info
  void drawSpeed() {
    de.drawSpeed(((500 - speed) / 2).floor(), width + 1, 12);
  }

  void drawScore() {
    de.drawScore(score, width + 1, 13);
  }

  void drawNextPiece() {
    de.drawNextPiece(next, width + 1, 14);
  }
}
