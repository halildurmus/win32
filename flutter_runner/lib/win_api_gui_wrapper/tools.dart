import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

class Rect {
  final int left;
  final int top;
  final int right;
  final int bottom;

  Rect(this.left, this.top, this.right, this.bottom);

  factory Rect.fromXYWH(int x, int y, int width, int height) {
    return Rect(x, y, x + width, y + height);
  }

  factory Rect.fromAddress(int address) {
    final pRect = Pointer<RECT>.fromAddress(address);
    return Rect.fromPRect(pRect);
  }

  factory Rect.fromPRect(Pointer<RECT> pRect) {
    final ref = pRect.ref;
    return Rect(ref.left, ref.top, ref.right, ref.bottom);
  }

  int get width => right - left;

  int get height => bottom - top;

  Size get size => Size(width, height);

  Pointer<RECT> toPRect() {
    final pRect = calloc<RECT>();
    pRect.ref
      ..bottom = bottom
      ..top = top
      ..right = right
      ..left = left;
    return pRect;
  }

  @override
  String toString() => 'Rect('
      'left: $left, top: $top, '
      'right: $right, bottom: $bottom)';
}

class Size {
  final int width;
  final int height;

  Size(this.width, this.height);
}

class Point {
  final int x;
  final int y;

  Point(this.x, this.y);
}

Rect centredOfScreenRect(int windowWidth, int windowHeight) {
  final screenWidth = GetSystemMetrics(SM_CXFULLSCREEN);
  final screenHeight = GetSystemMetrics(SM_CYFULLSCREEN);

  final x = (screenWidth - windowWidth) ~/ 2;
  final y = (screenHeight - windowHeight) ~/ 2;
  return Rect.fromXYWH(x, y, windowWidth, windowHeight);
}

// #if(WINVER >= 0x0601)
const WM_DPICHANGED = 0x02E0;
// #endif /* WINVER >= 0x0601 */
