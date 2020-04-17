// findwindow.dart

// Finds the first Notepad window and maximizes it

import 'dart:ffi';
import 'package:win32/win32.dart';

void main() {
  final hwnd = FindWindowEx(0, 0, TEXT('Notepad'), nullptr);
  if (hwnd == 0) {
    print('No Notepad window found.');
  } else {
    ShowWindow(hwnd, SW_MAXIMIZE);
  }
}
