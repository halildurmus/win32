import 'package:win32/win32.dart';

/// Strongly-typed Win32 color utilities.
///
/// All exposed colors are valid COLORREF values (0x00BBGGRR).
abstract final class Colors {
  static final COLORREF background = RGB(0x1A, 0x1A, 0x2E);
  static final COLORREF panelGray = RGB(0x2D, 0x2D, 0x44);
  static final COLORREF overlay = RGB(0x28, 0x28, 0x28);
  static final COLORREF white = RGB(0xFF, 0xFF, 0xFF);
  static final COLORREF snakeHead = RGB(0x00, 0xE6, 0x76);
  static final COLORREF snakeBody = RGB(0x00, 0xB8, 0x5C);
  static final COLORREF food = RGB(0xFF, 0x3D, 0x3D);

  static final all = <COLORREF>[
    background,
    panelGray,
    overlay,
    white,
    snakeHead,
    snakeBody,
    food,
  ];

  /// Create a Win32 brush from a COLORREF.
  static HBRUSH brush(COLORREF color) => CreateSolidBrush(color);
}
