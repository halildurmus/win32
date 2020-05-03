// knownfolder.dart

// Shows usage of shell APIs to retrieve user's home dir

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// Get the path for a known Windows folder, using the classic (deprecated) API
String getFolderPath() {
  var path = allocate<Uint16>(count: MAX_PATH);

  final result = SHGetFolderPath(NULL, CSIDL_MYDOCUMENTS, NULL, 0, path);

  if (SUCCEEDED(result)) {
    return path.cast<Utf16>().unpackString(MAX_PATH);
  } else {
    return 'error code 0x${result.toUnsigned(32).toRadixString(16)}';
  }
}

/// Get the path for a known Windows folder, using the modern API
String getKnownFolderPath() {
  final guidFolder = GUID.fromString(FOLDERID_Documents);

  final ptr = allocate<IntPtr>();
  final hr = SHGetKnownFolderPath(guidFolder.addressOf, 0, 0, ptr);

  if (SUCCEEDED(hr)) {
    final path = Pointer<Utf16>.fromAddress(ptr.value).unpackString(MAX_PATH);

    CoTaskMemFree(ptr.cast<Void>());

    return path;
  } else {
    if (hr == E_FAIL) {
      return ('E_FAIL');
    } else if (hr == E_INVALIDARG) {
      return ('E_INVALIDARG');
    } else {
      return ('error code 0x${hr.toUnsigned(32).toRadixString(16)}');
    }
  }
}

void main() {
  print('SHGetFolderPath returned ${getFolderPath()}');
  print('SHGetKnownFolderPath returned ${getKnownFolderPath()}');
}
