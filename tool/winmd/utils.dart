import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

String toHex(int value32) =>
    '0x${value32.toUnsigned(32).toRadixString(16).padLeft(8, '0')}';

/// Takes a typename (e.g. `Windows.Globalization.Calendar`) and returns the
/// metadata file that contains the type.
File metadataFileContainingType(String typeName) {
  final hstrTypeName = convertToHString(typeName);

  final hstrMetaDataFilePath = allocate<IntPtr>();
  final spMetaDataImport = allocate<IntPtr>();
  final typeDef = allocate<Uint32>();

  File path;

  // RoGetMetaDataFile can only be used for Windows Runtime classes in an app
  // that is not a Windows Store app.
  var hr = RoGetMetaDataFile(hstrTypeName.value, nullptr,
      hstrMetaDataFilePath.address, spMetaDataImport, typeDef);
  if (SUCCEEDED(hr)) {
    path = File(convertFromHString(hstrMetaDataFilePath));
  } else {
    throw WindowsException(hr);
  }

  WindowsDeleteString(hstrTypeName.value);
  WindowsDeleteString(hstrMetaDataFilePath.value);

  free(hstrTypeName);
  free(hstrMetaDataFilePath);

  return path;
}
