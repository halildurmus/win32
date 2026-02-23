import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:win32/win32.dart';

import 'app.dart';
import 'resources.dart';

class Win32Window {
  Win32Window({required this.title, this.width = 1280, this.height = 720})
    : _hInstance = HINSTANCE(GetModuleHandle(null).value),
      _hIcon = _loadIcon(),
      _hMenu = AppResources.createMainMenu(),
      _hMenuEdit = HMENU(Pointer.fromAddress(1)),
      _hAccel = AppResources.createAccelerators(),
      _messageFindReplace = using(
        (arena) => RegisterWindowMessage(arena.pcwstr(FINDMSGSTRING)).value,
      ) {
    _wndProc = NativeCallable<WNDPROC>.isolateLocal(
      _windowProc,
      exceptionalReturn: 0,
    );
    _className = 'DartNoteWindow'.toPcwstr();
    _registerClass();
    _hWnd = _createWindow();
    _windowRegistry[_hWnd] = this;
    _hWndEdit = _createEditControl(_hInstance, _hWnd, _hMenuEdit);
    _app = App(_hInstance, _hWnd, _hWndEdit, _hIcon);
    _app.editor.updateTitle();
  }

  final String title;
  final int width;
  final int height;
  final HINSTANCE _hInstance;
  final HICON _hIcon;
  final HMENU _hMenu;
  final HMENU _hMenuEdit;
  final HACCEL _hAccel;
  final int _messageFindReplace;

  late final PCWSTR _className;
  late final HWND _hWnd;
  late final HWND _hWndEdit;
  late final NativeCallable<WNDPROC> _wndProc;
  late final App _app;

  static final _windowRegistry = <HWND, Win32Window>{};

  void show() {
    ShowWindow(_hWnd, SW_SHOWNORMAL);
    UpdateWindow(_hWnd);
  }

  void messageLoop() {
    final msg = adaptiveCalloc<MSG>();
    while (GetMessage(msg, null, 0, 0).value) {
      if (TranslateAccelerator(_hWnd, _hAccel, msg).value == FALSE) {
        TranslateMessage(msg);
        DispatchMessage(msg);
      }
    }
    _app.dispose();
    free(msg);
    _wndProc.close();
    UnregisterClass(_className, _hInstance);
    free(_className);
    _windowRegistry.remove(_hWnd);
    _hIcon.close();
  }

  void _registerClass() => using((arena) {
    final wc = arena<WNDCLASS>();
    wc.ref
      ..lpfnWndProc = _wndProc.nativeFunction
      ..hInstance = _hInstance
      ..hCursor = LoadCursor(null, IDC_ARROW).value
      ..hIcon = HICON(_hIcon)
      ..hbrBackground = HBRUSH(GetStockObject(WHITE_BRUSH))
      ..lpszClassName = PWSTR(_className)
      ..style = CS_HREDRAW | CS_VREDRAW;
    final Win32Result(:value, :error) = RegisterClass(wc);
    if (value == 0) throw WindowsException(error.toHRESULT());
  });

  HWND _createWindow() => using((arena) {
    final RECT(:left, :top, :right, :bottom) = _getWindowCenterRect(
      windowWidth: width,
      windowHeight: height,
    );
    final Win32Result(value: hWnd, :error) = CreateWindowEx(
      WS_EX_LEFT,
      _className,
      arena.pcwstr(title),
      WS_OVERLAPPEDWINDOW,
      left,
      top,
      right,
      bottom,
      null,
      _hMenu,
      _hInstance,
      null,
    );
    if (hWnd.isNull) throw WindowsException(error.toHRESULT());
    return hWnd;
  });
}

RECT _getWindowCenterRect({
  required int windowWidth,
  required int windowHeight,
}) {
  final screenWidth = GetSystemMetrics(SM_CXFULLSCREEN);
  final screenHeight = GetSystemMetrics(SM_CYFULLSCREEN);
  final x = (screenWidth - windowWidth) ~/ 2;
  final y = (screenHeight - windowHeight) ~/ 2;
  return Struct.create()
    ..left = x
    ..top = y
    ..right = windowWidth
    ..bottom = windowHeight;
}

int _windowProc(Pointer hWnd, int uMsg, int wParam, int lParam) {
  final hwnd = HWND(hWnd);
  switch (uMsg) {
    case WM_CREATE:
      DragAcceptFiles(hwnd, true);
      return 0;

    case WM_SETFOCUS:
      final window = Win32Window._windowRegistry[hwnd]!;
      window._app.focusEditor();
      return 0;

    case WM_SIZE:
      final clientWidth = LOWORD(lParam);
      final clientHeight = HIWORD(lParam);
      final window = Win32Window._windowRegistry[hwnd]!;
      window._app.resize(clientWidth, clientHeight);
      return 0;

    case WM_INITMENUPOPUP:
      final window = Win32Window._windowRegistry[hwnd]!;
      return _handleInitMenuPopup(
        window._app,
        window._hWndEdit,
        .new(wParam),
        .new(lParam),
      );

    case WM_COMMAND:
      final window = Win32Window._windowRegistry[hwnd]!;
      return _handleCommand(
        window._app,
        window._hWndEdit,
        window._hMenuEdit,
        .new(wParam),
        .new(lParam),
      );

    case WM_DROPFILES:
      final window = Win32Window._windowRegistry[hwnd]!;
      final hdrop = HDROP(Pointer.fromAddress(wParam));
      return _handleDropFiles(window._app, hdrop);

    case WM_CLOSE:
      final window = Win32Window._windowRegistry[hwnd]!;
      if (window._app.canClose) DestroyWindow(hwnd);
      return 0;

    case WM_QUERYENDSESSION:
      final window = Win32Window._windowRegistry[hwnd]!;
      if (window._app.canClose) return TRUE;
      return 0;

    case WM_DESTROY:
      PostQuitMessage(0);
      return 0;

    default:
      final window = Win32Window._windowRegistry[hwnd];
      if (window != null && uMsg == window._messageFindReplace) {
        return window._app.handleDialogMessage(hwnd, uMsg, .new(lParam));
      }
  }

  return DefWindowProc(hwnd, uMsg, .new(wParam), .new(lParam));
}

