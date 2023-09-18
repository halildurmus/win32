import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'models/registry_key_info.dart';
import 'models/registry_value_type.dart';
import 'registry_value.dart';
import 'utils.dart';

/// An individual node in the Windows registry.
///
/// Registry data is structured in a tree format. Each node in the tree is
/// called a key. Keys can contain data entries called values. Keys are somewhat
/// analagous to a directory in a file system, with values being analagous to
/// files.
///
/// Sometimes, the presence of a key is all the data that an application
/// requires; other times, an application opens a key and uses the values
/// associated with the key.
class RegistryKey {
  /// Creates an instance of the [RegistryKey] with the specified handle.
  const RegistryKey(this.hkey);

  /// A handle to the current registry key
  final int hkey;

  /// Creates the specified registry key.
  ///
  /// If the key already exists, the function opens it.
  ///
  /// Note that key names are not case sensitive.
  RegistryKey createKey(String keyName) {
    final lpSubKey = keyName.toNativeUtf16();
    final phkResult = calloc<HKEY>();
    try {
      final retcode = RegCreateKey(hkey, lpSubKey, phkResult);
      if (retcode == ERROR_SUCCESS) return RegistryKey(phkResult.value);
      throw WindowsException(HRESULT_FROM_WIN32(retcode));
    } finally {
      free(lpSubKey);
      free(phkResult);
    }
  }

  /// Deletes a subkey and its values from the specified platform-specific view
  /// of the registry.
  ///
  /// Set [recursive] to `true` if you want to delete subkey with all its
  /// subkeys.
  ///
  /// Note that key names are not case sensitive.
  void deleteKey(String keyName, {bool recursive = false}) {
    final lpSubKey = keyName.toNativeUtf16();
    try {
      final retcode = RegDeleteKey(hkey, lpSubKey);
      if (retcode != ERROR_SUCCESS) {
        if (!recursive) throw WindowsException(HRESULT_FROM_WIN32(retcode));

        final key = createKey(keyName);

        try {
          for (final subKeyName in key.subkeyNames.toList()) {
            key.deleteKey(subKeyName, recursive: true);
          }
        } finally {
          key.close();
        }

        deleteKey(keyName, recursive: false);
      }
    } finally {
      free(lpSubKey);
    }
  }

  /// Sets the data and type of a specified value under a registry key.
  void createValue(RegistryValue value) {
    final lpValueName = value.name.toNativeUtf16();
    final lpWin32Data = value.toWin32;
    try {
      final retcode = RegSetValueEx(hkey, lpValueName, NULL,
          value.type.win32Value, lpWin32Data.data, lpWin32Data.lengthInBytes);
      if (retcode != ERROR_SUCCESS) {
        throw WindowsException(HRESULT_FROM_WIN32(retcode));
      }
    } finally {
      free(lpValueName);
      free(lpWin32Data.data);
    }
  }

  /// Retrieves the type and data for the specified registry value.
  RegistryValue? getValue(
    String valueName, {
    String path = '',
    bool expandPaths = false,
  }) {
    return using((arena) {
      final lpSubKey = path.toNativeUtf16(allocator: arena);
      final lpValue = valueName.toNativeUtf16(allocator: arena);
      final pdwType = arena<DWORD>();
      final pcbData = arena<DWORD>();

      final flags = expandPaths ? RRF_RT_ANY : RRF_RT_ANY | RRF_NOEXPAND;

      // Call first time to find out how much memory we need to allocate
      var retcode = RegGetValue(
          hkey, lpSubKey, lpValue, flags, pdwType, nullptr, pcbData);
      if (retcode == ERROR_FILE_NOT_FOUND) return null;

      // Now call for real to get the data we need.
      final pvData = arena<BYTE>(pcbData.value);
      retcode =
          RegGetValue(hkey, lpSubKey, lpValue, flags, pdwType, pvData, pcbData);
      return RegistryValue.fromWin32(
          lpValue.toDartString(), pdwType.value, pvData, pcbData.value);
    });
  }

  /// Retrieves the string data for the specified registry value.
  String? getValueAsString(String valueName, {bool expandPaths = false}) {
    final registryValue = getValue(valueName, expandPaths: expandPaths);
    if (registryValue == null) return null;
    return switch (registryValue.type) {
      RegistryValueType.string ||
      RegistryValueType.unexpandedString ||
      RegistryValueType.link =>
        registryValue.data as String,
      _ => null
    };
  }

  /// Retrieves the integer data for the specified registry value.
  int? getValueAsInt(String valueName) {
    final registryValue = getValue(valueName);
    if (registryValue == null) return null;
    return switch (registryValue.type) {
      RegistryValueType.int32 ||
      RegistryValueType.int64 =>
        registryValue.data as int,
      _ => null
    };
  }

