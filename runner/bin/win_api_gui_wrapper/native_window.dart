part of 'native_app.dart';

enum WindowState { close, hide, minimize, stayOpen }

class NativeWindow {
  late final int hWnd;

  NativeWindow() {
    final thisAddress = hashCode;
    _winCtorStack[thisAddress] = this;
    hWnd = _createWindowHidden(thisAddress);
  }

  @protected
  int wndProc(int hWnd, int uMsg, int wParam, int lParam) {
    switch(uMsg) {

      case WM_CLOSE:
        _closeEvent();
        return 0;

      case WM_PAINT:
        onPaint();
        return 0;

      case WM_SIZE:
        onResize(LOWORD(lParam), HIWORD(lParam));
        return 0;

      case WM_FONTCHANGE:
        onFontChange();
        return 0;

      case WM_DPICHANGED:
        onDpiChange(Rect.fromAddress(lParam));
        return 0;

      case WM_SHOWWINDOW:
        onShow();
        return 0;
    }
    return 0;
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

  @protected
  void onShow() {}

  @protected
  void onCreate() {}

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

  void centredOfScreen() {
    final thisScreenRect = screenRect;
    screenRect = centredOfScreenRect(
      thisScreenRect.width,
      thisScreenRect.height,
    );
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

  Rect get screenRect {
    final pRect = calloc<RECT>();
    try {
      GetWindowRect(hWnd, pRect);
      return Rect.fromPRect(pRect);
    } finally {
      free(pRect);
    }
  }

  set screenRect(Rect newRect) {
    SetWindowPos(hWnd,
      NULL,
      newRect.left,
      newRect.top,
      newRect.width,
      newRect.height,
      SWP_NOZORDER | SWP_NOACTIVATE,
    );
  }

  Size get size {
    final pRect = calloc<RECT>();
    try {
      GetClientRect(hWnd, pRect);
      return Rect.fromPRect(pRect).size;
    } finally {
      free(pRect);
    }
  }

  set size(Size newSize) {
    final screen = screenRect;
    MoveWindow(
      hWnd,
      screen.left, screen.top,
      newSize.width, newSize.height,
      TRUE,
    );
  }

  int _childContent = 0;

  int get childContent => _childContent;

  set childContent(int child) {
    SetParent(child, hWnd);
    //SetWindowLongPtr(child, GWL_STYLE, WS_VISIBLE | WS_CHILD);
    _childContent = child;
    _childContentResize();
    // SetFocus(child);
  }

  void _childContentResize() {
    if(_childContent == 0) {
      return;
    }

    final thisSize = size;
    MoveWindow(
      _childContent,
      0,
      0,
      thisSize.width,
      thisSize.height,
      TRUE,
    );
  }
}
