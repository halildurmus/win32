// winmd.dart

// Parse the WinMD file and interpret its metadata

// Sources of inspiration:
// https://stackoverflow.com/questions/54375771/how-to-read-a-winmd-winrt-metadata-file
// https://docs.microsoft.com/en-us/windows/win32/api/rometadataresolution/nf-rometadataresolution-rogetmetadatafile

import 'dart:io';
import 'dart:ffi';
import 'package:ffi/ffi.dart';

import 'package:win32/win32.dart';

void PrintMetaDataFilePathForTypeName(String typeName) {
  final hstrTypeName = convertToHString(typeName);

  final hstrMetaDataFilePath = allocate<IntPtr>();
  final spMetaDataImport = allocate<IntPtr>();
  final typeDef = allocate<Uint32>();

  // RoGetMetaDataFile can only be used for Windows Runtime classes in an app
  // that is not a Windows Store app.
  var hr = RoGetMetaDataFile(hstrTypeName.value, nullptr,
      hstrMetaDataFilePath.address, spMetaDataImport, typeDef);
  if (SUCCEEDED(hr)) {
    print(
        'Type $typeName was found in ${convertFromHString(hstrMetaDataFilePath)}');
  } else {
    print(COMException(hr));
    exitCode = hr;
  }

  if (hstrTypeName != nullptr) {
    WindowsDeleteString(hstrTypeName.address);
  }

  if (hstrMetaDataFilePath != nullptr) {
    WindowsDeleteString(hstrMetaDataFilePath.address);
  }
}

/// Example usage:
/// ```
///   dart winmd.dart Windows.Storage.Pickers.FileOpenPicker
/// ```
void main(List<String> args) {
  if (args.isEmpty || args.length != 1) {
    args = ['Windows.Globalization.Calendar'];
  }
  PrintMetaDataFilePathForTypeName(args.first);
}
