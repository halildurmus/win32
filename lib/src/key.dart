// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'access.dart';
import 'config.dart';
import 'info.dart';
import 'type.dart';
import 'utils.dart';
import 'value.dart';

/// The predefined [HKEY_CLASSES_ROOT] registry key.
final CLASSES_ROOT = PredefinedRegistryKey._(HKEY_CLASSES_ROOT);

/// The predefined [HKEY_CURRENT_CONFIG] registry key.
final CURRENT_CONFIG = PredefinedRegistryKey._(HKEY_CURRENT_CONFIG);

/// The predefined [HKEY_CURRENT_USER] registry key.
final CURRENT_USER = PredefinedRegistryKey._(HKEY_CURRENT_USER);

/// The predefined [HKEY_LOCAL_MACHINE] registry key.
final LOCAL_MACHINE = PredefinedRegistryKey._(HKEY_LOCAL_MACHINE);

/// The predefined [HKEY_PERFORMANCE_DATA] registry key.
final PERFORMANCE_DATA = PredefinedRegistryKey._(HKEY_PERFORMANCE_DATA);

/// The predefined [HKEY_USERS] registry key.
final USERS = PredefinedRegistryKey._(HKEY_USERS);

/// Base class for registry key handles.
///
/// Provides shared functionality for both predefined root keys and opened keys.
sealed class BaseRegistryKey {
  BaseRegistryKey._(this.hkey)
    : assert(hkey.isValid, 'HKEY handle must be valid.');

  /// Native handle for this registry key.
  final HKEY hkey;

  var _closed = false;

  /// Opens the subkey at [path], creating it if it does not already exist.
  ///
  /// Equivalent to calling [open] with write access and `create: true`.
  ///
  /// Key paths are case-insensitive.
  ///
  /// Throws a [WindowsException] if the operation fails.
  RegistryKey create(
    String path, {
    RegistryOpenConfig config = const .new(access: .readWrite, create: true),
  }) {
    if (_closed) throw StateError('RegistryKey is closed.');
    return open(path, config: config);
  }

  /// Opens the subkey located at [path].
  ///
  /// Behavior is controlled by [config], which specifies access rights,
  /// creation behavior, registry options, and optional transaction context.
  ///
  /// Key paths are case-insensitive.
  ///
  /// Throws a [WindowsException] if the operation fails.
  RegistryKey open(String path, {RegistryOpenConfig config = const .new()}) {
    if (_closed) throw StateError('RegistryKey is closed.');
    return using((arena) {
      final RegistryOpenConfig(:access, :create, :options, :transaction) =
          config;
      final handle = arena<Pointer>();
      final WIN32_ERROR result;

      if (transaction case final transaction?) {
        if (create) {
          result = RegCreateKeyTransacted(
            hkey,
            arena.pcwstr(path),
            null,
            options.value,
            access.value,
            null,
            handle,
            null,
            transaction.handle,
          );
        } else {
          result = RegOpenKeyTransacted(
            hkey,
            arena.pcwstr(path),
            null,
            access.value,
            handle,
            transaction.handle,
          );
        }
      } else {
        if (create) {
          result = RegCreateKeyEx(
            hkey,
            arena.pcwstr(path),
            null,
            options.value,
            access.value,
            null,
            handle,
            null,
          );
        } else {
          result = RegOpenKeyEx(
            hkey,
            arena.pcwstr(path),
            null,
            access.value,
            handle,
          );
        }
      }

      if (result != ERROR_SUCCESS) throw WindowsException(result.toHRESULT());

      return RegistryKey(.new(handle.value));
    });
  }

  /// Returns the registry value named [name].
  ///
  /// If [path] is provided, the value is read from that subkey relative to the
  /// current key. Otherwise, the current key is used.
  ///
  /// If [expandPaths] is `true`, expandable strings (for example `%PATH%`)
  /// are expanded before being returned.
  ///
  /// Returns `null` if the value does not exist.
  ///
  /// Throws a [WindowsException] if the operation fails.
  RegistryValue? getValue(
    String name, {
    String path = '',
    bool expandPaths = false,
  }) => _getValue(name, path: path, expandPaths: expandPaths);