/// Creates the edit control for text editing.
HWND _createEditControl(HINSTANCE hInstance, HWND hWnd, HMENU hMenuEdit) =>
    using((arena) {
      final Win32Result(:value, :error) = CreateWindowEx(
        WS_EX_CLIENTEDGE,
        arena.pcwstr('edit'),
        null,
        WS_CHILD |
            WS_VISIBLE |
            WS_VSCROLL |
            WS_HSCROLL |
            ES_MULTILINE |
            ES_AUTOVSCROLL |
            ES_AUTOHSCROLL |
            ES_NOHIDESEL,
        0,
        0,
        0,
        0,
        hWnd,
        hMenuEdit,
        hInstance,
        nullptr,
      );
      if (value.isNull) throw WindowsException(error.toHRESULT());
      SendMessage(value, EM_LIMITTEXT, const .new(0x7FFFFFFF), null);
      return value;
    });

int _handleInitMenuPopup(App app, HWND hWndEdit, WPARAM wParam, LPARAM lParam) {
  switch (lParam) {
    case 1: // Edit menu
      final hMenu = HMENU(Pointer.fromAddress(wParam));

      // Enable Undo if edit control can do it.
      EnableMenuItem(
        hMenu,
        IDM_EDIT_UNDO,
        SendMessage(hWndEdit, EM_CANUNDO, null, null).value != FALSE
            ? MF_ENABLED
            : MF_GRAYED,
      );

      // Enable Paste if clipboard contains text.
      EnableMenuItem(
        hMenu,
        IDM_EDIT_PASTE,
        IsClipboardFormatAvailable(CF_TEXT).value ? MF_ENABLED : MF_GRAYED,
      );

      // Enable Cut / Copy / Clear if there is a selection.
      final menuStyle = app.editor.hasSelection ? MF_ENABLED : MF_GRAYED;
      EnableMenuItem(hMenu, IDM_EDIT_CUT, menuStyle);
      EnableMenuItem(hMenu, IDM_EDIT_COPY, menuStyle);
      EnableMenuItem(hMenu, IDM_EDIT_DELETE, menuStyle);

      // Enable Find / Find Next / Replace depending on whether there is text.
      final hasText = app.document.isDirty || app.document.hasText;
      final menuStyle2 = hasText ? MF_ENABLED : MF_GRAYED;
      EnableMenuItem(hMenu, IDM_EDIT_FIND, menuStyle2);
      EnableMenuItem(hMenu, IDM_EDIT_NEXT, menuStyle2);
      EnableMenuItem(hMenu, IDM_EDIT_PREVIOUS, menuStyle2);
      EnableMenuItem(hMenu, IDM_EDIT_REPLACE, menuStyle2);
  }
  return 0;
}

int _handleCommand(
  App app,
  HWND hWndEdit,
  HMENU hMenuEdit,
  WPARAM wParam,
  LPARAM lParam,
) {
  // Edit control notifications.
  if (lParam == hWndEdit.address && (LOWORD(wParam) == hMenuEdit.address)) {
    switch (HIWORD(wParam)) {
      case EN_UPDATE:
        app.onEditUpdate();
        return 0;

      case EN_ERRSPACE:
      case EN_MAXTEXT:
        app.onEditError();
        return 0;
    }
  }

  // Menu / accelerator commands.
  return app.onCommand(LOWORD(wParam));
}

int _handleDropFiles(App app, HDROP hDrop) => using((arena) {
  try {
    // Get the number of files dropped.
    final count = DragQueryFile(hDrop, 0xFFFFFFFF, null, 0);
    if (count > 0) {
      // Get the first file path.
      final buffer = arena.pwstrBuffer(MAX_PATH);
      DragQueryFile(hDrop, 0, buffer, MAX_PATH);
      final path = buffer.toDartString();
      app.openFile(path);
    }
    return 0;
  } finally {
    DragFinish(hDrop);
  }
});

HICON _loadIcon() {
  var iconPath = _iconPath;
  if (!File(iconPath).existsSync()) {
    iconPath = iconPath.replaceFirst('dart.ico', r'resources\dart.ico');
  }
  return HICON(
    using(
      (arena) => LoadImage(
        null,
        arena.pcwstr(iconPath),
        IMAGE_ICON,
        0,
        0,
        LR_LOADFROMFILE | LR_DEFAULTSIZE,
      ).value,
    ),
  );
}

final String _iconPath = Platform.script.toFilePath().replaceFirst(
  RegExp(r'[^\\]+$'),
  'dart.ico',
);
