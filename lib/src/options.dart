import 'package:win32/win32.dart';

/// Represents options controlling how a registry key is opened or created.
///
/// Wraps native [REG_OPEN_CREATE_OPTIONS] flags and allows type-safe
/// combinations using the bitwise OR (`|`) operator.
final class RegistryOpenOptions {
  /// Creates a set of open options from a raw Win32 flag value.
  const RegistryOpenOptions(this.value);

  /// Raw Win32 option flags.
  final REG_OPEN_CREATE_OPTIONS value;

  /// Creates a non-volatile key (default) corresponding to
  /// [REG_OPTION_NON_VOLATILE].
  ///
  /// Non-volatile keys persist after system restart.
  static const nonVolatile = RegistryOpenOptions(REG_OPTION_NON_VOLATILE);

  /// Creates a volatile key ([REG_OPTION_VOLATILE]).
  ///
  /// Volatile keys exist only in memory and are removed when the corresponding
  /// registry hive is unloaded.
  static const volatile = RegistryOpenOptions(REG_OPTION_VOLATILE);

  /// Indicates the key is a symbolic link ([REG_OPTION_CREATE_LINK]).
  static const createLink = RegistryOpenOptions(REG_OPTION_CREATE_LINK);

  /// Opens the key for backup or restore operations
  /// ([REG_OPTION_BACKUP_RESTORE]).
  static const backupRestore = RegistryOpenOptions(REG_OPTION_BACKUP_RESTORE);

  /// Opens a symbolic link key rather than resolving it
  /// ([REG_OPTION_OPEN_LINK]).
  static const openLink = RegistryOpenOptions(REG_OPTION_OPEN_LINK);

  /// Disables registry virtualization for this open operation
  /// ([REG_OPTION_DONT_VIRTUALIZE]).
  static const dontVirtualize = RegistryOpenOptions(REG_OPTION_DONT_VIRTUALIZE);

  /// Combines this options bitmask set with [other].
  RegistryOpenOptions operator |(RegistryOpenOptions other) =>
      RegistryOpenOptions(value | other.value);
}
