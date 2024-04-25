import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

int getWindowsBuildNumber() => int.parse(getRegistryValue(
    HKEY_LOCAL_MACHINE,
    'SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\',
    'CurrentBuildNumber') as String);

Object getRegistryValue(int key, String subKey, String valueName) {
  late Object dataValue;

  final subKeyPtr = subKey.toNativeUtf16();
  final valueNamePtr = valueName.toNativeUtf16();
  final openKeyPtr = calloc<HANDLE>();
  final dataType = calloc<DWORD>();

  // 256 bytes is more than enough, and Windows will throw ERROR_MORE_DATA if
  // not, so there won't be an overrun.
  final data = calloc<BYTE>(256);
  final dataSize = calloc<DWORD>()..value = 256;

  try {
    var result =
        RegOpenKeyEx(key, subKeyPtr, 0, REG_SAM_FLAGS.KEY_READ, openKeyPtr);
    if (result == WIN32_ERROR.ERROR_SUCCESS) {
      result = RegQueryValueEx(
          openKeyPtr.value, valueNamePtr, nullptr, dataType, data, dataSize);

      if (result == WIN32_ERROR.ERROR_SUCCESS) {
        if (dataType.value == REG_VALUE_TYPE.REG_DWORD) {
          dataValue = data.value;
        } else if (dataType.value == REG_VALUE_TYPE.REG_SZ) {
          dataValue = data.cast<Utf16>().toDartString();
        } else {
          // other data types are available, but this is a sample
        }
      } else {
        throw WindowsException(HRESULT_FROM_WIN32(result));
      }
    } else {
      throw WindowsException(HRESULT_FROM_WIN32(result));
    }
  } finally {
    free(subKeyPtr);
    free(valueNamePtr);
    free(openKeyPtr);
    free(data);
    free(dataSize);
  }
  RegCloseKey(openKeyPtr.value);

  return dataValue;
}
