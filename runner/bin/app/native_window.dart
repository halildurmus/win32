part of 'native_app.dart';

enum WindowState { close, hide, minimize, stayOpen }

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
        _closeEvent();
        return true;

      case WM_PAINT:
        onPaint();
        return true;

      case WM_SIZE:
        onResize(LOWORD(lParam), HIWORD(lParam));
        return true;

      case WM_FONTCHANGE:
        onFontChange();
        return true;

      case WM_DPICHANGED:
        onDpiChange(Rect.fromAddress(lParam));
        return true;
    }
    return false;
  }

  @protected
  WindowState onClose() => WindowState.close;

  @protected
  void onPaint() {
    if (_childContent != 0) {
      return;
    }

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
  }

  @protected
  void onResize(int width, int height) {
    _childContentResize();
  }

  @protected
  void onFontChange() {}

  @protected
  void onDpiChange(Rect newWindowRect) {
    SetWindowPos(hWnd,
        NULL,
        newWindowRect.left,
        newWindowRect.top,
        newWindowRect.width,
        newWindowRect.height,
        SWP_NOZORDER | SWP_NOACTIVATE,
    );
  }

  void _closeEvent() {
    final closeAnswer = onClose();
    switch(closeAnswer){
      case WindowState.close:
        _windows.remove(hWnd);
        DestroyWindow(hWnd);
        break;
      case WindowState.hide:
        hide();
        break;
      case WindowState.minimize:
        minimize();
        break;
      case WindowState.stayOpen:
        break;
    }
  }

  void hide() {
    ShowWindowAsync(hWnd, SW_HIDE);
  }

  void show() {
    ShowWindowAsync(hWnd, SW_SHOW);
  }

  void minimize() {
    ShowWindowAsync(hWnd, SW_SHOWMINIMIZED);
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

  Size get size => rect.size;

  Rect get rect {
    final pRect = calloc<RECT>();
    try {
      GetClientRect(hWnd, pRect);
      return Rect.fromPRect(pRect);
    } finally {
      free(pRect);
    }
  }

  int _childContent = 0;

  int get childContent => _childContent;

  set childContent(int child) {
    SetParent(child, hWnd);
    //SetWindowLongPtr(child, GWL_STYLE, WS_POPUPWINDOW|WS_TABSTOP |WS_VISIBLE | WS_CHILD);
    _childContent = child;
    _childContentResize();
    SetFocus(child);
  }

  void _childContentResize() {
    if(_childContent == 0) {
      return;
    }

    final rect = this.rect;

    MoveWindow(
      _childContent,
      rect.left,
      rect.top,
      rect.width,
      rect.height,
      TRUE,
    );

    // SetFocus(_childContent);
    // SetActiveWindow(_childContent);
    // UpdateWindow(_childContent);
  }
}
