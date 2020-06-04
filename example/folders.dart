// folders.dart

// Demonstrates Windows APIs for getting standard system folders

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

String getTemporaryPath() {
  final buffer = allocate<Uint16>(count: MAX_PATH + 1).cast<Utf16>();
  final length = GetTempPath(MAX_PATH, buffer);

  if (length == 0) {
    final error = GetLastError();
    free(buffer);
    throw WindowsException('$error');
  } else {
    var path = buffer.unpackString(MAX_PATH);

    // GetTempPath adds a trailing backslash, but SHGetKnownFolderPath does not.
    // Strip off trailing backslash for consistency with other methods here.
    if (path[path.length - 1] == '\\') {
      path = path.substring(0, path.length - 1);
    }
    free(buffer);
    return path;
  }
}

String getDownloadsPath() => getPath(FOLDERID_Downloads);

String getPath(String folderID) {
  GUID knownFolderID = GUID.fromString(folderID);
  Pointer<IntPtr> pathPtrPtr = allocate<IntPtr>();

  final hr = SHGetKnownFolderPath(
      knownFolderID.addressOf, KF_FLAG_DEFAULT, NULL, pathPtrPtr);

  if (FAILED(hr)) {
    if (hr == E_INVALIDARG || hr == E_FAIL) {
      throw WindowsException('Invalid folder.');
    } else {
      throw WindowsException('Unknown error.');
    }
  }

  final pathPtr = Pointer<Utf16>.fromAddress(pathPtrPtr.value);
  final path = pathPtr.unpackString(MAX_PATH);

  CoTaskMemFree(pathPtr.cast());
  free(pathPtrPtr);

  return path;
}

void main() {
  final tempPath = getTemporaryPath();
  print('Temp path is: $tempPath');

  final downloadsPath = getDownloadsPath();
  print('Downloads path is: $downloadsPath');
}