  /// Writes [value] to the registry entry named [name].
  ///
  /// Existing values with the same name are overwritten.
  ///
  /// Throws a [WindowsException] if the operation fails.
  void setValue(String name, RegistryValue value) {
    if (_closed) throw StateError('RegistryKey is closed.');
    using((arena) {
      final PointerData(:data, :lengthInBytes) = value.toWin32(
        allocator: arena,
      );
      final result = RegSetValueEx(
        hkey,
        arena.pcwstr(name),
        value.type.raw,
        data,
        lengthInBytes,
      );
      if (result != ERROR_SUCCESS) throw WindowsException(result.toHRESULT());
    });
  }

  /// Deletes the value named [name] from this key.
  ///
  /// Throws a [WindowsException] if the operation fails.
  void removeValue(String name) {
    if (_closed) throw StateError('RegistryKey is closed.');
    using((arena) {
      final result = RegDeleteValue(hkey, arena.pcwstr(name));
      if (result != ERROR_SUCCESS) throw WindowsException(result.toHRESULT());
    });
  }

  /// Recursively deletes the subkey named [name] and all of its descendants.
  ///
  /// Key names are case-insensitive.
  ///
  /// Throws a [WindowsException] if the operation fails.
  void removeSubkey(String name) {
    if (_closed) throw StateError('RegistryKey is closed.');
    using((arena) {
      final result = RegDeleteTree(hkey, arena.pcwstr(name));
      if (result != ERROR_SUCCESS) throw WindowsException(result.toHRESULT());
    });
  }

  /// Recursively deletes all subkeys and values contained within this key.
  ///
  /// The current key itself is not deleted.
  ///
  /// Throws a [WindowsException] if the operation fails.
  void removeTree() {
    if (_closed) throw StateError('RegistryKey is closed.');
    using((arena) {
      final result = RegDeleteTree(hkey, null);
      if (result != ERROR_SUCCESS) throw WindowsException(result.toHRESULT());
    });
  }

  /// Deletes all values under this key without affecting subkeys.
  ///
  /// Throws a [WindowsException] if the operation fails.
  void removeValues() {
    if (_closed) throw StateError('RegistryKey is closed.');

    using((arena) {
      final nameMaxLen = arena<DWORD>();
      final result = RegQueryInfoKey(
        hkey,
        null,
        null,
        null,
        null,
        null,
        null,
        nameMaxLen,
        null,
        null,
        null,
      );
      if (result != ERROR_SUCCESS) throw WindowsException(result.toHRESULT());

      // Allocate enough length for the maximum value name (including extra for
      // the null terminator).
      var name = wsalloc(nameMaxLen.value + 1, arena);
      final nameLen = arena<DWORD>();

      while (true) {
        // Set this size each time, since it's reset to the actual length by the
        // call.
        nameLen.value = nameMaxLen.value + 1;

        var result = RegEnumValue(
          hkey,
          0, // always enumerate index 0 since we delete as we go
          name,
          nameLen,
          null,
          null,
          null,
        );

        if (result == ERROR_MORE_DATA) {
          final needed = nameLen.value + 1;
          name = wsalloc(needed, arena);
          nameLen.value = needed;
          result = RegEnumValue(hkey, 0, name, nameLen, null, null, null);
        }

        if (result != ERROR_SUCCESS) {
          if (result == ERROR_NO_MORE_ITEMS) break;
          throw WindowsException(result.toHRESULT());
        }

        result = RegDeleteValue(hkey, PCWSTR(name));
        if (result != ERROR_SUCCESS) throw WindowsException(result.toHRESULT());
      }
    });
  }