  /// Removes a named value from the specified registry key. Note that value
  /// names are not case sensitive.
  void deleteValue(String valueName) {
    final lpValueName = valueName.toNativeUtf16();
    try {
      final retcode = RegDeleteValue(hkey, lpValueName);
      if (retcode != ERROR_SUCCESS) {
        throw WindowsException(HRESULT_FROM_WIN32(retcode));
      }
    } finally {
      free(lpValueName);
    }
  }

  /// Changes the name of the specified registry key.
  void renameSubkey(String oldName, String newName) {
    final lpSubKeyName = oldName.toNativeUtf16();
    final lpNewKeyName = newName.toNativeUtf16();
    try {
      final retcode = RegRenameKey(hkey, lpSubKeyName, lpNewKeyName);
      if (retcode != ERROR_SUCCESS) {
        throw WindowsException(HRESULT_FROM_WIN32(retcode));
      }
    } finally {
      free(lpSubKeyName);
      free(lpNewKeyName);
    }
  }

  /// Retrieves information about the specified registry key.
  RegistryKeyInfo queryInfo() {
    return using((Arena arena) {
      final lpClass = arena<Uint16>(256).cast<Utf16>();
      final lpcchClass = arena<DWORD>()..value = 256;
      final lpcSubKeys = arena<DWORD>();
      final lpcbMaxSubKeyLen = arena<DWORD>();
      final lpcbMaxClassLen = arena<DWORD>();
      final lpcValues = arena<DWORD>();
      final lpcbMaxValueNameLen = arena<DWORD>();
      final lpcbMaxValueLen = arena<DWORD>();
      final lpcbSecurityDescriptor = arena<DWORD>();
      final lpftLastWriteTime = arena<FILETIME>();

      final retcode = RegQueryInfoKey(
          hkey,
          lpClass,
          lpcchClass,
          nullptr, // reserved, must be NULL
          lpcSubKeys,
          lpcbMaxSubKeyLen,
          lpcbMaxClassLen,
          lpcValues,
          lpcbMaxValueNameLen,
          lpcbMaxValueLen,
          lpcbSecurityDescriptor,
          lpftLastWriteTime);

      if (retcode != ERROR_SUCCESS) {
        throw WindowsException(HRESULT_FROM_WIN32(retcode));
      }

      final lastWriteTime = convertToDartDateTime(lpftLastWriteTime);
      return RegistryKeyInfo(
          lpClass.toDartString(),
          lpcSubKeys.value,
          lpcbMaxSubKeyLen.value,
          lpcbMaxClassLen.value,
          lpcValues.value,
          lpcbMaxValueNameLen.value,
          lpcbMaxValueLen.value,
          lpcbSecurityDescriptor.value,
          lastWriteTime);
    });
  }

  /// Enumerates the values for the specified open registry key.
  Iterable<RegistryValue> get values sync* {
    final keyInfo = queryInfo();

    // Allocate enough length for the maximum value name (including extra for
    // the null terminator).
    final nameMaxLength = keyInfo.valueNameMaxLength + 1;
    final lpName = wsalloc(nameMaxLength);
    final lpcchName = calloc<DWORD>();
    final lpType = calloc<DWORD>();
    final lpData = calloc<BYTE>(keyInfo.valueDataMaxSizeInBytes);
    final lpcchData = calloc<DWORD>();

    try {
      for (var idx = 0; idx < keyInfo.valuesCount; idx++) {
        // Set these sizes each time, since they're reset to the actual length
        // by the call.
        lpcchName.value = nameMaxLength;
        lpcchData.value = keyInfo.valueDataMaxSizeInBytes;

        final retcode = RegEnumValue(
            hkey, idx, lpName, lpcchName, nullptr, lpType, lpData, lpcchData);
        if (retcode == ERROR_SUCCESS) {
          yield RegistryValue.fromWin32(
              lpName.toDartString(), lpType.value, lpData, lpcchData.value);
        }
      }
    } finally {
      free(lpName);
      free(lpcchName);
      free(lpType);
      free(lpData);
      free(lpcchData);
    }
  }

  /// Enumerates the values for the specified open registry key.
  Iterable<String> get subkeyNames sync* {
    final keyInfo = queryInfo();

    // Allocate enough length for the maximum key name (including extra for the
    // null terminator).
    final keyNameLength = keyInfo.subKeyNameMaxLength + 1;
    final lpName = wsalloc(keyNameLength);
    final lpcchName = calloc<DWORD>();

    try {
      for (var idx = 0; idx < keyInfo.subKeyCount; idx++) {
        // Set this size each time, since it's reset to the actual length by the
        // call.
        lpcchName.value = keyNameLength;

        final retcode = RegEnumKeyEx(
            hkey, idx, lpName, lpcchName, nullptr, nullptr, nullptr, nullptr);
        if (retcode == ERROR_SUCCESS) yield lpName.toDartString();
      }
    } finally {
      free(lpName);
      free(lpcchName);
    }
  }

  /// Closes a handle to the specified registry key.
  void close() => RegCloseKey(hkey);
}
