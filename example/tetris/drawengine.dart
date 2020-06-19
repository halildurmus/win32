import 'dart:ffi';
import 'package:win32/win32.dart';

import 'piece.dart';

class DrawEngine {
  /// handle to DC
  int hdc;

  /// handle to window
  int hwnd;

  /// rectangle for drawing
  final rect = RECT.allocate();

  /// level width
  int width;

  /// level height
  int height;

  /// Initiate the DrawEngine
  DrawEngine(int hdc, int hwnd,
      [int pxPerBlock = 25, int width = 10, int height = 20])
      : hdc = hdc,
        hwnd = hwnd,
        width = width,
        height = height {
    GetClientRect(hwnd, rect.addressOf);

    SaveDC(hdc);

    // Set up coordinate system
    SetMapMode(hdc, MM_ISOTROPIC);
    SetViewportExtEx(hdc, pxPerBlock, pxPerBlock, nullptr);
    SetWindowExtEx(hdc, 1, -1, nullptr);
    SetViewportOrgEx(hdc, 0, rect.bottom, nullptr);

    // Set default colors
    SetTextColor(hdc, RGB(255, 255, 255));
    SetBkColor(hdc, RGB(70, 70, 70));
    SetBkMode(hdc, TRANSPARENT);
  }

  void drawBlock(int x, int y, int color) {
    var hBrush = CreateSolidBrush(color);
    rect.left = x;
    rect.right = x + 1;
    rect.top = y;
    rect.bottom = y + 1;

    FillRect(hdc, rect.addressOf, hBrush);

    // Draw left and bottom black border
    MoveToEx(hdc, x, y + 1, nullptr);
    LineTo(hdc, x, y);
    LineTo(hdc, x + 1, y);
    DeleteObject(hBrush);
  }

  void drawInterface() {
    var hBrush = CreateSolidBrush(RGB(70, 70, 70));
    rect.top = height;
    rect.left = width;
    rect.bottom = 0;
    rect.right = width + 8;
    FillRect(hdc, rect.addressOf, hBrush);
    DeleteObject(hBrush);
  }

  void drawText(String text, int x, int y) {
    TextOut(hdc, x, y, TEXT(text), text.length);
  }

  void drawScore(int score, int x, int y) {
    var scoreText = 'Score: $score';
    SetBkMode(hdc, OPAQUE);
    TextOut(hdc, x, y, TEXT(scoreText), scoreText.length);
    SetBkMode(hdc, TRANSPARENT);
  }

  void drawSpeed(int speed, int x, int y) {
    var speedText = 'Speed: $speed';
    SetBkMode(hdc, OPAQUE);
    TextOut(hdc, x, y, TEXT(speedText), speedText.length);
    SetBkMode(hdc, TRANSPARENT);
  }

  void drawNextPiece(Piece piece, int x, int y) {
    var nextText = 'Next:';
    TextOut(hdc, x, y + 5, TEXT(nextText), nextText.length);
    var color = piece.color;

    // Draw the piece in a 4x4 square area
    for (var i = 0; i < 4; i++) {
      for (var j = 0; j < 4; j++) {
        if (piece.isPointExists(i, j)) {
          drawBlock(i + x, j + y, color);
        } else {
          drawBlock(i + x, j + y, RGB(0, 0, 0));
        }
      }
    }
  }
}
