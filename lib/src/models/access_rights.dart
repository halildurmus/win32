import 'package:win32/win32.dart';

/// Represents a requested access right.
enum AccessRights {
  readOnly(REG_SAM_FLAGS.KEY_READ),
  writeOnly(REG_SAM_FLAGS.KEY_WRITE),
  allAccess(REG_SAM_FLAGS.KEY_ALL_ACCESS);

  /// The Win32 value represented by the enumeration.
  final int win32Value;

  const AccessRights(this.win32Value);
}
