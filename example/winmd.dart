// winmd.dart

// Parse the WinMD file and interpret its metadata

// Sources of inspiration:
// https://stackoverflow.com/questions/54375771/how-to-read-a-winmd-winrt-metadata-file
// https://docs.microsoft.com/en-us/windows/win32/api/rometadataresolution/nf-rometadataresolution-rogetmetadatafile

import 'dart:io';
import 'dart:ffi';
import 'package:ffi/ffi.dart';

import 'package:win32/win32.dart';

void PrintMetadataFilePathForTypeName(String typeName) {
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

void PrintTypesInMetadataFile(String filename) {
  final pDispenser = allocate<IntPtr>();
  MetaDataGetDispenser(GUID.fromString(CLSID_CorMetaDataDispenser).addressOf,
      GUID.fromString(IID_IMetaDataDispenser).addressOf, pDispenser);

  final dispenser = IMetaDataDispenser(pDispenser.cast());

  final szFile =
      TEXT('C:\\WINDOWS\\system32\\WinMetadata\\Windows.Globalization.winmd');

  print('opening scope');
  final pReader = allocate<IntPtr>();
  dispenser.OpenScope(szFile, CorOpenFlags.ofRead,
      GUID.fromString(IID_IMetaDataImport).addressOf, pReader);
  print('scope open');

  final reader = IMetaDataImport(pReader.cast());
  print('have reader');
  final Pointer<IntPtr> phEnum = nullptr;
  final rgTypeDefs = allocate<Uint32>();
  final pcTypeDefs = allocate<Uint32>(count: 1);
  print('calling enumtypedefs');

  while (reader.EnumTypeDefs(phEnum, rgTypeDefs, 1, pcTypeDefs) == S_OK) {
    print('enumtypedefs worked');
    ProcessToken(reader, rgTypeDefs.value);
  }
  print('closing enum');
  reader.CloseEnum(phEnum.value);
}

void ProcessToken(IMetaDataImport reader, int typeID) {
  final nRead = allocate<Uint32>();
  final tdFlags = allocate<Uint32>();
  final baseClassToken = allocate<Uint32>();
  final ancestorTypeID = allocate<Uint32>();

  final typeName = allocate<Uint16>(count: 256).cast<Utf16>();

  print('getting props');
  var hr = reader.GetTypeDefProps(
      typeID, typeName, 256, nRead, tdFlags, baseClassToken);
  if (HRESULT(hr) == S_OK) {
    // final typeName = allocate<Uint16>(count: nRead.value).cast<Utf16>();
    // hr = reader.GetTypeDefProps(
    //     typeID, typeName, nRead.value, nRead, tdFlags, ancestorTypeID);
    print('${typeName.unpackString(nRead.value)}');
    return;
  } else {
    print(COMException(hr));
  }

  print('exiting props');
  // hr = reader.GetTypeRefProps(typeID, null, 0, nRead, tdFlags, baseClassToken);
  // if (HRESULT(hr) == S_OK) {
  //   final typeName = allocate<Uint16>(count: nRead.value).cast<Utf16>();
  //   hr = reader.GetTypeRefProps(
  //       typeID, typeName, nRead.value, nRead, tdFlags);
  //   print('Got it');
  //   return;
  // }
}

/// Example usage:
/// ```
///   dart winmd.dart Windows.Storage.Pickers.FileOpenPicker
/// ```
void main(List<String> args) {
  PrintTypesInMetadataFile('');

  // if (args.isEmpty || args.length != 1) {
  //   args = ['Windows.Globalization.Calendar'];
  // }
  // PrintMetadataFilePathForTypeName(args.first);
}
