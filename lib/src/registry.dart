// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'models/access_rights.dart';
import 'models/registry_hive.dart';
import 'registry_key.dart';

/// Provides access to the Windows Registry as a database.
///
/// Use this object to work with Registry keys and values, such as opening keys,
/// viewing subkeys, creating new keys, and managing key values.
///
/// You can either open a specific key within the Registry or use one of the
/// predefined root keys (e.g., [localMachine], [currentUser], or [classesRoot]).
///
/// Example of opening a key:
///
/// ```dart
/// const keyPath = r'Software\Microsoft\Windows NT\CurrentVersion';
/// final key = Registry.openPath(RegistryHive.localMachine, path: keyPath);
/// ```
///
/// Once you have a key, you can manipulate it by performing various operations,
/// including creating, updating, renaming, or deleting values stored under that
/// key.
///
/// **Note:** Always ensure that you properly close keys when you are finished
/// with them to release system resources using the [RegistryKey.close] method.
///
/// For additional information on working with keys and values, see the
/// documentation for the [RegistryKey] class.
interface class Registry {
  /// Opens a Registry key based on the given path and Registry hive.
  ///
  /// When you are finished with the key, make sure to close it using the
  /// [RegistryKey.close] method to release system resources.
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
          hive.win32Value, lpSubKey, 0, desiredAccessRights.win32Value, phKey);
      if (lStatus == WIN32_ERROR.ERROR_SUCCESS) return RegistryKey(phKey.value);
      throw WindowsException(HRESULT_FROM_WIN32(lStatus));
    } finally {
      free(phKey);
      free(lpSubKey);
    }
  }

  /// Gets the `HKEY_USERS` Registry key with read-only access.
  static RegistryKey get allUsers => openPath(RegistryHive.allUsers,
      desiredAccessRights: AccessRights.readOnly);

  /// Gets the `HKEY_CLASSES_ROOT` Registry key with read-only access.
  static RegistryKey get classesRoot => openPath(RegistryHive.classesRoot,
      desiredAccessRights: AccessRights.readOnly);

  /// Gets the `HKEY_CURRENT_CONFIG` Registry key with read-only access.
  static RegistryKey get currentConfig => openPath(RegistryHive.currentConfig,
      desiredAccessRights: AccessRights.readOnly);

  /// Gets the `HKEY_CURRENT_USER` Registry key with read-only access.
  static RegistryKey get currentUser {
    // Instead of opening HKEY_CURRENT_USER, this calls the appropriate Windows
    // API, since the thread may be impersonating a different user (e.g. Run
    // As...)
    final phKey = calloc<HKEY>();
    try {
      final lStatus = RegOpenCurrentUser(REG_SAM_FLAGS.KEY_ALL_ACCESS, phKey);
      if (lStatus == WIN32_ERROR.ERROR_SUCCESS) return RegistryKey(phKey.value);
      throw WindowsException(HRESULT_FROM_WIN32(lStatus));
    } finally {
      free(phKey);
    }
  }

  /// Gets the `HKEY_LOCAL_MACHINE` Registry key with read-only access.
  static RegistryKey get localMachine => openPath(RegistryHive.localMachine,
      desiredAccessRights: AccessRights.readOnly);

  /// Gets the `HKEY_PERFORMANCE_DATA` Registry key with read-only access.
  static RegistryKey get performanceData =>
      openPath(RegistryHive.performanceData,
          desiredAccessRights: AccessRights.readOnly);
}
