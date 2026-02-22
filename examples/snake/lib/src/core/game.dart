import 'dart:math' as math;

import 'cell.dart';
import 'direction.dart';
import 'food.dart';
import 'snake.dart';

class Game {
  Game({this.boardWidth = 20, this.boardHeight = 20})
    : _snake = Snake(startX: 10, startY: 10),
      _food = Food(boardWidth, boardHeight),
      _length = 1,
      _isGameOver = false,
      _isPaused = false,
      _moveCounter = 0 {
    _food.respawn(_snake.body);
  }

  final int boardWidth;
  final int boardHeight;

  Snake _snake;
  Food _food;
  int _length;
  bool _isGameOver;
  bool _isPaused;
  int _moveCounter;

  Snake get snake => _snake;
  Food get food => _food;
  int get length => _length;
  bool get isGameOver => _isGameOver;
  bool get isPaused => _isPaused;

  void restart() {
    _snake = Snake(startX: 10, startY: 10);
    _food = Food(boardWidth, boardHeight);
    _food.respawn(_snake.body);
    _length = 1;
    _isGameOver = false;
    _isPaused = false;
    _moveCounter = 0;
  }

  void pauseGame() {
    if (!_isGameOver) _isPaused = true;
  }

  void resumeGame() {
    if (!_isGameOver) _isPaused = false;
  }

  void tick() {
    if (_isPaused || _isGameOver) return;

    if (++_moveCounter < _moveFrameDelay) return;
    _moveCounter = 0;

    _stepForward();
  }

  void setDirection(Direction direction) {
    if (_isPaused || _isGameOver) return;
    _snake.setDirection(direction);
  }

  void _stepForward() {
    _snake.move();

    final head = _snake.head;

    // Check wall collision.
    if (!_isInBoundsCell(head)) {
      _isGameOver = true;
      return;
    }

    // Check self collision.
    if (_snake.checkSelfCollision()) {
      _isGameOver = true;
      return;
    }

    // Check food collision.
    if (head == _food.position) {
      _snake.grow();
      _length++;
      _food.respawn(_snake.body);
    }
  }

  bool _isInBounds(int x, int y) =>
      x >= 0 && x < boardWidth && y >= 0 && y < boardHeight;

  bool _isInBoundsCell(Cell cell) => _isInBounds(cell.x, cell.y);

  int get _moveFrameDelay {
    final currentMs = (_startDelayMs * math.pow(_decayPerSegment, _length))
        .clamp(_minDelayMs, _startDelayMs);
    return (currentMs / _tickMs).round().clamp(1, 10);
  }

  static const _tickMs = 50;
  static const _startDelayMs = 150;
  static const _minDelayMs = 60;
  static const _decayPerSegment = .985;
}
