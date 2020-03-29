import 'dart:math' show min, max;

class Point {
  int x;
  int y;

  @override
  String toString() => '($x, $y)';

  Point([this.x = 0, this.y = 0]);
  factory Point.clone(Point orig) => Point(orig.x, orig.y);
}

// A piece in Tetris game. This class is only used by PieceSet. Other classes
// should access Piece through PieceSet.
//
// Every piece is composed by 4 POINTs, using Cartesian coordinate system.
// That is, the most bottom left point is (0, 0), the values on x-axis
// increase to the right, and values on y-axis increase to the top.
//
// To represent a piece, it is snapped to the bottom-left corner. For example,
// when the 'I' piece stands vertically, the point array stores:
// (0,0) (0,1) (0,2) (0,3)
//
class Piece {
  // POINT array of which the piece is composed
  List<Point> body;

  // Number of points in body
  int nPoints;

  // Make rotation faster
  int width;
  int height;

  // Piece type ID and rotation
  int id;
  int rotation;

  // Piece color in RGB
  int color;

  /// Constructs a piece
  ///
  /// pieceId: piece type ID
  /// pieceRotation: how many time is the piece rotated (0-3)
  /// pieceColor: piece color in RGB
  /// apt: array of points of which the piece is composed. This constructor
  ///      moves these points automatically to snap the piece to bottom-left
  ///      corner (0,0)
  /// numPoints: number of points in apt
  Piece(int pieceId, int pieceRotation, int pieceColor, List<Point> apt,
      [int numPoints = 4]) {
    id = pieceId;
    rotation = pieceRotation;
    color = pieceColor;

    nPoints = numPoints;
    width = 0;
    height = 0;

    var bottomLeft = Point.clone(apt[0]);
    bottomLeft.x = 999;

    for (var i = 1; i < nPoints; i++) {
      bottomLeft.x = min(apt[i].x, bottomLeft.x);
      bottomLeft.y = min(apt[i].y, bottomLeft.y);
    }

    body = List<Point>.generate(nPoints, (i) => Point());
    for (var i = 0; i < nPoints; i++) {
      body[i].x = apt[i].x - bottomLeft.x;
      body[i].y = apt[i].y - bottomLeft.y;

      width = max(body[i].x + 1, width);
      height = max(body[i].y + 1, height);
    }
  }

  /// Gets the bottom part of points of the piece
  List<Point> get Skirt {
    var points = <Point>[];

    for (var x = 0; x < width; x++) {
      for (var y = 0; y < height; y++) {
        if (isPointExists(x, y)) {
          var p = Point();
          p.x = x;
          p.y = y;
          points.add(p);
          break;
        }
      }
    }
    return points;
  }

  /// Gets the left part of points of the piece
  List<Point> get LeftSide {
    var points = <Point>[];
    for (var y = 0; y < height; y++) {
      for (var x = 0; x < height; x++) {
        if (isPointExists(x, y)) {
          var p = Point();
          p.x = x;
          p.y = y;
          points.add(p);
          break;
        }
      }
    }
    return points;
  }

  /// Gets the right part of points of the piece
  List<Point> get RightSide {
    var points = <Point>[];
    for (var y = 0; y < height; y++) {
      for (var x = width - 1; x >= 0; x--) {
        if (isPointExists(x, y)) {
          var p = Point();
          p.x = x;
          p.y = y;
          points.add(p);
          break;
        }
      }
    }
    return points;
  }

  /// String representation of a piece (for debugging)
  @override
  String toString() {
    var buffer = StringBuffer();
    buffer.write('width = $width | ');
    buffer.write('height = $height | ');
    buffer.write('nPoints = $nPoints | ');
    buffer.writeln('color = ${color.toRadixString(16)}');

    for (var y = height - 1; y >= 0; y--) {
      for (var x = 0; x < width; x++) {
        if (isPointExists(x, y)) {
          print('($x,$y)');
          buffer.write('#');
        } else {
          buffer.write(' ');
        }
      }
      buffer.writeln();
    }
    return buffer.toString();
  }

  /// Determines if the piece has a point (x, y)
  bool isPointExists(int x, int y) {
    for (var i = 0; i < 4; i++) {
      if (body[i].x == x && body[i].y == y) {
        return true;
      }
    }
    return false;
  }
}
