import 'package:win32/win32.dart';

/// Represents a requested access right.
enum AccessRights {
  readOnly(KEY_READ),
  writeOnly(KEY_WRITE),
  allAccess(KEY_ALL_ACCESS);

  /// The Win32 value represented by the enumeration.
  final int win32Value;

  const AccessRights(this.win32Value);
}
