import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

Object queryRegistryValue(int key, String subKey, String valueName) {
  late Object dataValue;

  final openKeyPtr = loggingCalloc<HANDLE>();
  final dataType = loggingCalloc<DWORD>();

  // 256 bytes is more than enough, and Windows will throw ERROR_MORE_DATA if
  // not, so there won't be an overrun.
  final data = loggingCalloc<BYTE>(256);
  final dataSize = loggingCalloc<DWORD>()..value = 256;

  try {
    final lpSubKey = w(subKey);
    var result = RegOpenKeyEx(key, lpSubKey.ptr, 0, KEY_READ, openKeyPtr);
    if (result == ERROR_SUCCESS) {
      final lpValueName = w(valueName);
      result = RegQueryValueEx(
        openKeyPtr.value,
        lpValueName.ptr,
        dataType,
        data,
        dataSize,
      );
      RegCloseKey(openKeyPtr.value);

      if (result == ERROR_SUCCESS) {
        if (dataType.value == REG_DWORD) {
          dataValue = data.value;
        } else if (dataType.value == REG_SZ) {
          dataValue = data.cast<Utf16>().toDartString();
        } else {
          // other data types are available, but this is a sample
        }
      } else {
        throw WindowsException(result.toHRESULT());
      }
    } else {
      throw WindowsException(result.toHRESULT());
    }
  } finally {
    free(openKeyPtr);
    free(data);
    free(dataSize);
  }

  return dataValue;
}

bool isWindows11() {
  final windowsBuildNumber = int.parse(
    queryRegistryValue(
          HKEY_LOCAL_MACHINE,
          r'SOFTWARE\Microsoft\Windows NT\CurrentVersion\',
          'CurrentBuildNumber',
        )
        as String,
  );
  return windowsBuildNumber >= 22000;
}
