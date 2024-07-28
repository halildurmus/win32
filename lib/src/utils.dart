import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// Convert a Win32 `FILETIME` struct into its Dart equivalent.
DateTime? convertToDartDateTime(Pointer<FILETIME> lpFileTime) {
  if (lpFileTime == nullptr) return null;

  final lpSystemTime = calloc<SYSTEMTIME>();
  try {
    final result = FileTimeToSystemTime(lpFileTime, lpSystemTime);
    if (result == FALSE) return null;

    final systemTime = lpSystemTime.ref;
    return DateTime.utc(
        systemTime.wYear,
        systemTime.wMonth,
        systemTime.wDay,
        systemTime.wHour,
        systemTime.wMinute,
        systemTime.wSecond,
        systemTime.wMilliseconds);
  } finally {
    free(lpSystemTime);
  }
}
