import 'package:win32/win32.dart';

enum RegistryValueKind {
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
  unknown
}

extension ConvertRegistryValueKindToWin32 on RegistryValueKind {
  int get win32Value {
    switch (this) {
      case RegistryValueKind.binary:
        return REG_BINARY;
      case RegistryValueKind.int32:
        return REG_DWORD;
      case RegistryValueKind.unexpandedString:
        return REG_EXPAND_SZ;
      case RegistryValueKind.link:
        return REG_LINK;
      case RegistryValueKind.stringArray:
        return REG_MULTI_SZ;
      case RegistryValueKind.none:
        return REG_NONE;
      case RegistryValueKind.int64:
        return REG_QWORD;
      case RegistryValueKind.string:
        return REG_SZ;
      case RegistryValueKind.unknown:
        throw ArgumentError.value(
            RegistryValueKind.unknown, 'Unknown values cannot be stored.');
    }
  }
}
