import 'package:win32/win32.dart';

/// Strongly-typed Win32 color utilities.
///
/// All exposed colors are valid COLORREF values (0x00BBGGRR).
abstract final class Colors {
  static final COLORREF background = RGB(0x20, 0x20, 0x40);
  static final COLORREF panelGray = RGB(0x30, 0x30, 0x60);
  static final COLORREF overlay = RGB(0x28, 0x28, 0x28);
  static final COLORREF nextBoxBg = RGB(0x14, 0x14, 0x14);
  static final COLORREF border = RGB(0xB0, 0xB0, 0xB0);
  static final COLORREF white = RGB(0xFF, 0xFF, 0xFF);
  static final COLORREF cyan = RGB(0x40, 0xE0, 0xFF); // I
  static final COLORREF yellow = RGB(0xFF, 0xE0, 0x40); // O
  static final COLORREF purple = RGB(0xC0, 0x40, 0xFF); // T
  static final COLORREF green = RGB(0x40, 0xFF, 0x60); // S
  static final COLORREF red = RGB(0xFF, 0x40, 0x40); // Z
  static final COLORREF blue = RGB(0x40, 0x60, 0xFF); // J
  static final COLORREF orange = RGB(0xFF, 0x90, 0x40); // L

  static final all = <COLORREF>[
    background,
    panelGray,
    overlay,
    nextBoxBg,
    border,
    white,
    cyan,
    yellow,
    purple,
    green,
    red,
    blue,
    orange,
  ];

  /// Create a Win32 brush from a COLORREF.
  static HBRUSH brush(COLORREF color) => CreateSolidBrush(color);

  static COLORREF lighten(COLORREF color, [int amount = 40]) {
    final (r, g, b) = _extract(color);
    return RGB(_clamp(r + amount), _clamp(g + amount), _clamp(b + amount));
  }

  static COLORREF darken(COLORREF color, [int amount = 40]) {
    final (r, g, b) = _extract(color);
    return RGB(_clamp(r - amount), _clamp(g - amount), _clamp(b - amount));
  }

  /// Extract RGB from Win32 COLORREF (0x00BBGGRR)
  static (int r, int g, int b) _extract(COLORREF color) {
    final r = color & 0xFF;
    final g = (color >> 8) & 0xFF;
    final b = (color >> 16) & 0xFF;
    return (r, g, b);
  }

  static int _clamp(int v) => v < 0 ? 0 : (v > 255 ? 255 : v);
}
