// Demonstrates usage of various shell APIs to retrieve known folder locations.

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

// Get the path of the temporary directory (typically %TEMP%)
String getTemporaryPath() {
  final buffer = Pwstr.allocate(MAX_PATH + 1);
  final length = GetTempPath(MAX_PATH, buffer.ptr);
  if (length == 0) {
    throw WindowsException(GetLastError().toHRESULT());
  }

  var path = buffer.toDartString();
  // GetTempPath adds a trailing backslash, but SHGetKnownFolderPath does
  // not. Strip off trailing backslash for consistency with other methods
  // here.
  if (path.endsWith(r'\')) {
    path = path.substring(0, path.length - 1);
  }

  return path;
}

/// Get the path for a known Windows folder, using the modern Win32 API.
String? getDesktopPath1() {
  final result = SHGetKnownFolderPath(
    FOLDERID_Desktop.ptr,
    KF_FLAG_DEFAULT,
    null,
  );
  if (result.isNull) return null;
  final path = result.toDartString();
  free(result);
  return path;
}

/// Get the path for a known Winodws folder, using the COM API.
String? getDesktopPath2() {
  CoInitializeEx(COINIT_MULTITHREADED);
  final knownFolderManager = createInstance<IKnownFolderManager>(
    KnownFolderManager,
  );
  final knownFolder = knownFolderManager.getFolder(FOLDERID_Desktop.ptr)!;
  final path = knownFolder.getPath(0).toDartString();
  return path;
}

void main() {
  print('Temporary path is ${getTemporaryPath()}\n');
  print('SHGetKnownFolderPath returned ${getDesktopPath1()}');
  print('IKnownFolder returned ${getDesktopPath2()}');
}
