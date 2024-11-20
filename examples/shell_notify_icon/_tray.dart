import 'dart:ffi';

import 'package:win32/win32.dart';

import '_app.dart' as app;
import '_app.dart';
import '_menu.dart' as menu;

final _guid = Guid.generate();
final Pointer<NOTIFYICONDATA> _nid = loggingCalloc<NOTIFYICONDATA>()
  ..ref.cbSize = sizeOf<NOTIFYICONDATA>();

bool _trayWndProc(int hWnd, int msg, int wParam, int lParam) {
  final hWnd = _nid.ref.hWnd;
  switch (msg) {
    case app.EVENT_TRAY_NOTIFY:
      switch (LOWORD(lParam)) {
        case NIN_SELECT:
          ShowWindow(hWnd, IsWindowVisible(hWnd) ? SW_HIDE : SW_SHOW);
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
    ..uFlags = NIF_ICON | NIF_TIP | NIF_MESSAGE | NIF_SHOWTIP | NIF_GUID
    ..szTip = 'Dart tray'
    ..uCallbackMessage = app.EVENT_TRAY_NOTIFY
    ..guidItem = _guid.ref
    ..hIcon = app.loadDartIcon();

  Shell_NotifyIcon(NIM_ADD, _nid);

  nid.uVersion = 4;
  Shell_NotifyIcon(NIM_SETVERSION, _nid);

  app.registerWndProc(_trayWndProc);
}

void removeIcon() {
  Shell_NotifyIcon(NIM_DELETE, _nid);
  free(_nid);
  app.deregisterWndProc(_trayWndProc);
  lpfnWndProc.close();
}
