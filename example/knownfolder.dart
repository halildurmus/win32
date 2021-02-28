// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Shows usage of shell APIs to retrieve user's home dir

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

// Get the path of the temporary directory (typically %TEMP%)
String getTemporaryPath() {
  final buffer = calloc<Uint16>(MAX_PATH + 1).cast<Utf16>();
  final length = GetTempPath(MAX_PATH, buffer);

  if (length == 0) {
    final error = GetLastError();
    free(buffer);
    throw WindowsException(error);
  } else {
    var path = buffer.toDartString();

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
  final path = calloc<Uint16>(MAX_PATH).cast<Utf16>();

  final result = SHGetFolderPath(NULL, CSIDL_DESKTOP, NULL, 0, path);

  if (SUCCEEDED(result)) {
    return path.toDartString();
  } else {
    return 'error code 0x${result.toUnsigned(32).toRadixString(16)}';
  }
}

/// Get the path for a known Windows folder, using the modern API
String getKnownFolderPath() {
  final knownFolderID = calloc<GUID>()..ref.setGUID(FOLDERID_Desktop);
  final pathPtrPtr = calloc<Pointer<Utf16>>();

  try {
    final hr =
        SHGetKnownFolderPath(knownFolderID, KF_FLAG_DEFAULT, NULL, pathPtrPtr);

    if (FAILED(hr)) {
      throw WindowsException(hr);
    }

    final path = pathPtrPtr.value.toDartString();
    return path;
  } finally {
    free(knownFolderID);
    free(pathPtrPtr);
  }
}

void main() {
  print('Temporary path is ${getTemporaryPath()}');
  print('SHGetFolderPath returned ${getFolderPath()}');
  print('SHGetKnownFolderPath returned ${getKnownFolderPath()}');
}
