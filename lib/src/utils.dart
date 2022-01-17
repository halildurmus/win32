import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

class PointerData {
  final Pointer<Uint8> data;
  final int lengthInBytes;

  const PointerData(this.data, this.lengthInBytes);
}

/// Convert a Win32 `FILETIME` struct into its Dart equivalent.
DateTime? convertToDartDateTime(Pointer<FILETIME> lpFileTime) {
  if (lpFileTime == nullptr) return null;

  final lpSystemTime = calloc<SYSTEMTIME>();
  try {
    final result = FileTimeToSystemTime(lpFileTime, lpSystemTime);
    if (result == FALSE) return null;

    final systemTime = lpSystemTime.ref;
    final dateTime = DateTime.utc(
        systemTime.wYear,
        systemTime.wMonth,
        systemTime.wDay,
        systemTime.wHour,
        systemTime.wMinute,
        systemTime.wSecond,
        systemTime.wMilliseconds);

    return dateTime;
  } finally {
    free(lpSystemTime);
  }
}
