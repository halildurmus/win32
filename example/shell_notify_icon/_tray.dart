import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '_app.dart' as app;
import '_app.dart';
import '_menu.dart' as menu;

final _guid = Guid.generate().toNativeGUID();
final _nid = calloc<NOTIFYICONDATA>()..ref.cbSize = sizeOf<NOTIFYICONDATA>();

bool _trayWndProc(int hWnd, int msg, int wParam, int lParam) {
  final hWnd = _nid.ref.hWnd;
  switch (msg) {
    case app.EVENT_TRAY_NOTIFY:
      switch (LOWORD(lParam)) {
        case NIN_SELECT:
          ShowWindow(
              hWnd,
              IsWindowVisible(hWnd) == 1
                  ? SHOW_WINDOW_CMD.SW_HIDE
                  : SHOW_WINDOW_CMD.SW_SHOW);
          SetForegroundWindow(hWnd);
          return true;

        case WM_CONTEXTMENU:
          menu.show(hWndParent: hWnd);
          return true;
      }
  }
  return false;
}

void addIcon({required int hWndParent}) {
  final nid = _nid.ref
    ..hWnd = hWndParent
    ..uFlags = NOTIFY_ICON_DATA_FLAGS.NIF_ICON |
        NOTIFY_ICON_DATA_FLAGS.NIF_TIP |
        NOTIFY_ICON_DATA_FLAGS.NIF_MESSAGE |
        NOTIFY_ICON_DATA_FLAGS.NIF_SHOWTIP |
        NOTIFY_ICON_DATA_FLAGS.NIF_GUID
    ..szTip = 'Dart tray'
    ..uCallbackMessage = app.EVENT_TRAY_NOTIFY
    ..guidItem = _guid.ref
    ..hIcon = app.loadDartIcon();

  Shell_NotifyIcon(NOTIFY_ICON_MESSAGE.NIM_ADD, _nid);

  nid.uVersion = 4;
  Shell_NotifyIcon(NOTIFY_ICON_MESSAGE.NIM_SETVERSION, _nid);

  app.registerWndProc(_trayWndProc);
}

void removeIcon() {
  Shell_NotifyIcon(NOTIFY_ICON_MESSAGE.NIM_DELETE, _nid);
  free(_guid);
  free(_nid);
  app.deregisterWndProc(_trayWndProc);
  lpfnWndProc.close();
}
