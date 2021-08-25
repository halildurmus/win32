import 'dart:ffi';

import 'package:win32/win32.dart';

import '../../lib/flutter_runner.dart';

void main() {
  Window()
    ..text = 'Paint'
    ..size = Size(640, 480)
    ..center()
    ..show();

  NativeApp.run();
}

class Window extends NativeWindow {
  @override
  void onPaint(int hdc, Pointer<RECT> pRect) {
    super.onPaint(hdc, pRect);

    final thisSize = rect.size;
    final x = thisSize.width ~/ 2 - 100;
    final y = thisSize.height ~/ 2 - 120;

    SelectObject(hdc, GetStockObject(GRAY_BRUSH));
    BeginPath(hdc);

    MoveToEx(hdc, x + 40, y + 20, nullptr);
    LineTo(hdc, x + 180, y + 160);
    LineTo(hdc, x + 160, y + 180);
    LineTo(hdc, x + 20, y + 40);
    LineTo(hdc, x + 40, y + 20);

    MoveToEx(hdc, x + 20, y + 160, nullptr);
    LineTo(hdc, x + 160, y + 20);
    LineTo(hdc, x + 180, y + 40);
    LineTo(hdc, x + 40, y + 180);
    LineTo(hdc, x + 20, y + 160);

    EndPath(hdc);
    FillPath(hdc);
  }
}

final _gdi32 = DynamicLibrary.open('gdi32.dll');

final FillPath =
    _gdi32.lookupFunction<Int32 Function(Int32), int Function(int)>('FillPath');
