part of 'native_app.dart';

class NativeWindow {
  late final int hWnd;

  NativeWindow() {
    hWnd = _createWindowHidden();
    _windows[hWnd] = this;
  }

  @protected
  bool wndProc(int hWnd, int uMsg, int wParam, int lParam) {
    switch(uMsg) {
      case WM_CLOSE:
        _windows.remove(hWnd);
        DestroyWindow(hWnd);
        return true;

      case WM_PAINT:
        final ps = calloc<PAINTSTRUCT>();
        final rect = calloc<RECT>();
        try {
          GetClientRect(hWnd, rect);
          final hdc = BeginPaint(hWnd, ps);
          FillRect(hdc, rect, COLOR_WINDOW);
          EndPaint(hWnd, ps);
        } finally {
          free(ps);
          free(rect);
        }
        return true;
    }
    return false;
  }

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

  tools.Size get size {
    ThrowUnimplemented.throwIfOn();
    return tools.Size(0, 0);
  }

  tools.Rect get rect {
    //   RECT frame;
    //   GetClientRect(window_handle_, &frame);
    //   return frame;
     ThrowUnimplemented.throwIfOn();
     return tools.Rect(0, 0, 0, 0);
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
