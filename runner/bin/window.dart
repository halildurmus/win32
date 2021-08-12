import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'native_app.dart';

class Window extends NativeWindow {
  void show() {
    ShowWindowAsync(hWnd, SW_SHOW);
  }

  String get title {
    final pTitle = calloc.allocate<Utf16>(256*2);
    try {
      GetWindowText(hWnd, pTitle, 256);
      return pTitle.toDartString();
    } finally {
      free(pTitle);
    }
  }

  set title(String newTitle) {
    final pTitle = newTitle.toNativeUtf16();
    try {
      SetWindowText(hWnd, pTitle);
    } finally {
      free(pTitle);
    }
  }

}
