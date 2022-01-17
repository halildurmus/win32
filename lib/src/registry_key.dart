import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'registry_key_info.dart';
import 'registry_value.dart';
import 'registry_value_kind.dart';

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
///
/// The system defines a series of predefined keys as entry points to the
/// registry, including a

class RegistryKey {
  /// A handle to the current registry key
  final int hkey;

  const RegistryKey(this.hkey);

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

  RegistryKey createSubkey(String subkey) {
    final lpSubKey = subkey.toNativeUtf16();
    final phkResult = calloc<HKEY>();

    try {
      final retcode = RegCreateKey(hkey, lpSubKey, phkResult);

      if (retcode != ERROR_SUCCESS) {
        throw WindowsException(HRESULT_FROM_WIN32(retcode));
      }

      return RegistryKey(phkResult.value);
    } finally {
      free(lpSubKey);
      free(phkResult);
    }
  }

  void deleteSubkey(String subkey) {
    final lpSubKey = subkey.toNativeUtf16();

    try {
      final retcode = RegDeleteKey(hkey, lpSubKey);

      if (retcode != ERROR_SUCCESS) {
        throw WindowsException(HRESULT_FROM_WIN32(retcode));
      }
    } finally {
      free(lpSubKey);
    }
  }

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

  RegistryValue? getValue(String valueName) {
    final lpValueName = valueName.toNativeUtf16();
    final lpType = calloc<DWORD>();
    final lpcbData = calloc<DWORD>();

    // Call first time to find out how much memory we need to allocate
    var retcode =
        RegQueryValueEx(hkey, lpValueName, nullptr, lpType, nullptr, lpcbData);
    if (retcode == ERROR_FILE_NOT_FOUND) return null;

    // Now call for real to get the datta we need.
    final lpData = calloc<BYTE>(lpcbData.value);
    retcode =
        RegQueryValueEx(hkey, lpValueName, nullptr, lpType, lpData, lpcbData);
    final registryValue = RegistryValue.fromWin32(
        lpValueName.toDartString(), lpType.value, lpData, lpcbData.value);

    free(lpValueName);
    free(lpType);
    free(lpData);
    free(lpcbData);

    return registryValue;
  }

  String? getValueAsString(String valueName) {
    final registryValue = getValue(valueName);

    if (registryValue != null &&
        [
          RegistryValueKind.string,
          RegistryValueKind.unexpandedString,
          RegistryValueKind.link
        ].contains(registryValue.type)) {
      return registryValue.data as String;
    } else {
      return null;
    }
  }

  int? getValueAsInt(String valueName) {
    final registryValue = getValue(valueName);

    if (registryValue != null &&
        [
          RegistryValueKind.int32,
          RegistryValueKind.int64,
        ].contains(registryValue.type)) {
      return registryValue.data as int;
    } else {
      return null;
    }
  }

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
        if (retcode == ERROR_SUCCESS) {
          yield lpName.toDartString();
        }
      }
    } finally {
      free(lpName);
      free(lpcchName);
    }
  }

  void close() {
    RegCloseKey(hkey);
  }
}
