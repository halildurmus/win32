import 'package:win32/win32.dart';

/// A data type stored in the Windows Registry.
///
/// These do not directly map onto either Win32 or Dart types, but represent the
/// kinds of entities that the registry understands.
///
/// More information about the kinds of data that can be found in the registry
/// can be found here:
/// https://learn.microsoft.com/windows/win32/sysinfo/registry-value-types
enum RegistryValueType {
  /// Binary data in any form. This value is equivalent to the Windows API
  /// registry data type `REG_BINARY`.
  binary(REG_VALUE_TYPE.REG_BINARY),

  /// A 32-bit binary number. This value is equivalent to the Windows API
  /// registry data type `REG_DWORD`.
  int32(REG_VALUE_TYPE.REG_DWORD),

  /// A null-terminated string that contains unexpanded references to
  /// environment variables, such as %PATH%, that are expanded when the value is
  /// retrieved. This value is equivalent to the Windows API registry data type
  /// `REG_EXPAND_SZ`.
  unexpandedString(REG_VALUE_TYPE.REG_EXPAND_SZ),

  /// A null-terminated string that contains the target path of a symbolic link.
  /// This value is equivalent to the Windows API registry data type `REG_LINK`.
  link(REG_VALUE_TYPE.REG_LINK),

  /// An array of null-terminated strings, terminated by two null characters.
  /// This value is equivalent to the Windows API registry data type
  /// `REG_MULTI_SZ`.
  stringArray(REG_VALUE_TYPE.REG_MULTI_SZ),

  /// No data type.
  none(REG_VALUE_TYPE.REG_NONE),

  /// A 64-bit binary number. This value is equivalent to the Windows API
  /// registry data type `REG_QWORD`.
  int64(REG_VALUE_TYPE.REG_QWORD),

  /// A null-terminated string. This value is equivalent to the Windows API
  /// registry data type `REG_SZ`.
  string(REG_VALUE_TYPE.REG_SZ),

  /// An unknown type.
  unknown(-1);

  /// Return the Win32 value that represents the stored type.
  final int win32Value;

  const RegistryValueType(this.win32Value);

  /// Return a string representing the Win32 type stored.
  String get win32Type => switch (this) {
        RegistryValueType.binary => 'REG_BINARY',
        RegistryValueType.int32 => 'REG_DWORD',
        RegistryValueType.unexpandedString => 'REG_EXPAND_SZ',
        RegistryValueType.link => 'REG_LINK',
        RegistryValueType.stringArray => 'REG_MULTI_SZ',
        RegistryValueType.int64 => 'REG_QWORD',
        RegistryValueType.string => 'REG_SZ',
        RegistryValueType.none => 'REG_NONE',
        _ => ''
      };
}
