import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'access_rights.dart';
import 'registry_hive.dart';
import 'registry_key.dart';

class Registry {
  // This class shouldn't be instantiated directly.
  Registry._();

  static RegistryKey openPath(RegistryHive hive,
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

  static RegistryKey get currentUser {
    // Instead of opening HKEY_CURRENT_USER, this calls the appropriate Windows
    // API, since the thread may be impersonating a different user (e.g. Run
    // As...)
    final phKey = calloc<HKEY>();

    try {
      final lStatus = RegOpenCurrentUser(KEY_ALL_ACCESS, phKey);
      if (lStatus == ERROR_SUCCESS) {
        return RegistryKey(phKey.value);
      } else {
        throw WindowsException(HRESULT_FROM_WIN32(lStatus));
      }
    } finally {
      free(phKey);
    }
  }

  static RegistryKey get localMachine =>
      openPath(RegistryHive.localMachine, accessRights: AccessRights.readOnly);
  static RegistryKey get allUsers =>
      openPath(RegistryHive.allUsers, accessRights: AccessRights.readOnly);
  static RegistryKey get performanceData =>
      openPath(RegistryHive.performanceData,
          accessRights: AccessRights.readOnly);
  static RegistryKey get classesRoot =>
      openPath(RegistryHive.classesRoot, accessRights: AccessRights.readOnly);
  static RegistryKey get currentConfig =>
      openPath(RegistryHive.currentConfig, accessRights: AccessRights.readOnly);
}