  /// Renames a subkey.
  ///
  /// If [subkey] is provided, that subkey is renamed to [newName].
  /// If [subkey] is `null`, this key itself is renamed.
  ///
  /// Throws a [WindowsException] if the operation fails.
  void rename(String? subkey, String newName) {
    if (_closed) throw StateError('RegistryKey is closed.');
    using((arena) {
      final result = RegRenameKey(
        hkey,
        PCWSTR(subkey == null ? nullptr : arena.pcwstr(subkey)),
        arena.pcwstr(newName),
      );
      if (result != ERROR_SUCCESS) throw WindowsException(result.toHRESULT());
    });
  }

  /// Returns the binary value named [name], or `null` if it does not exist or
  /// is not binary.
  ///
  /// Throws a [WindowsException] if the operation fails.
  Uint8List? getBinary(String name, {String path = ''}) =>
      switch (_getValue(name, path: path)) {
        BinaryValue(:final value) => value,
        _ => null,
      };

  /// Returns the integer value named [name], or `null` if it does not exist or
  /// is not an integer type.
  ///
  /// Throws a [WindowsException] if the operation fails.
  int? getInt(String name, {String path = ''}) =>
      switch (_getValue(name, path: path, bytesToAllocate: 8)) {
        DwordValue(:final value) || QwordValue(:final value) => value,
        _ => null,
      };

  /// Returns the string value named [name].
  ///
  /// If [expandPaths] is `true`, expandable environment variables are
  /// resolved before returning.
  ///
  /// Returns `null` if the value does not exist or is not a string.
  ///
  /// Throws a [WindowsException] if the operation fails.
  String? getString(
    String name, {
    String path = '',
    bool expandPaths = false,
  }) => switch (_getValue(name, path: path, expandPaths: expandPaths)) {
    LinkValue(:final value) ||
    StringValue(:final value) ||
    UnexpandedStringValue(:final value) => value,
    _ => null,
  };

  /// Returns the multi-string value named [name], or `null` if it does not
  /// exist or is not a multi-string.
  ///
  /// Throws a [WindowsException] if the operation fails.
  List<String>? getMultiString(String name, {String path = ''}) =>
      switch (_getValue(name, path: path)) {
        MultiStringValue(:final value) => value,
        _ => null,
      };

  /// Returns the unexpanded string value named [name].
  ///
  /// If [expandPaths] is `true`, environment variables are expanded before
  /// returning.
  ///
  /// Returns `null` if the value does not exist or is not an expandable string.
  ///
  /// Throws a [WindowsException] if the operation fails.
  String? getUnexpandedString(
    String name, {
    String path = '',
    bool expandPaths = false,
  }) => switch (_getValue(name, path: path, expandPaths: expandPaths)) {
    UnexpandedStringValue(:final value) => value,
    StringValue(:final value) when expandPaths => value,
    _ => null,
  };

  /// Returns the registry data type for the value named [name].
  ///
  /// Returns `null` if the value does not exist.
  ///
  /// Throws a [WindowsException] if the operation fails.
  RegistryValueType? getType(String name) {
    try {
      return _getRawInfo(name).type;
    } on WindowsException catch (e) {
      if (e.hr == ERROR_FILE_NOT_FOUND.toHRESULT()) return null;
      rethrow;
    }
  }

  /// Returns the names of all immediate subkeys of this key.
  ///
  /// Throws a [WindowsException] if the operation fails.
  List<String> get keys {
    if (_closed) throw StateError('RegistryKey is closed.');
    return using((arena) {
      final keys = <String>[];

      final count = arena<DWORD>();
      final maxLen = arena<DWORD>();
      final result = RegQueryInfoKey(
        hkey,
        null,
        null,
        count,
        maxLen,
        null,
        null,
        null,
        null,
        null,
        null,
      );
      if (result != ERROR_SUCCESS) throw WindowsException(result.toHRESULT());

      // Allocate enough length for the maximum key name (including extra for
      // the null terminator).
      final name = wsalloc(maxLen.value + 1, arena);
      final len = arena<DWORD>();

      for (var idx = 0; idx < count.value; idx++) {
        // Set this size each time, since it's reset to the actual length by the
        // call.
        len.value = maxLen.value + 1;

        final result = RegEnumKeyEx(hkey, idx, name, len, null, null, null);
        if (result == ERROR_SUCCESS) keys.add(name.toDartString());
      }

      return keys;
    });
  }

