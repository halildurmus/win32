import 'dart:math' as math;

import 'cell.dart';
import 'direction.dart';

class Snake {
  Snake({required int startX, required int startY})
    : _body = [Cell(startX, startY)],
      _direction =
          Direction.values[math.Random().nextInt(Direction.values.length)],
      _nextDirection = .right;

  final List<Cell> _body;
  Direction _direction;
  Direction _nextDirection;

  List<Cell> get body => _body;
  Cell get head => _body.first;
  Direction get direction => _direction;

  void setDirection(Direction newDirection) {
    // Prevent reversing into itself.
    if (newDirection != _direction.opposite) {
      _nextDirection = newDirection;
    }
  }

  bool move() {
    _direction = _nextDirection;
    final (dx, dy) = _direction.delta;
    final newHead = Cell(head.x + dx, head.y + dy);
    _body
      ..insert(0, newHead)
      ..removeLast();
    return true;
  }

  void grow() {
    // Add the tail back (it will be in the position before the last move).
    final tail = _body.last;
    _body.add(tail);
  }

  bool checkSelfCollision() {
    final head = _body.first;
    for (var i = 1; i < _body.length; i++) {
      if (_body[i] == head) return true;
    }
    return false;
  }
}
