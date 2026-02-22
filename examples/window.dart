// Demonstrates querying top-level desktop windows and interacting with a
// selected target window.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

final class DesktopWindow {
  const DesktopWindow(this.hWnd, this.title);

  final HWND hWnd;
  final String title;

  /// Brings the window to the foreground and restores it if minimized.
  void activate() {
    if (IsIconic(hWnd)) {
      ShowWindow(hWnd, SW_RESTORE);
    }
    SetForegroundWindow(hWnd);
  }

  @override
  String toString() => 'DesktopWindow(hWnd: $hWnd, title: $title)';
}

/// Enumerates all visible top-level windows.
List<DesktopWindow> enumerateDesktopWindows() {
  final results = <DesktopWindow>[];

  final callback = NativeCallable<WNDENUMPROC>.isolateLocal((
    Pointer hWnd,
    int lParam,
  ) {
    final hwnd = HWND(hWnd);
    if (!IsWindowVisible(hwnd)) return TRUE;

    final length = GetWindowTextLength(hwnd).value;
    if (length == 0) return TRUE;

    using((arena) {
      final buffer = arena.pwstrBuffer(length + 1);
      if (GetWindowText(hwnd, buffer, length + 1).value != 0) {
        results.add(DesktopWindow(hwnd, buffer.toDartString()));
      }
    });

    return TRUE;
  }, exceptionalReturn: 0);

  EnumWindows(callback.nativeFunction, const LPARAM(0));
  callback.close();

  return results;
}

/// Finds the first window whose title contains [keyword].
DesktopWindow? findWindowByTitle(List<DesktopWindow> windows, String keyword) {
  final lower = keyword.toLowerCase();
  for (final window in windows) {
    if (window.title.toLowerCase().contains(lower)) {
      return window;
    }
  }
  return null;
}

void main() {
  final windows = enumerateDesktopWindows();
  print('Visible windows:');
  for (final window in windows) {
    print('• $window');
  }

  // Change this keyword to target a different window.
  const targetKeyword = 'Visual Studio Code';
  final target = findWindowByTitle(windows, targetKeyword);
  if (target == null) {
    print('No window found containing "$targetKeyword".');
    return;
  }

  print('Activating window: "$target"');
  target.activate();
}
