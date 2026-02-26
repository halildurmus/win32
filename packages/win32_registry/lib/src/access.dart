import 'package:win32/win32.dart';

/// Represents access rights used when opening a registry key.
///
/// Wraps native [REG_SAM_FLAGS] values and provides type-safe combinations
/// using the bitwise OR (`|`) operator.
final class RegistryAccess {
  /// Creates a registry access descriptor from a raw Win32 access mask.
  const RegistryAccess(this.value);

  /// Raw Win32 access mask.
  final REG_SAM_FLAGS value;

  /// Permission to receive change notifications ([KEY_NOTIFY]).
  static const notify = RegistryAccess(KEY_NOTIFY);

  /// Read-only access rights ([KEY_READ]).
  static const read = RegistryAccess(KEY_READ);

  /// Write access rights ([KEY_WRITE]).
  static const write = RegistryAccess(KEY_WRITE);

  /// Read and write access rights ([KEY_READ] | [KEY_WRITE]).
  static const readWrite = RegistryAccess(.new(0x2001F));

  /// Full access rights ([KEY_ALL_ACCESS]).
  static const all = RegistryAccess(KEY_ALL_ACCESS);

  /// Combines this access rights bitmask with [other].
  RegistryAccess operator |(RegistryAccess other) =>
      RegistryAccess(value | other.value);
}