  /// Returns all values stored in this key.
  ///
  /// Each entry contains both the value name and its decoded data.
  ///
  /// Throws a [WindowsException] if the operation fails.
  List<({String name, RegistryValue value})> get values {
    if (_closed) throw StateError('RegistryKey is closed.');
    return using((arena) {
      final values = <({String name, RegistryValue value})>[];

      final count = arena<DWORD>();
      final nameMaxLen = arena<DWORD>();
      final valueMaxLen = arena<DWORD>();
      var result = RegQueryInfoKey(
        hkey,
        null,
        null,
        null,
        null,
        null,
        count,
        nameMaxLen,
        valueMaxLen,
        null,
        null,
      );
      if (result != ERROR_SUCCESS) throw WindowsException(result.toHRESULT());

      final type = arena<DWORD>();
      // Allocate enough length for the maximum value name (including extra for
      // the null terminator).
      final name = wsalloc(nameMaxLen.value + 1, arena);
      final nameLen = arena<DWORD>();
      final data = arena<BYTE>(valueMaxLen.value);
      final dataLen = arena<DWORD>();

      for (var idx = 0; idx < count.value; idx++) {
        // Set these sizes each time, since they're reset to the actual length
        // by the call.
        nameLen.value = nameMaxLen.value + 1;
        dataLen.value = valueMaxLen.value;

        result = RegEnumValue(hkey, idx, name, nameLen, type, data, dataLen);
        if (result == ERROR_SUCCESS) {
          values.add((
            name: name.toDartString(length: nameLen.value),
            value: REG_VALUE_TYPE(
              type.value,
            ).toRegistryValue(data, dataLen.value),
          ));
        } else {
          assert(
            result != ERROR_NO_MORE_ITEMS,
            'Expected ERROR_NO_MORE_ITEMS when enumerating values, but got: $result',
          );
        }
      }

      return values;
    });
  }

  /// Returns metadata describing this registry key.
  ///
  /// Throws a [WindowsException] if the operation fails.
  RegistryKeyInfo get info {
    if (_closed) throw StateError('RegistryKey is closed.');
    return using((arena) {
      final lpClass = wsalloc(256, arena);
      final lpcchClass = arena<DWORD>()..value = 256;
      final lpcSubKeys = arena<DWORD>();
      final lpcbMaxSubKeyLen = arena<DWORD>();
      final lpcbMaxClassLen = arena<DWORD>();
      final lpcValues = arena<DWORD>();
      final lpcbMaxValueNameLen = arena<DWORD>();
      final lpcbMaxValueLen = arena<DWORD>();
      final lpcbSecurityDescriptor = arena<DWORD>();
      final lpftLastWriteTime = arena<FILETIME>();

      final result = RegQueryInfoKey(
        hkey,
        lpClass,
        lpcchClass,
        lpcSubKeys,
        lpcbMaxSubKeyLen,
        lpcbMaxClassLen,
        lpcValues,
        lpcbMaxValueNameLen,
        lpcbMaxValueLen,
        lpcbSecurityDescriptor,
        lpftLastWriteTime,
      );
      if (result != ERROR_SUCCESS) throw WindowsException(result.toHRESULT());

      return RegistryKeyInfo(
        className: lpClass.toDartString(),
        subKeyCount: lpcSubKeys.value,
        subKeyNameMaxLength: lpcbMaxSubKeyLen.value,
        subKeyClassNameMaxLength: lpcbMaxClassLen.value,
        valuesCount: lpcValues.value,
        valueNameMaxLength: lpcbMaxValueNameLen.value,
        valueDataMaxSizeInBytes: lpcbMaxValueLen.value,
        securityDescriptorLength: lpcbSecurityDescriptor.value,
        lastWriteTime: lpftLastWriteTime.ref.toDateTime(),
      );
    });
  }

