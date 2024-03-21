import 'dart:ffi';
import 'dart:math';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '_app.dart' as app;
import '_tray.dart' as tray;

void show({required int hWndParent}) {
  final mousePos = _currentMousePos();
  final hMenu = _buildMenu();

  SetForegroundWindow(hWndParent);
  TrackPopupMenuEx(
      hMenu, _contextMenuFlags, mousePos.x, mousePos.y, hWndParent, nullptr);

  DestroyMenu(hMenu);
}

bool wndProc(int hWnd, int uMsg, int wParam, int lParam) {
  switch (uMsg) {
    case WM_COMMAND:
      final param = LOWORD(wParam);
      switch (param) {
        case app.EVENT_QUIT:
          tray.removeIcon();
          PostQuitMessage(0);
          return true;
      }
  }
  return false;
}

int _buildMenu() {
  final hMenu = CreateMenu();
  AppendMenu(hMenu, MENU_ITEM_FLAGS.MF_STRING, app.EVENT_QUIT, TEXT('&Quit'));

  final hMenubar = CreateMenu();
  AppendMenu(hMenubar, MENU_ITEM_FLAGS.MF_POPUP, hMenu, TEXT('_Parent'));

  return GetSubMenu(hMenubar, 0);
}

Point<int> _currentMousePos() {
  final point = calloc<POINT>();
  GetCursorPos(point);
  final result = Point(point.ref.x, point.ref.y);
  free(point);
  return result;
}

int get _contextMenuFlags {
  var uFlags = TRACK_POPUP_MENU_FLAGS.TPM_RIGHTBUTTON;
  if (GetSystemMetrics(SYSTEM_METRICS_INDEX.SM_MENUDROPALIGNMENT) != 0) {
    uFlags |= TRACK_POPUP_MENU_FLAGS.TPM_RIGHTALIGN;
  } else {
    uFlags |= TRACK_POPUP_MENU_FLAGS.TPM_LEFTALIGN;
  }
  return uFlags;
}
