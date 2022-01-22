import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'access_rights.dart';
import 'registry_hive.dart';
import 'registry_key.dart';

/// Represents the Windows Registry as a database.
///
/// Use this object to access the child keys and values within the registry.
///
/// You can either open a specific key within the registry or use one of the
/// predefined root keys (e.g. [localMachine], [currentUser], or [classesRoot]).
///
/// Example:
///
/// ```dart
/// final key = Registry.openPath(RegistryHive.localMachine,
///   path: r'Software\Microsoft\Windows NT\CurrentVersion');
/// ```
///
/// Once you have a key, you can view subkeys, create new keys, and create,
/// update, rename or delete values stored under that key.
class Registry {
  /// This class shouldn't be instantiated directly.
  Registry._();

  /// Opens a new key based on the given path.
  ///
  /// When you are finished with the key, you should close it and release the
  /// handle with the [RegistryKey.close] method.
  static RegistryKey openPath(RegistryHive hive,
      {String path = '',
      AccessRights desiredAccessRights = AccessRights.readOnly}) {
    final phKey = calloc<HKEY>();
    final lpSubKey = path.toNativeUtf16();
    try {
      final lStatus = RegOpenKeyEx(
          hive.win32Value, lpSubKey, 0, desiredAccessRights.win32Value, phKey);

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

  static RegistryKey get localMachine => openPath(RegistryHive.localMachine,
      desiredAccessRights: AccessRights.readOnly);
  static RegistryKey get allUsers => openPath(RegistryHive.allUsers,
      desiredAccessRights: AccessRights.readOnly);
  static RegistryKey get performanceData =>
      openPath(RegistryHive.performanceData,
          desiredAccessRights: AccessRights.readOnly);
  static RegistryKey get classesRoot => openPath(RegistryHive.classesRoot,
      desiredAccessRights: AccessRights.readOnly);
  static RegistryKey get currentConfig => openPath(RegistryHive.currentConfig,
      desiredAccessRights: AccessRights.readOnly);
}
