import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'access_rights.dart';
import 'registry_hive.dart';
import 'registry_key.dart';

class Registry {
  static RegistryKey open(RegistryHive hive,
      {String path = '', AccessRights accessRights = AccessRights.readOnly}) {
    final phKey = calloc<HKEY>();
    final lpSubKey = path.toNativeUtf16();
    try {
      final lStatus = RegOpenKeyEx(
          hive.win32Value, lpSubKey, 0, accessRights.win32Value, phKey);

      if (lStatus == ERROR_SUCCESS) {
        return RegistryKey(phKey.value);
      } else {
        throw WindowsException(HRESULT_FROM_WIN32(lStatus));
      }
    } finally {
      free(phKey);
      free(lpSubKey);
    }
  }

  static RegistryKey openCurrentUser(AccessRights accessRights) {
    final phKey = calloc<HKEY>();

    try {
      final lStatus = RegOpenCurrentUser(accessRights.win32Value, phKey);
      if (lStatus == ERROR_SUCCESS) {
        return RegistryKey(phKey.value);
      } else {
        throw WindowsException(HRESULT_FROM_WIN32(lStatus));
      }
    } finally {
      free(phKey);
    }
  }
}
