import 'package:win32/win32.dart';

/// Represents a requested access right.
enum AccessRights { readOnly, writeOnly, allAccess }

extension ConvertAccessRightsToWin32 on AccessRights {
  int get win32Value {
    switch (this) {
      case AccessRights.readOnly:
        return KEY_READ;
      case AccessRights.writeOnly:
        return KEY_WRITE;
      case AccessRights.allAccess:
        return KEY_ALL_ACCESS;
    }
  }
}
