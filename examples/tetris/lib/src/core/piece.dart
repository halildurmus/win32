import 'package:win32/win32.dart';

import '../win32/win32_colors.dart';
import 'cell.dart';

enum PieceType { I, O, T, S, Z, J, L }

class Piece {
  Piece(this.type, this.x, this.y, this.rotation) : color = colors[type]!;

  final PieceType type;
  int x;
  int y;
  final int rotation; // 0–3
  final COLORREF color;

  Piece copyWith({int? x, int? y, int? rotation}) =>
      Piece(type, x ?? this.x, y ?? this.y, rotation ?? this.rotation);

  Piece rotated() => copyWith(rotation: (rotation + 1) & 3);

  Iterable<Cell> get cells {
    final shape = shapes[type]![rotation];
    return shape.map((c) => Cell(x + c.x, y + c.y));
  }
}

const shapes = <PieceType, List<List<Cell>>>{
  .I: [
    [Cell(), Cell(1), Cell(2), Cell(3)],
    [Cell(2), Cell(2, 1), Cell(2, 2), Cell(2, 3)],
    [Cell(), Cell(1), Cell(2), Cell(3)],
    [Cell(1), Cell(1, 1), Cell(1, 2), Cell(1, 3)],
  ],
  .O: [
    [Cell(1), Cell(2), Cell(1, 1), Cell(2, 1)],
    [Cell(1), Cell(2), Cell(1, 1), Cell(2, 1)],
    [Cell(1), Cell(2), Cell(1, 1), Cell(2, 1)],
    [Cell(1), Cell(2), Cell(1, 1), Cell(2, 1)],
  ],
  .T: [
    [Cell(1), Cell(0, 1), Cell(1, 1), Cell(2, 1)],
    [Cell(1), Cell(1, 1), Cell(2, 1), Cell(1, 2)],
    [Cell(0, 1), Cell(1, 1), Cell(2, 1), Cell(1, 2)],
    [Cell(1), Cell(0, 1), Cell(1, 1), Cell(1, 2)],
  ],
  .S: [
    [Cell(1), Cell(2), Cell(0, 1), Cell(1, 1)],
    [Cell(1), Cell(1, 1), Cell(2, 1), Cell(2, 2)],
    [Cell(1, 1), Cell(2, 1), Cell(0, 2), Cell(1, 2)],
    [Cell(), Cell(0, 1), Cell(1, 1), Cell(1, 2)],
  ],
  .Z: [
    [Cell(), Cell(1), Cell(1, 1), Cell(2, 1)],
    [Cell(2), Cell(1, 1), Cell(2, 1), Cell(1, 2)],
    [Cell(0, 1), Cell(1, 1), Cell(1, 2), Cell(2, 2)],
    [Cell(1), Cell(0, 1), Cell(1, 1), Cell(0, 2)],
  ],
  .J: [
    [Cell(), Cell(0, 1), Cell(1, 1), Cell(2, 1)],
    [Cell(1), Cell(2), Cell(1, 1), Cell(1, 2)],
    [Cell(0, 1), Cell(1, 1), Cell(2, 1), Cell(2, 2)],
    [Cell(1), Cell(1, 1), Cell(0, 2), Cell(1, 2)],
  ],
  .L: [
    [Cell(2), Cell(0, 1), Cell(1, 1), Cell(2, 1)],
    [Cell(1), Cell(1, 1), Cell(1, 2), Cell(2, 2)],
    [Cell(0, 1), Cell(1, 1), Cell(2, 1), Cell(0, 2)],
    [Cell(), Cell(1), Cell(1, 1), Cell(1, 2)],
  ],
};

final colors = <PieceType, COLORREF>{
  .I: Colors.cyan,
  .O: Colors.yellow,
  .T: Colors.purple,
  .S: Colors.green,
  .Z: Colors.red,
  .J: Colors.blue,
  .L: Colors.orange,
};
