import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'access_rights.dart';
import 'registry_hive.dart';
import 'registry_key.dart';

/// Provides access to the Windows Registry, allowing interaction with registry
/// keys and their values.
///
/// Use this class to open, create, and manage registry keys and values. You can
/// open specific registry keys or use predefined root keys, such as
/// [localMachine], [currentUser], or [classesRoot].
///
/// Example of opening a key:
///
/// ```dart
/// const keyPath = r'Software\Microsoft\Windows NT\CurrentVersion';
/// final key = Registry.openPath(RegistryHive.localMachine, path: keyPath);
/// ```
///
/// After obtaining a key, you can perform various operations such as creating,
/// updating, renaming, or deleting values stored within the key. Additionally,
/// you can monitor the key for any changes, allowing for responsive updates to
/// registry modifications.
///
/// **Note:** To conserve system resources, ensure that opened keys are closed
/// with the [RegistryKey.close] method once you're finished.
///
/// For further details on key and value management, refer to [RegistryKey].
abstract final class Registry {
  /// Opens a registry key at the specified [path] within the given [hive].
  ///
  /// The [desiredAccessRights] parameter specifies the level of access required.
  /// Once a key is opened, remember to close it with [RegistryKey.close] when
  /// done to free system resources.
  ///
  /// Throws a [WindowsException] if the key cannot be opened.
  static RegistryKey openPath(
    RegistryHive hive, {
    String path = '',
    AccessRights desiredAccessRights = AccessRights.readOnly,
  }) {
    final phKey = calloc<HKEY>();
    final lpSubKey = path.toNativeUtf16();
    try {
      final lStatus = RegOpenKeyEx(
        hive.value,
        lpSubKey,
        0,
        desiredAccessRights.value,
        phKey,
      );
      if (lStatus == ERROR_SUCCESS) return RegistryKey(phKey.value);
      throw WindowsException(HRESULT_FROM_WIN32(lStatus));
    } finally {
      free(phKey);
      free(lpSubKey);
    }
  }

  /// Opens the `HKEY_USERS` root registry key with read-only access.
  static RegistryKey get allUsers => openPath(RegistryHive.allUsers);

  /// Opens the `HKEY_CLASSES_ROOT` root registry key with read-only access.
  static RegistryKey get classesRoot => openPath(RegistryHive.classesRoot);

  /// Opens the `HKEY_CURRENT_CONFIG` root registry key with read-only access.
  static RegistryKey get currentConfig => openPath(RegistryHive.currentConfig);

  /// Opens the `HKEY_CURRENT_USER` root registry key with read-only access.
  ///
  /// This method directly invokes the Windows API to retrieve the appropriate
  /// user context, useful when the thread might be impersonating another user
  /// (e.g., through "Run As" operations).
  static RegistryKey get currentUser {
    final phKey = calloc<HKEY>();
    try {
      final lStatus = RegOpenCurrentUser(KEY_ALL_ACCESS, phKey);
      if (lStatus == ERROR_SUCCESS) return RegistryKey(phKey.value);
      throw WindowsException(HRESULT_FROM_WIN32(lStatus));
    } finally {
      free(phKey);
    }
  }

  /// Opens the `HKEY_LOCAL_MACHINE` root registry key with read-only access.
  static RegistryKey get localMachine => openPath(RegistryHive.localMachine);
}
