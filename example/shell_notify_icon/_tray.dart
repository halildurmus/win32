import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '_app.dart' as app;
import '_menu.dart' as menu;

NOTIFYICONDATA _nid = NOTIFYICONDATA.allocate();

bool _trayWndProc(int hWnd, int msg, int wParam, int lParam)  {
  switch (msg) {
    case app.EVENT_TRAY_NOTIFY:
      final trayMsg = _fixNotifyDataToVersion4(LOWORD(lParam));
      switch (trayMsg) {
        case NIN_SELECT:
          ShowWindow(_nid.hWnd, IsWindowVisible(_nid.hWnd) == 1
              ? SW_HIDE
              : SW_SHOW);
          SetForegroundWindow(_nid.hWnd);
          return true;

        case WM_CONTEXTMENU:
          menu.show(hWndParent: hWnd);
          return true;
      }
  }
  return false;
}

void addIcon({required int hWndParent}) {
  _nid.hWnd = hWndParent;
  _nid.uFlags = NIF_ICON | NIF_TIP | NIF_MESSAGE | NIF_SHOWTIP | NIF_GUID;
  _nid.szTip = 'Dart tray';
  _nid.uCallbackMessage = app.EVENT_TRAY_NOTIFY;
  _nid.hIcon = app.loadDartIcon();

  Shell_NotifyIcon(NIM_ADD, _nid.addressOf);

  // TODO: uVersion does not yet support. See NOTIFYICONDATA declaration
  // nid.uVersion = 4;
  // Shell_NotifyIcon(NIM_SETVERSION, nid.addressOf);

  app.registryWdnProc(_trayWndProc);
}

void removeIcon() {
  Shell_NotifyIcon(NIM_DELETE, _nid.addressOf);
  free(_nid.addressOf);
  app.deregisterWndProc(_trayWndProc);
}

int _fixNotifyDataToVersion4(int msg) {
  switch(msg) {
    case 521: return WM_MBUTTONDBLCLK;
    case 520: return WM_MBUTTONUP;
    case 519: return WM_MBUTTONDOWN;
    case 517: return WM_CONTEXTMENU;
    case 516: return WM_RBUTTONDOWN;
    case 515: return WM_LBUTTONDBLCLK;
    case 514: return NIN_SELECT;
    case 513: return WM_LBUTTONDOWN;
    case 512: return WM_MOUSEMOVE;
  }
  return msg;
}
