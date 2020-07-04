// knownfolder.dart

// Shows usage of shell APIs to retrieve user's home dir

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

// Get the path of the temporary directory (typically %TEMP%)
String getTemporaryPath() {
  final buffer = allocate<Uint16>(count: MAX_PATH + 1).cast<Utf16>();
  final length = GetTempPath(MAX_PATH, buffer);

  if (length == 0) {
    final error = GetLastError();
    free(buffer);
    throw WindowsException(error);
  } else {
    var path = buffer.unpackString(MAX_PATH);

    // GetTempPath adds a trailing backslash, but SHGetKnownFolderPath does not.
    // Strip off trailing backslash for consistency with other methods here.
    if (path.endsWith('\\')) {
      path = path.substring(0, path.length - 1);
    }
    free(buffer);
    return path;
  }
}

/// Get the path for a known Windows folder, using the classic (deprecated) API
String getFolderPath() {
  var path = allocate<Uint16>(count: MAX_PATH).cast<Utf16>();

  final result = SHGetFolderPath(NULL, CSIDL_MYDOCUMENTS, NULL, 0, path);

  if (SUCCEEDED(result)) {
    return path.unpackString(MAX_PATH);
  } else {
    return 'error code 0x${result.toUnsigned(32).toRadixString(16)}';
  }
}

/// Get the path for a known Windows folder, using the modern API
String getKnownFolderPath() {
  final knownFolderID = GUID.fromString(FOLDERID_Documents);
  final pathPtrPtr = allocate<IntPtr>();

  final hr = SHGetKnownFolderPath(
      knownFolderID.addressOf, KF_FLAG_DEFAULT, NULL, pathPtrPtr);

  if (FAILED(hr)) {
    throw WindowsException(hr);
  }

  final pathPtr = Pointer<Utf16>.fromAddress(pathPtrPtr.value);
  final path = pathPtr.unpackString(MAX_PATH);

  CoTaskMemFree(pathPtr.cast());
  free(pathPtrPtr);

  return path;
}

void main() {
  print('Temporary path is ${getTemporaryPath()}');
  print('SHGetFolderPath returned ${getFolderPath()}');
  print('SHGetKnownFolderPath returned ${getKnownFolderPath()}');
}
