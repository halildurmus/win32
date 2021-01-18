import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '_app.dart' as app;
import '_menu.dart' as menu;

final _nid = calloc<NOTIFYICONDATA>()..ref.cbSize = sizeOf<NOTIFYICONDATA>();

bool _trayWndProc(int hWnd, int msg, int wParam, int lParam) {
  final hWnd = _nid.ref.hWnd;
  switch (msg) {
    case app.EVENT_TRAY_NOTIFY:
      final trayMsg = _fixNotifyDataToVersion4(LOWORD(lParam));
      switch (trayMsg) {
        case NIN_SELECT:
          ShowWindow(hWnd, IsWindowVisible(hWnd) == 1 ? SW_HIDE : SW_SHOW);
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
  final nid = _nid.ref;
  nid.hWnd = hWndParent;
  nid.uFlags = NIF_ICON | NIF_TIP | NIF_MESSAGE | NIF_SHOWTIP | NIF_GUID;
  _nid.szTip = 'Dart tray';
  nid.uCallbackMessage = app.EVENT_TRAY_NOTIFY;
  nid.hIcon = app.loadDartIcon();

  Shell_NotifyIcon(NIM_ADD, _nid);

  nid.uVersion = 4;
  Shell_NotifyIcon(NIM_SETVERSION, _nid);

  app.registryWdnProc(_trayWndProc);
}

void removeIcon() {
  Shell_NotifyIcon(NIM_DELETE, _nid);
  free(_nid);
  app.deregisterWndProc(_trayWndProc);
}

int _fixNotifyDataToVersion4(int msg) {
  switch (msg) {
    case 521:
      return WM_MBUTTONDBLCLK;
    case 520:
      return WM_MBUTTONUP;
    case 519:
      return WM_MBUTTONDOWN;
    case 517:
      return WM_CONTEXTMENU;
    case 516:
      return WM_RBUTTONDOWN;
    case 515:
      return WM_LBUTTONDBLCLK;
    case 514:
      return NIN_SELECT;
    case 513:
      return WM_LBUTTONDOWN;
    case 512:
      return WM_MOUSEMOVE;
  }
  return msg;
}
