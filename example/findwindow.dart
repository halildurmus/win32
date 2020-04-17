// findwindow.dart

// Shows all the currently running windows

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  final hwnd = FindWindowEx(0, 0, TEXT('Notepad'), nullptr);

  print(hwnd);
}
