import 'dart:math' as math;

import 'cell.dart';

class Food {
  Food(this._boardWidth, this._boardHeight, [math.Random? rng])
    : _rng = rng ?? math.Random(),
      _position = const Cell() {
    respawn([]);
  }

  final int _boardWidth;
  final int _boardHeight;
  final math.Random _rng;
  Cell _position;

  Cell get position => _position;

  void respawn(List<Cell> occupiedCells) {
    // Find a random empty position.
    var attempts = 0;
    const maxAttempts = 1000;

    while (attempts < maxAttempts) {
      final x = _rng.nextInt(_boardWidth);
      final y = _rng.nextInt(_boardHeight);
      final cell = Cell(x, y);

      if (!occupiedCells.contains(cell)) {
        _position = cell;
        return;
      }

      attempts++;
    }

    // Fallback: find first available cell.
    for (var y = 0; y < _boardHeight; y++) {
      for (var x = 0; x < _boardWidth; x++) {
        final cell = Cell(x, y);
        if (!occupiedCells.contains(cell)) {
          _position = cell;
          return;
        }
      }
    }
  }
}
