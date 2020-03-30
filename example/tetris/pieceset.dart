import 'dart:math' show Random;

import 'package:win32/win32.dart';

import 'piece.dart';

// PieceSet generates 7 types of pieces. Each piece has 4 rotations, so there
// are 7 x 4 = 28 configurations in total.
//
// All 28 configurations are kept in memory after you new PieceSet(). To get
// get piece, use the `getPiece()` method or the `randomPiece` property.
class PieceSet {
  static const NUM_ROTATIONS = 4;
  static const NUM_PIECES = 7;

  final rng = Random();

  List<List<Piece>> pieces =
      List.generate(NUM_PIECES, (i) => List<Piece>(NUM_ROTATIONS));

  PieceSet() {
    var apt = List<Point>.generate(4, (i) => Point());
    // 0, I piece, red
    apt[0].x = 0;
    apt[0].y = 0;
    apt[1].x = 0;
    apt[1].y = 1;
    apt[2].x = 0;
    apt[2].y = 2;
    apt[3].x = 0;
    apt[3].y = 3;
    pieces[0][0] = Piece(0, 0, RGB(255, 0, 0), apt);

    // 1, L piece, orange
    apt[0].x = 0;
    apt[0].y = 0;
    apt[1].x = 1;
    apt[1].y = 0;
    apt[2].x = 0;
    apt[2].y = 1;
    apt[3].x = 0;
    apt[3].y = 2;
    pieces[1][0] = Piece(1, 0, RGB(230, 130, 24), apt);

    // 2, counter-L piece, yellow
    apt[0].x = 0;
    apt[0].y = 0;
    apt[1].x = 1;
    apt[1].y = 0;
    apt[2].x = 1;
    apt[2].y = 1;
    apt[3].x = 1;
    apt[3].y = 2;
    pieces[2][0] = Piece(2, 0, RGB(255, 255, 0), apt);

    // 3, S piece, green
    apt[0].x = 0;
    apt[0].y = 0;
    apt[1].x = 1;
    apt[1].y = 0;
    apt[2].x = 1;
    apt[2].y = 1;
    apt[3].x = 2;
    apt[3].y = 1;
    pieces[3][0] = Piece(3, 0, RGB(120, 200, 80), apt);

    // 4, Z piece, blue
    apt[0].x = 1;
    apt[0].y = 0;
    apt[1].x = 2;
    apt[1].y = 0;
    apt[2].x = 0;
    apt[2].y = 1;
    apt[3].x = 1;
    apt[3].y = 1;
    pieces[4][0] = Piece(4, 0, RGB(100, 180, 255), apt);

    // 5, Square piece, dark blue
    apt[0].x = 0;
    apt[0].y = 0;
    apt[1].x = 1;
    apt[1].y = 0;
    apt[2].x = 0;
    apt[2].y = 1;
    apt[3].x = 1;
    apt[3].y = 1;
    pieces[5][0] = Piece(5, 0, RGB(20, 100, 200), apt);

    // 6, T piece, purple
    apt[0].x = 0;
    apt[0].y = 0;
    apt[1].x = 1;
    apt[1].y = 0;
    apt[2].x = 2;
    apt[2].y = 0;
    apt[3].x = 1;
    apt[3].y = 1;
    pieces[6][0] = Piece(6, 0, RGB(220, 180, 255), apt);

    // Create piece rotations
    rotateAll();
  }

  Piece getPiece(int id, int rotation) {
    if (id >= NUM_PIECES ||
        id < 0 ||
        rotation >= NUM_ROTATIONS ||
        rotation < 0) {
      return null;
    }
    return pieces[id][rotation];
  }

  Piece get randomPiece =>
      getPiece(rng.nextInt(NUM_PIECES), rng.nextInt(NUM_ROTATIONS));

  void rotateAll() {
    for (var i = 0; i < NUM_PIECES; i++) {
      // clone the original piece
      var clone = pieces[i][0].body.map((e) => e).toList();

      for (var j = 1; j < NUM_ROTATIONS; j++) {
        clone = rotate(clone);
        if (pieces[i][j] != null) {
          pieces[i].removeAt(j);
        }
        pieces[i][j] = Piece(i, j, pieces[i][0].color, clone);
      }
    }
  }

  List<Point> rotate(List<Point> apt, [int numPoints = 4]) {
    var rotated = <Point>[];

    // X' = -Y
    // Y' = X
    for (var i = 0; i < numPoints; i++) {
      final pt = Point();
      pt.x = -apt[i].y;
      pt.y = apt[i].x;
      rotated.add(pt);
    }
    return rotated;
  }
}
