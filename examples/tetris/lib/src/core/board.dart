import 'package:win32/win32.dart';

import 'piece.dart';

class Board {
  Board(this.boardWidth, this.boardHeight)
    : _cells = List.generate(
        boardHeight,
        (_) => List.filled(boardWidth, const COLORREF(0)),
      );

  final int boardWidth;
  final int boardHeight;

  final List<List<COLORREF>> _cells;

  List<List<COLORREF>> get cells => _cells;

  bool isAboveCeiling(Piece piece) {
    for (final c in piece.cells) {
      if (c.y < 0) return true;
    }
    return false;
  }

  bool isBlocked(int x, int y) {
    // Outside horizontal bounds is always solid.
    if (x < 0 || x >= boardWidth) return true;

    // Below the board is solid.
    if (y >= boardHeight) return true;

    // Above the board is empty (spawn + rotation space).
    if (y < 0) return false;

    return _cells[y][x] != 0;
  }

  bool fits(Piece piece) {
    for (final c in piece.cells) {
      if (isBlocked(c.x, c.y)) return false;
    }
    return true;
  }

  void lock(Piece piece) {
    for (final c in piece.cells) {
      // Ignore blocks above the board
      if (c.y < 0) continue;
      _cells[c.y][c.x] = piece.color;
    }
  }

  int clearLines() {
    var cleared = 0;
    for (var y = boardHeight - 1; y >= 0; y--) {
      if (_isFull(y)) {
        _collapseFrom(y);
        cleared++;
        y++;
      }
    }
    return cleared;
  }

  bool _isFull(int y) {
    for (var x = 0; x < boardWidth; x++) {
      if (_cells[y][x] == 0) return false;
    }
    return true;
  }

  void _collapseFrom(int row) {
    // Move rows down in-place (no new allocations).
    for (var y = row; y > 0; y--) {
      final src = _cells[y - 1];
      final dst = _cells[y];
      for (var x = 0; x < boardWidth; x++) {
        dst[x] = src[x];
      }
    }

    // Clear top row.
    final top = _cells[0];
    for (var x = 0; x < boardWidth; x++) {
      top[x] = const COLORREF(0);
    }
  }
}
