import 'dart:ffi';

import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:win32/win32.dart';

import '../core/game.dart';
import '../core/piece.dart';
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

  static const cellSize = 30;
  static const sidePanelWidth = 6;

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

    _fill(0, 0, boardW, boardH, Colors.background);
    _fill(boardW, 0, panelW, boardH, Colors.panelGray);

    _drawBoard(game.grid);

    if (game.drawGhostPiece) {
      _drawGhostPiece(game.ghostPiece);
    }

    _drawPiece(game.activePiece);
    _drawSidePanel(game, boardW);

    if (game.isGameOver) _drawGameOver(boardW, boardH);
    if (game.isPaused) _drawPause(boardW, boardH);
  }

  void _drawBoard(List<List<COLORREF>> grid) {
    for (var y = 0; y < grid.length; y++) {
      for (var x = 0; x < grid[y].length; x++) {
        final color = grid[y][x];
        if (color != const COLORREF(0)) _drawCell(x, y, color);
      }
    }
  }

  void _drawPiece(Piece piece) {
    for (final c in piece.cells) {
      _drawCell(c.x, c.y, piece.color);
    }
  }

  void _drawGhostPiece(Piece piece) {
    for (final c in piece.cells) {
      _drawGhostCell(c.x, c.y, piece.color);
    }
  }

  void _drawCell(int x, int y, COLORREF color) {
    final px = x * cellSize;
    final py = y * cellSize;
    _fill(px, py, cellSize, cellSize, color);
    _fill(px, py, 1, cellSize, Colors.lighten(color));
    _fill(px, py, cellSize, 1, Colors.lighten(color));
    _fill(px + cellSize - 1, py, 1, cellSize, Colors.darken(color));
    _fill(px, py + cellSize - 1, cellSize, 1, Colors.darken(color));
  }

  void _drawGhostCell(int x, int y, COLORREF color) {
    final px = x * cellSize;
    final py = y * cellSize;

    final pen = CreatePen(PS_SOLID, 1, color);
    final old = SelectObject(hdc, HGDIOBJ(pen));

    const i = 1;
    MoveToEx(hdc, px + i, py + i, null);
    LineTo(hdc, px + cellSize - i, py + i);
    LineTo(hdc, px + cellSize - i, py + cellSize - i);
    LineTo(hdc, px + i, py + cellSize - i);
    LineTo(hdc, px + i, py + i);

    SelectObject(hdc, old);
    pen.close();
  }

  void _drawSidePanel(Game game, int boardW) {
    final x = boardW + 30;

    _text('Next:', x, 20);
    _drawNextBox(x, 50);
    _drawNext(game.nextPiece, x, 50);

    _text('Score: ${game.score}', x, 200);
    _text('Level: ${game.level}', x, 230);
    _text('Lines: ${game.linesCleared}', x, 260);
  }

  void _drawNextBox(int x, int y) {
    _fill(x, y, 4 * cellSize, 4 * cellSize, Colors.background);
    _stroke(x, y, 4 * cellSize, 4 * cellSize, Colors.nextBoxBg);
  }

  void _drawNext(Piece piece, int ox, int oy) {
    final cells = piece.cells;
    final minX = cells.map((c) => c.x).reduce((a, b) => a < b ? a : b);
    final minY = cells.map((c) => c.y).reduce((a, b) => a < b ? a : b);
    for (final c in cells) {
      _drawCell(
        (c.x - minX) + (ox ~/ cellSize),
        (c.y - minY) + (oy ~/ cellSize) + 2,
        piece.color,
      );
    }
  }

  void _drawGameOver(int bw, int bh) {
    const w = 8 * cellSize;
    const h = 5 * cellSize;
    final x = (bw - w) ~/ 2;
    final y = (bh - h) ~/ 2;

    _fill(x, y, w, h, Colors.overlay);
    _text('GAME OVER', x + 2 * cellSize, y + cellSize);
    _text('Press ENTER to restart', x + cellSize, y + h - 2 * cellSize);
  }

  void _drawPause(int bw, int bh) {
    const w = 8 * cellSize;
    const h = 6 * cellSize;
    final x = (bw - w) ~/ 2;
    final y = (bh - h) ~/ 2;

    _fill(x, y, w, h, Colors.overlay);
    _text('GAME PAUSED', x + 2 * cellSize, y + cellSize);
    _text('Press PAUSE again', x + cellSize, y + 3 * cellSize);
    _text('to continue', x + 2 * cellSize, y + 4 * cellSize);
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

  void _stroke(int x, int y, int w, int h, COLORREF color) {
    final pen = CreatePen(PS_SOLID, 1, color);
    final old = SelectObject(hdc, HGDIOBJ(pen));
    MoveToEx(hdc, x, y, null);
    LineTo(hdc, x + w, y);
    LineTo(hdc, x + w, y + h);
    LineTo(hdc, x, y + h);
    LineTo(hdc, x, y);
    SelectObject(hdc, old);
    pen.close();
  }

  void _text(String text, int x, int y) {
    final lpString = text.toPcwstr();
    TextOut(hdc, x, y, lpString, text.length);
    free(lpString);
  }

  HBRUSH _getBrush(COLORREF color) => _brushes[color] ??= Colors.brush(color);
}