  /// Retrieves the raw type and byte length of the value named [name].
  ///
  /// Throws a [WindowsException] if the query fails.
  ({RegistryValueType type, int length}) _getRawInfo(String name) => using((
    arena,
  ) {
    final type = arena<DWORD>();
    final len = arena<DWORD>();
    final result = RegQueryValueEx(hkey, arena.pcwstr(name), type, null, len);
    if (result != ERROR_SUCCESS) throw WindowsException(result.toHRESULT());
    return (
      type: RegistryValueType.fromRaw(.new(type.value)),
      length: len.value,
    );
  });

  /// Internal value retrieval implementation.
  ///
  /// Uses a fast-path buffer of [bytesToAllocate] bytes and retries with the
  /// required size if the buffer is insufficient.
  ///
  /// Returns `null` if the value does not exist.
  RegistryValue? _getValue(
    String name, {
    String path = '',
    bool expandPaths = true,
    int bytesToAllocate = 256,
  }) {
    if (_closed) throw StateError('RegistryKey is closed.');
    return using((arena) {
      final lpSubKey = PCWSTR(path.isEmpty ? nullptr : arena.pcwstr(path));
      final lpValue = arena.pcwstr(name);
      final flags = expandPaths ? RRF_RT_ANY : RRF_RT_ANY | RRF_NOEXPAND;
      final type = arena<DWORD>();
      final len = arena<DWORD>()..value = bytesToAllocate;
      var pvData = arena<BYTE>(bytesToAllocate);

      var result = RegGetValue(
        hkey,
        lpSubKey,
        lpValue,
        flags,
        type,
        pvData,
        len,
      );

      switch (result) {
        case ERROR_SUCCESS:
          final valueType = REG_VALUE_TYPE(type.value);
          return valueType.toRegistryValue(pvData, len.value);

        case ERROR_FILE_NOT_FOUND:
          return null;

        case ERROR_MORE_DATA:
          // The buffer was too small, so allocate the required size and try
          // again.
          final requiredBytes = len.value;
          pvData = arena<BYTE>(requiredBytes);
          result = RegGetValue(
            hkey,
            lpSubKey,
            lpValue,
            flags,
            type,
            pvData,
            len,
          );
          if (result == ERROR_FILE_NOT_FOUND) return null;
          if (result != ERROR_SUCCESS) {
            throw WindowsException(result.toHRESULT());
          }

          final valueType = REG_VALUE_TYPE(type.value);
          return valueType.toRegistryValue(pvData, len.value);

        default:
          throw WindowsException(result.toHRESULT());
      }
    });
  }
}

/// Represents a predefined system registry key.
///
/// These keys are owned by the operating system and must not be closed.
final class PredefinedRegistryKey extends BaseRegistryKey {
  PredefinedRegistryKey._(super.hkey) : super._();
}

/// Represents an opened registry key.
///
/// Instances own their underlying native handle and must be closed using
/// [close] when no longer needed.
final class RegistryKey extends BaseRegistryKey {
  /// Creates a new [RegistryKey] instance from an existing native handle.
  RegistryKey(super.hkey) : super._();

  /// Opens the [HKEY_CURRENT_USER] root hive for the effective user security
  /// context.
  ///
  /// This differs from using [CURRENT_USER] because it resolves the hive
  /// associated with the thread token rather than the process token.
  ///
  /// This is useful when the thread might be impersonating another user (e.g.,
  /// through "Run As" operations).
  factory RegistryKey.openCurrentUser([RegistryAccess access = .read]) =>
      using((arena) {
        final phKey = arena<Pointer>();
        final result = RegOpenCurrentUser(access.value, phKey);
        if (result == ERROR_SUCCESS) return RegistryKey(.new(phKey.value));
        throw WindowsException(result.toHRESULT());
      });

  /// Whether this key has been closed.
  bool get isClosed => _closed;

  /// Releases the native handle associated with this key.
  ///
  /// After calling this method, all further operations on this instance will
  /// throw [StateError].
  void close() {
    if (_closed) throw StateError('RegistryKey is already closed.');
    hkey.close();
    _closed = true;
  }
}
