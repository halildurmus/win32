import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'resources.dart';

class App {
  const App(this._hWnd, this._hIcon);

  final HWND _hWnd;
  final HICON _hIcon;

  void addTrayIcon() => using((arena) {
    final nid = arena<NOTIFYICONDATA>();
    nid.ref
      ..cbSize = sizeOf<NOTIFYICONDATA>()
      ..hWnd = _hWnd
      ..guidItem = trayIconGuid
      ..hIcon = _hIcon
      ..uCallbackMessage = WM_APP_NOTIFY_CALLBACK
      ..uFlags = NIF_ICON | NIF_TIP | NIF_MESSAGE | NIF_GUID | NIF_SHOWTIP
      ..szTip = 'System Tray Icon';
    Shell_NotifyIcon(NIM_ADD, nid);
    nid.ref.uVersion = NOTIFYICON_VERSION_4;
    Shell_NotifyIcon(NIM_SETVERSION, nid);
  });

  void removeTrayIcon() => using((arena) {
    final nid = arena<NOTIFYICONDATA>();
    nid.ref
      ..cbSize = sizeOf<NOTIFYICONDATA>()
      ..guidItem = trayIconGuid
      ..uFlags = NIF_GUID;
    Shell_NotifyIcon(NIM_DELETE, nid);
  });

  void showTrayContextMenu({
    required int screenX,
    required int screenY,
  }) => using((arena) {
    final Win32Result(value: hMenu, :error) = CreatePopupMenu();
    if (hMenu.isNull) throw WindowsException(error.toHRESULT());

    try {
      var result = AppendMenu(hMenu, MF_STRING, IDM_EXIT, arena.pcwstr('Exit'));
      if (!result.value) throw WindowsException(result.error.toHRESULT());
      SetForegroundWindow(_hWnd);

      final flags =
          TPM_RIGHTBUTTON |
          (GetSystemMetrics(SM_MENUDROPALIGNMENT) != 0
              ? TPM_RIGHTALIGN
              : TPM_LEFTALIGN);

      result = TrackPopupMenuEx(hMenu, flags, screenX, screenY, _hWnd, null);
      if (!result.value) throw WindowsException(result.error.toHRESULT());
    } finally {
      hMenu.close();
    }
  });
}
