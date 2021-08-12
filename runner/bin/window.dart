import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' ;

import 'native_app.dart';
import 'tools.dart' as tools;

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

  tools.Size get size => throw UnimplementedError();


  tools.Rect get rect {
    //   RECT frame;
    //   GetClientRect(window_handle_, &frame);
    //   return frame;
     throw UnimplementedError();
  }

  int _childContent = 0;

  int get childContent => _childContent;

  set childContent(int child) {
    SetParent(child, hWnd);
    final rect = this.rect;
    MoveWindow(
      child,
      rect.left,
      rect.top,
      rect.right - rect.left,
      rect.bottom - rect.top,
      TRUE,
    );
    SetFocus(child);
    _childContent = child;
  }
}
