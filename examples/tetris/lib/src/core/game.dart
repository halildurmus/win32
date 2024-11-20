import 'package:win32/win32.dart';

import 'board.dart';
import 'piece.dart';
import 'piece_randomizer.dart';

class Game {
  Game({
    this.boardWidth = 10,
    this.boardHeight = 20,
    this.drawGhostPiece = true,
  }) : _board = Board(boardWidth, boardHeight),
       _randomizer = PieceRandomizer(),
       _score = 0,
       _level = 0,
       _linesCleared = 0,
       _isGameOver = false,
       _gravityCounter = 0 {
    _activePiece = _spawnPiece(boardWidth);
    _nextPiece = _spawnPiece(boardWidth);
  }

  final int boardWidth;
  final int boardHeight;
  final bool drawGhostPiece;

  Board _board;
  final PieceRandomizer _randomizer;
  late Piece _activePiece;
  late Piece _nextPiece;

  var _gravityCounter = 0;
  var _score = 0;
  var _level = 0;
  var _linesCleared = 0;
  var _isPaused = false;
  var _isGameOver = false;

  List<List<COLORREF>> get grid => _board.cells;
  Piece get activePiece => _activePiece;
  Piece get nextPiece => _nextPiece;

  int get score => _score;
  int get level => _level;
  int get linesCleared => _linesCleared;
  bool get isPaused => _isPaused;
  bool get isGameOver => _isGameOver;

  void restart() {
    _board = Board(boardWidth, boardHeight);
    _activePiece = _spawnPiece(boardWidth);
    _nextPiece = _spawnPiece(boardWidth);
    _gravityCounter = 0;
    _score = 0;
    _level = 0;
    _linesCleared = 0;
    _isGameOver = false;
    _isPaused = false;
  }

  void pauseGame() {
    if (!_isGameOver) _isPaused = true;
  }

  void resumeGame() {
    if (!_isGameOver) _isPaused = false;
  }

  void tick() {
    if (_isPaused || _isGameOver) return;

    if (++_gravityCounter < _gravityDelay) return;
    _gravityCounter = 0;

    _stepDown();
  }

  Piece get ghostPiece {
    var ghost = _activePiece.copyWith();
    while (true) {
      final next = ghost.copyWith(y: ghost.y + 1);
      if (!_board.fits(next)) return ghost;
      ghost = next;
    }
  }

  Piece _spawnPiece(int boardWidth) =>
      Piece(_randomizer.next(), (boardWidth - 4) ~/ 2, -2, 0);

  void hardDrop() {
    if (_isPaused || _isGameOver) return;

    while (_canMove(dy: 1)) {
      _activePiece.y++;
    }

    _lockAndAdvance();
    _gravityCounter = 0;
  }

  void rotate() {
    if (_isPaused || _isGameOver) return;

    final rotated = _activePiece.rotated();
    if (_board.fits(rotated)) {
      _activePiece = rotated;
    }
  }

  bool canMove({int dx = 0, int dy = 0}) {
    if (_isPaused || _isGameOver) return false;
    return _canMove(dx: dx, dy: dy);
  }

  bool _canMove({int dx = 0, int dy = 0}) {
    for (final c in _activePiece.cells) {
      if (_board.isBlocked(c.x + dx, c.y + dy)) return false;
    }
    return true;
  }

  void _stepDown() {
    if (_canMove(dy: 1)) {
      _activePiece.y++;
    } else {
      _lockAndAdvance();
    }
  }

  void _lockAndAdvance() {
    final toppedOut = _board.isAboveCeiling(_activePiece);
    if (toppedOut) {
      _isGameOver = true;
      return;
    }

    _board.lock(_activePiece);

    final cleared = _board.clearLines();
    if (cleared > 0) {
      _linesCleared += cleared;
      _updateLevel();
      _addScore(cleared);
    }

    _spawnNext();
  }

  void _spawnNext() {
    _activePiece = _nextPiece;
    _nextPiece = _spawnPiece(boardWidth);
  }

  void _updateLevel() {
    _level = _linesCleared ~/ 10;
  }

  void _addScore(int cleared) {
    final base = switch (cleared) {
      1 => 40,
      2 => 100,
      3 => 300,
      4 => 1200,
      _ => 0,
    };

    _score += base * (_level + 1);
  }

  int get _gravityDelay {
    if (_level <= 8) return 15 - _level;
    if (_level == 9) return 6;
    if (_level <= 12) return 5;
    if (_level <= 15) return 4;
    if (_level <= 18) return 3;
    if (_level <= 28) return 2;
    return 1;
  }
}
