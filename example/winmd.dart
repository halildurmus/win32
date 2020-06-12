// winmd.dart

// Parse the WinMD file and interpret its metadata

// Sources of inspiration:
// https://stackoverflow.com/questions/54375771/how-to-read-a-winmd-winrt-metadata-file
// https://docs.microsoft.com/en-us/windows/win32/api/rometadataresolution/nf-rometadataresolution-rogetmetadatafile

import 'dart:ffi';
import 'package:ffi/ffi.dart';

import 'package:win32/win32.dart';

void PrintMetaDataFilePathForTypeName(String typeName) {
  final hstrTypeName = convertToHString(typeName);

  final hstrMetaDataFilePath = allocate<IntPtr>();
  final spMetaDataImport = allocate<IntPtr>();
  final typeDef = allocate<Uint32>();

  var hr = RoGetMetaDataFile(hstrTypeName.address, nullptr,
      hstrMetaDataFilePath.address, spMetaDataImport, typeDef);
  if (SUCCEEDED(hr)) {
    print(
        'Type $typeName was found in ${convertFromHString(hstrMetaDataFilePath)}');
  } else if (hr == RO_E_METADATA_NAME_NOT_FOUND) {
    print('Type $typeName was not found!');
  } else {
    throw COMException(hr);
  }

  if (hstrTypeName != nullptr) {
    WindowsDeleteString(hstrTypeName.address);
  }

  if (hstrMetaDataFilePath != nullptr) {
    WindowsDeleteString(hstrMetaDataFilePath.address);
  }
}

void main(List<String> args) {
  PrintMetaDataFilePathForTypeName(args.first);
}
