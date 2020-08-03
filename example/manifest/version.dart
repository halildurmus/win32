import 'dart:ffi';

import 'package:win32/win32.dart';

void main() {
  final osVersionInfo = OSVERSIONINFO.allocate();

  final result = GetVersionEx(osVersionInfo.addressOf);
  if (result != 0) {
    print(
        'Windows ${osVersionInfo.dwMajorVersion}.${osVersionInfo.dwMinorVersion}');
  }
}
