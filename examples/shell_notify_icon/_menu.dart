import 'dart:ffi';
import 'dart:math';

import 'package:win32/win32.dart';

import '_app.dart' as app;
import '_tray.dart' as tray;

void show({required int hWndParent}) {
  final mousePos = _currentMousePos();
  final hMenu = _buildMenu();

  SetForegroundWindow(hWndParent);
  TrackPopupMenuEx(
    hMenu,
    _contextMenuFlags,
    mousePos.x,
    mousePos.y,
    hWndParent,
    null,
  );

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
        default:
          return false;
      }
    default:
      return false;
  }
}

int _buildMenu() {
  final hMenu = CreateMenu();
  final quitItem = w('&Quit');
  AppendMenu(hMenu, MF_STRING, app.EVENT_QUIT, quitItem.ptr);

  final hMenubar = CreateMenu();
  final parentItem = w('_Parent');
  AppendMenu(hMenubar, MF_POPUP, hMenu, parentItem.ptr);

  return GetSubMenu(hMenubar, 0);
}

Point<int> _currentMousePos() {
  final point = loggingCalloc<POINT>();
  GetCursorPos(point);
  final result = Point(point.ref.x, point.ref.y);
  free(point);
  return result;
}

int get _contextMenuFlags {
  var uFlags = TPM_RIGHTBUTTON;
  if (GetSystemMetrics(SM_MENUDROPALIGNMENT) != 0) {
    uFlags = TRACK_POPUP_MENU_FLAGS(uFlags | TPM_RIGHTALIGN);
    uFlags = TRACK_POPUP_MENU_FLAGS(uFlags & TPM_LEFTALIGN);
  } else {
    uFlags = TRACK_POPUP_MENU_FLAGS(uFlags | TPM_LEFTALIGN);
  }
  return uFlags;
}
