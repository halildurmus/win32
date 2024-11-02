import 'package:win32/win32.dart';

/// Represents a data type stored within the Windows Registry.
///
/// These types define the kinds of data entities that the registry can store
/// and handle, although they do not directly correspond to specific Win32 or
/// Dart types.
///
/// For more information on these registry value types, refer to:
/// https://learn.microsoft.com/windows/win32/sysinfo/registry-value-types
enum RegistryValueType {
  /// No specific data type.
  none._(REG_VALUE_TYPE.REG_NONE),

  /// A null-terminated string, equivalent to the Windows API type `REG_SZ`.
  string._(REG_VALUE_TYPE.REG_SZ),

  /// A null-terminated string with unexpanded references to environment
  /// variables (e.g., %PATH%), expanded when retrieved.
  ///
  /// Corresponds to `REG_EXPAND_SZ`.
  unexpandedString._(REG_VALUE_TYPE.REG_EXPAND_SZ),

  /// Binary data of arbitrary format, matching the Windows API type
  /// `REG_BINARY`.
  binary._(REG_VALUE_TYPE.REG_BINARY),

  /// A 32-bit unsigned integer, represented by `REG_DWORD`.
  int32._(REG_VALUE_TYPE.REG_DWORD),

  /// A null-terminated string indicating the target path of a symbolic link,
  /// equivalent to `REG_LINK`.
  link._(REG_VALUE_TYPE.REG_LINK),

  /// An array of null-terminated strings, terminated by an additional null
  /// character.
  ///
  /// Corresponds to `REG_MULTI_SZ`.
  stringArray._(REG_VALUE_TYPE.REG_MULTI_SZ),

  /// A 64-bit unsigned integer, represented by `REG_QWORD`.
  int64._(REG_VALUE_TYPE.REG_QWORD);

  const RegistryValueType._(this.value);

  /// Creates a [RegistryValueType] from a Win32 registry data type value.
  factory RegistryValueType.fromWin32(int value) => switch (value) {
        REG_VALUE_TYPE.REG_NONE => none,
        REG_VALUE_TYPE.REG_SZ => string,
        REG_VALUE_TYPE.REG_EXPAND_SZ => unexpandedString,
        REG_VALUE_TYPE.REG_BINARY => binary,
        REG_VALUE_TYPE.REG_DWORD => int32,
        REG_VALUE_TYPE.REG_LINK => link,
        REG_VALUE_TYPE.REG_MULTI_SZ => stringArray,
        REG_VALUE_TYPE.REG_QWORD => int64,
        _ => throw ArgumentError.value(
            value,
            'value',
            'Unknown registry value type: $value',
          ),
      };

  /// The integer value representing the underlying Win32 registry type.
  final int value;

  @override
  String toString() => switch (this) {
        none => 'REG_NONE',
        string => 'REG_SZ',
        unexpandedString => 'REG_EXPAND_SZ',
        binary => 'REG_BINARY',
        int32 => 'REG_DWORD',
        link => 'REG_LINK',
        stringArray => 'REG_MULTI_SZ',
        int64 => 'REG_QWORD',
      };
}
