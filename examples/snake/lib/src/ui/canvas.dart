import 'dart:ffi';

import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:win32/win32.dart';

import '../core/cell.dart';
import '../core/game.dart';
import '../win32/win32_colors.dart';

class Canvas {
  Canvas(this.hdc) : _rect = adaptiveCalloc<RECT>() {
    SetTextColor(hdc, Colors.white);
    SetBkColor(hdc, Colors.panelGray);
    SetBkMode(hdc, TRANSPARENT);

    // Pre-create brushes.
    for (final color in Colors.all) {
      _brushes[color] = Colors.brush(color);
    }
  }

  final HDC hdc;
  final Pointer<RECT> _rect;
  final _brushes = <COLORREF, HBRUSH>{};

  static const cellSize = 25;
  static const sidePanelWidth = 7;

  void dispose() {
    for (final brush in _brushes.values) {
      brush.close();
    }
    free(_rect);
  }

  void repaint(Game game) {
    final boardW = game.boardWidth * cellSize;
    final boardH = game.boardHeight * cellSize;
    const panelW = sidePanelWidth * cellSize;

    // Fill background and panel.
    _fill(0, 0, boardW, boardH, Colors.background);
    _fill(boardW, 0, panelW, boardH, Colors.panelGray);

    // Draw game elements.
    _drawFood(game.food.position.x, game.food.position.y);
    _drawSnake(game.snake.body);
    _drawSidePanel(game, boardW);

    if (game.isGameOver) _drawGameOver(boardW, boardH);
    if (game.isPaused) _drawPause(boardW, boardH);
  }

  void _drawSnake(List<Cell> body) {
    // Draw body segments.
    for (var i = 0; i < body.length; i++) {
      final segment = body[i];
      final color = i == 0 ? Colors.snakeHead : Colors.snakeBody;
      _drawSimpleCell(segment.x, segment.y, color);
    }
  }

  void _drawFood(int x, int y) {
    _drawSimpleCell(x, y, Colors.food);
  }

  void _drawSimpleCell(int x, int y, COLORREF color) {
    final px = x * cellSize + 2;
    final py = y * cellSize + 2;
    _fill(px, py, cellSize - 4, cellSize - 4, color);
  }

  void _drawSidePanel(Game game, int boardW) {
    _text('Length: ${game.length}', boardW + 30, 30);
  }

  void _drawGameOver(int bw, int bh) {
    const w = 10 * cellSize;
    const h = 5 * cellSize;
    final x = (bw - w) ~/ 2;
    final y = (bh - h) ~/ 2;
    _fill(x, y, w, h, Colors.overlay);
    _text('GAME OVER', x + 70, y + cellSize);
    _text('Press ENTER to restart', x + 30, y + 3 * cellSize);
  }

  void _drawPause(int bw, int bh) {
    const w = 10 * cellSize;
    const h = 5 * cellSize;
    final x = (bw - w) ~/ 2;
    final y = (bh - h) ~/ 2;
    _fill(x, y, w, h, Colors.overlay);
    _text('GAME PAUSED', x + 65, y + cellSize);
    _text('Press PAUSE to continue', x + cellSize, y + 3 * cellSize);
  }

  void _fill(int x, int y, int w, int h, COLORREF color) {
    final brush = _getBrush(color);
    final old = SelectObject(hdc, HGDIOBJ(brush));
    _rect.ref
      ..left = x
      ..top = y
      ..right = x + w
      ..bottom = y + h;
    FillRect(hdc, _rect, brush);
    SelectObject(hdc, old);
  }

  void _text(String text, int x, int y) {
    final lpString = text.toPcwstr();
    TextOut(hdc, x, y, lpString, text.length);
    free(lpString);
  }

  HBRUSH _getBrush(COLORREF color) => _brushes[color] ??= Colors.brush(color);
}
