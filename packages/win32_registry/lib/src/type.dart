import 'package:win32/win32.dart';

/// Represents the data type of a value stored in the Windows Registry.
///
/// For the official list and semantics of registry value types, see:
/// https://learn.microsoft.com/windows/win32/sysinfo/registry-value-types
final class RegistryValueType {
  const RegistryValueType._(this.raw);

  /// Creates a [RegistryValueType] from a native Win32 registry type value.
  ///
  /// Known values are mapped to predefined constants. Unrecognized values are
  /// preserved as opaque instances so that callers can still inspect or forward
  /// them without loss of information.
  factory RegistryValueType.fromRaw(REG_VALUE_TYPE value) => switch (value) {
    REG_NONE => none,
    REG_SZ => string,
    REG_EXPAND_SZ => unexpandedString,
    REG_BINARY => binary,
    REG_DWORD => dword,
    REG_LINK => link,
    REG_MULTI_SZ => multiString,
    REG_QWORD => qword,
    _ => RegistryValueType._(value),
  };

  /// The underlying native Win32 registry type identifier.
  ///
  /// This corresponds directly to a `REG_*` constant.
  final REG_VALUE_TYPE raw;

  /// No defined data type ([REG_NONE]).
  static const none = RegistryValueType._(REG_NONE);

  /// A UTF-16 null-terminated string ([REG_SZ]).
  static const string = RegistryValueType._(REG_SZ);

  /// A UTF-16 null-terminated string containing unexpanded environment
  /// variable references (e.g., `%PATH%`), represented by [REG_EXPAND_SZ].
  static const unexpandedString = RegistryValueType._(REG_EXPAND_SZ);

  /// Arbitrary binary data ([REG_BINARY]).
  static const binary = RegistryValueType._(REG_BINARY);

  /// A 32-bit unsigned integer ([REG_DWORD]).
  static const dword = RegistryValueType._(REG_DWORD);

  /// A symbolic link target path ([REG_LINK]).
  static const link = RegistryValueType._(REG_LINK);

  /// A sequence of UTF-16 strings ([REG_MULTI_SZ]).
  ///
  /// Encoded as multiple null-terminated strings, terminated by an additional
  /// null character.
  static const multiString = RegistryValueType._(REG_MULTI_SZ);

  /// A 64-bit unsigned integer ([REG_QWORD]).
  static const qword = RegistryValueType._(REG_QWORD);

  @override
  String toString() {
    final type = switch (raw) {
      REG_NONE => 'REG_NONE',
      REG_SZ => 'REG_SZ',
      REG_EXPAND_SZ => 'REG_EXPAND_SZ',
      REG_BINARY => 'REG_BINARY',
      REG_DWORD => 'REG_DWORD',
      REG_LINK => 'REG_LINK',
      REG_MULTI_SZ => 'REG_MULTI_SZ',
      REG_QWORD => 'REG_QWORD',
      _ => raw.toHexString(),
    };
    return 'RegistryValueType($type)';
  }
}
