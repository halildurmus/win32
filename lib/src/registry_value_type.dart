import 'package:win32/win32.dart';

/// A data type stored in the Windows registry. These do not directly map onto
/// either Win32 or Dart types, but represent the kinds of entities that the
/// registry understands.
///
/// More information about the kinds of data that can be found in the registry
/// can be found here:
/// https://docs.microsoft.com/en-us/windows/win32/sysinfo/registry-value-types
enum RegistryValueType {
  /// Binary data in any form. This value is equivalent to the Windows API
  /// registry data type `REG_BINARY`.
  binary,

  /// A 32-bit binary number. This value is equivalent to the Windows API
  /// registry data type `REG_DWORD`.
  int32,

  /// A null-terminated string that contains unexpanded references to
  /// environment variables, such as %PATH%, that are expanded when the value is
  /// retrieved. This value is equivalent to the Windows API registry data type
  /// `REG_EXPAND_SZ`.
  unexpandedString,

  /// A null-terminated string that contains the target path of a symbolic link.
  /// This value is equivalent to the Windows API registry data type `REG_LINK`.
  link,

  /// An array of null-terminated strings, terminated by two null characters.
  /// This value is equivalent to the Windows API registry data type
  /// `REG_MULTI_SZ`.
  stringArray,

  /// No data type.
  none,

  /// A 64-bit binary number. This value is equivalent to the Windows API
  /// registry data type `REG_QWORD`.
  int64,

  /// A null-terminated string. This value is equivalent to the Windows API
  /// registry data type `REG_SZ`.
  string,

  /// An unsupported registry data type.
  unknown;

  /// Return the Win32 value that represents the stored type.
  int get win32Value {
    switch (this) {
      case RegistryValueType.binary:
        return REG_BINARY;
      case RegistryValueType.int32:
        return REG_DWORD;
      case RegistryValueType.unexpandedString:
        return REG_EXPAND_SZ;
      case RegistryValueType.link:
        return REG_LINK;
      case RegistryValueType.stringArray:
        return REG_MULTI_SZ;
      case RegistryValueType.none:
        return REG_NONE;
      case RegistryValueType.int64:
        return REG_QWORD;
      case RegistryValueType.string:
        return REG_SZ;
      default:
        throw ArgumentError.value(
            RegistryValueType.unknown, 'Unknown values cannot be stored.');
    }
  }

  /// Return a string representing the Win32 type stored.
  String get win32Type {
    switch (this) {
      case RegistryValueType.binary:
        return 'REG_BINARY';
      case RegistryValueType.int32:
        return 'REG_DWORD';
      case RegistryValueType.unexpandedString:
        return 'REG_EXPAND_SZ';
      case RegistryValueType.link:
        return 'REG_LINK';
      case RegistryValueType.stringArray:
        return 'REG_MULTI_SZ';
      case RegistryValueType.none:
        return 'REG_NONE';
      case RegistryValueType.int64:
        return 'REG_QWORD';
      case RegistryValueType.string:
        return 'REG_SZ';
      default:
        return '';
    }
  }
}
