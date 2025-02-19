import 'package:win32/win32.dart';

/// Defines the access rights for registry operations.
enum AccessRights {
  /// Grants read-only access to a registry key.
  ///
  /// Use this option to read the contents of the key and its values.
  readOnly(KEY_READ),

  /// Grants write-only access to a registry key.
  ///
  /// Use this option to modify the contents of the key or create subkeys.
  writeOnly(KEY_WRITE),

  /// Grants full access to a registry key.
  ///
  /// Use this option to perform any operation on the key, including reading,
  /// writing, and changing permissions.
  allAccess(KEY_ALL_ACCESS);

  /// Creates an [AccessRights] enum instance with the specified access flag.
  ///
  /// The [value] parameter corresponds to a Win32 API constant representing
  /// the access level.
  const AccessRights(this.value);

  /// The access level as an integer, corresponding to the Win32 API constant.
  final int value;

  @override
  String toString() => switch (this) {
    readOnly => 'KEY_READ',
    writeOnly => 'KEY_WRITE',
    allAccess => 'KEY_ALL_ACCESS',
  };
}
