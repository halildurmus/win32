// Enumerates open windows and demonstrates basic window manipulation

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

// Callback for each window found
int enumWindowsProc(int hWnd, int lParam) {
  // Don't enumerate windows unless they are marked as WS_VISIBLE
  if (IsWindowVisible(hWnd) == FALSE) return TRUE;

  final length = GetWindowTextLength(hWnd);
  if (length == 0) {
    return TRUE;
  }

  final buffer = wsalloc(length + 1);
  GetWindowText(hWnd, buffer, length + 1);
  print('hWnd $hWnd: ${buffer.toDartString()}');
  free(buffer);

  return TRUE;
}

/// List the window handle and text for all top-level desktop windows
/// in the current session.
void enumerateWindows() {
  final lpEnumFunc = NativeCallable<WNDENUMPROC>.isolateLocal(
    enumWindowsProc,
    exceptionalReturn: 0,
  );
  EnumWindows(lpEnumFunc.nativeFunction, 0);
  lpEnumFunc.close();
}

/// Find the first open Notepad window and maximize it
void findNotepad() {
  final hwnd = FindWindowEx(0, 0, TEXT('Notepad'), nullptr);

  if (hwnd == 0) {
    print('No Notepad window found.');
  } else {
    ShowWindow(hwnd, SW_MAXIMIZE);
  }
}

void main() {
  enumerateWindows();
  findNotepad();
}
