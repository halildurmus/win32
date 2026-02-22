// Demonstrates usage of various shell APIs to retrieve known folder locations.

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

// Get the path of the temporary directory (typically %TEMP%)
String getTemporaryPath() => using((arena) {
  final buffer = arena.pwstrBuffer(MAX_PATH + 1);
  final Win32Result(value: length, :error) = GetTempPath(MAX_PATH, buffer);
  if (length == 0) throw WindowsException(error.toHRESULT());

  var path = buffer.toDartString();
  // GetTempPath adds a trailing backslash, but SHGetKnownFolderPath does
  // not. Strip off trailing backslash for consistency with other methods
  // here.
  if (path.endsWith(r'\')) {
    path = path.substring(0, path.length - 1);
  }

  return path;
});

/// Get the path for a known Windows folder, using the modern Win32 API.
String? getDesktopPath1() => using((arena) {
  final result = SHGetKnownFolderPath(
    FOLDERID_Desktop.toNative(allocator: arena),
    KF_FLAG_DEFAULT,
    null,
  );
  if (result.isNull) return null;
  final path = result.toDartString();
  free(result);
  return path;
});

/// Get the path for a known Winodws folder, using the COM API.
String? getDesktopPath2() => using((arena) {
  CoInitializeEx(COINIT_MULTITHREADED);
  final knownFolderManager = arena.com<IKnownFolderManager>(KnownFolderManager);
  final knownFolder = arena.adopt(
    knownFolderManager.getFolder(FOLDERID_Desktop.toNative(allocator: arena))!,
  );
  final path = arena.using(knownFolder.getPath(0), free);
  return path.toDartString();
});

void main() {
  print('Temporary path is ${getTemporaryPath()}');
  print('SHGetKnownFolderPath returned ${getDesktopPath1()}');
  print('IKnownFolder returned ${getDesktopPath2()}');
}
