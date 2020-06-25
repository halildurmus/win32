// winmd.dart

// Parse the WinMD file and interpret its metadata

// Sources of inspiration:
// https://stackoverflow.com/questions/54375771/how-to-read-a-winmd-winrt-metadata-file
// https://docs.microsoft.com/en-us/windows/win32/api/rometadataresolution/nf-rometadataresolution-rogetmetadatafile

import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

String toHex(int value32) =>
    '0x${value32.toUnsigned(32).toRadixString(16).padLeft(8, '0')}';

class WindowsRuntimeType {
  int token;
  String typeName;
  int flags;
  int baseTypeToken;

  WindowsRuntimeType(this.token, this.typeName, this.flags, this.baseTypeToken);
}

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

IMetaDataImport2 getMetadataReader(File file) {
  final pDispenser = COMObject.allocate().addressOf;
  var hr = MetaDataGetDispenser(
      convertToCLSID(CLSID_CorMetaDataDispenser).cast(),
      convertToIID(IID_IMetaDataDispenser).cast(),
      pDispenser.cast());

  if (FAILED(hr)) {
    throw WindowsException(hr);
  }

  final dispenser = IMetaDataDispenser(pDispenser.cast());
  final szFile = TEXT(file.path);
  final pReader = allocate<IntPtr>();

  hr = dispenser.OpenScope(szFile, CorOpenFlags.ofRead,
      convertToIID(IID_IMetaDataImport2).cast(), pReader);
  if (FAILED(hr)) {
    throw WindowsException(hr);
  }
  free(pDispenser);

  final reader = IMetaDataImport2(pReader.cast());
  return reader;
}

WindowsRuntimeType processToken(IMetaDataImport2 reader, int token) {
  WindowsRuntimeType type;

  final nRead = allocate<Uint32>();
  final tdFlags = allocate<Uint32>();
  final baseClassToken = allocate<Uint32>();
  final typeName = allocate<Uint16>(count: 256).cast<Utf16>();

  var hr = reader.GetTypeDefProps(
      token, typeName, 256, nRead, tdFlags, baseClassToken);

  if (hr == S_OK) {
    type = WindowsRuntimeType(token, typeName.unpackString(nRead.value),
        tdFlags.value, baseClassToken.value);

    free(nRead);
    free(tdFlags);
    free(baseClassToken);
    free(typeName);

    return type;
  } else {
    throw WindowsException(hr);
  }
}

List<WindowsRuntimeType> metadataTypesInFile(File file) {
  final types = <WindowsRuntimeType>[];

  final reader = getMetadataReader(file);

  final phEnum = allocate<IntPtr>()..value = 0;
  final rgTypeDefs = allocate<Uint32>();
  final pcTypeDefs = allocate<Uint32>();

  var hr = reader.EnumTypeDefs(phEnum, rgTypeDefs, 1, pcTypeDefs);
  while (hr == S_OK) {
    final token = rgTypeDefs.value;

    types.add(processToken(reader, token));
    hr = reader.EnumTypeDefs(phEnum, rgTypeDefs, 1, pcTypeDefs);
  }
  reader.CloseEnum(phEnum.address);

  return types;
}

void main() {
  final winmdFile =
      metadataFileContainingType('Windows.Globalization.Calendar');
  final types = metadataTypesInFile(winmdFile);
  for (var type in types) {
    print(
        '[${toHex(type.token)}] ${type.typeName} (baseType: ${toHex(type.baseTypeToken)})');
  }
}
