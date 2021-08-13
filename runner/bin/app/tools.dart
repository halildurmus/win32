import 'dart:ffi';

import 'package:win32/win32.dart';

class Rect {
  final int left;
  final int top;
  final int right;
  final int bottom;

  Rect(this.left, this.top, this.right, this.bottom);

  factory Rect.fromAddress(int address) {
    final pRect = Pointer<RECT>.fromAddress(address);
    return  Rect.fromPRect(pRect);

  }

  factory Rect.fromPRect(Pointer<RECT> pRect) {
    final ref = pRect.ref;
    return Rect(ref.left, ref.top, ref.right, ref.bottom);
  }

  int get width => right - left;
  int get height => bottom - top;

  Size get size => Size(width, height);

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

// todo: add to win32 package
// #if(WINVER >= 0x0601)
const  WM_DPICHANGED         =          0x02E0;
// #endif /* WINVER >= 0x0601 */


