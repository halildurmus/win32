import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

bool isWindows10OrGreater() {
  var isAtLeastWindows10 = false;

  final subKeyPtr = TEXT('SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\');
  final valueNamePtr = TEXT('CurrentBuildNumber');
  final openKeyPtr = allocate<IntPtr>();
  final dataType = allocate<Uint32>();

  // 256 bytes is more than enough, and Windows will throw ERROR_MORE_DATA if
  // not, so there won't be an overrun.
  final data = allocate<Uint8>(count: 256);
  final dataSize = allocate<Uint32>()..value = 256;

  try {
    var result =
        RegOpenKeyEx(HKEY_LOCAL_MACHINE, subKeyPtr, 0, KEY_READ, openKeyPtr);
    if (result == ERROR_SUCCESS) {
      result = RegQueryValueEx(openKeyPtr.value, valueNamePtr, nullptr,
          dataType, data.cast(), dataSize);

      if (result == ERROR_SUCCESS) {
        if (dataType.value == REG_SZ) {
          final buildNumberString = data.cast<Utf16>().unpackString(128);
          final buildNumber = int.parse(buildNumberString);
          return buildNumber >= 10240; // TH1
        } else {
          isAtLeastWindows10 = false;
        }
      } else {
        isAtLeastWindows10 = false;
      }
    }
  } finally {
    free(subKeyPtr);
    free(valueNamePtr);
    free(openKeyPtr);
    free(data);
    free(dataSize);
  }
  RegCloseKey(openKeyPtr.value);

  return isAtLeastWindows10;
}
