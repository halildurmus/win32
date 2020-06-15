// winmd.dart

// Parse the WinMD file and interpret its metadata

// Sources of inspiration:
// https://stackoverflow.com/questions/54375771/how-to-read-a-winmd-winrt-metadata-file
// https://docs.microsoft.com/en-us/windows/win32/api/rometadataresolution/nf-rometadataresolution-rogetmetadatafile

import 'dart:io';
import 'dart:ffi';
import 'package:ffi/ffi.dart';

import 'package:win32/win32.dart';

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
    print('file');
    path = File(convertFromHString(hstrMetaDataFilePath));
  } else {
    throw WindowsException(hr);
  }

  WindowsDeleteString(hstrTypeName.address);
  WindowsDeleteString(hstrMetaDataFilePath.address);

  free(hstrTypeName);
  free(hstrMetaDataFilePath);

  return path;
}

Pointer<Uint8> ConvertToIID(String strIID) {
  final lpszIID = TEXT(strIID);
  final iid = allocate<Uint8>(count: 16);

  final hr = IIDFromString(lpszIID, iid);
  if (FAILED(hr)) {
    throw WindowsException(hr);
  }
  free(lpszIID);
  return iid;
}

Pointer<Uint8> ConvertToCLSID(String strCLSID) {
  final lpszCLSID = TEXT(strCLSID);
  final clsid = allocate<Uint8>(count: 16);

  final hr = CLSIDFromString(lpszCLSID, clsid);
  if (FAILED(hr)) {
    throw WindowsException(hr);
  }
  free(lpszCLSID);
  return clsid;
}

List<WindowsRuntimeType> metadataTypesInFile(File file) {
  final types = <WindowsRuntimeType>[];

  final pDispenser = COMObject.allocate().addressOf;
  var hr = MetaDataGetDispenser(
      ConvertToCLSID(CLSID_CorMetaDataDispenser).cast(),
      ConvertToIID(IID_IMetaDataDispenser).cast(),
      pDispenser.cast());

  if (FAILED(hr)) {
    throw WindowsException(hr);
  }

  final dispenser = IMetaDataDispenser(pDispenser.cast());
  final szFile = TEXT(file.path);
  final pReader = allocate<IntPtr>();

  hr = dispenser.OpenScope(szFile, CorOpenFlags.ofRead,
      ConvertToIID(IID_IMetaDataImport2).cast(), pReader);
  if (FAILED(hr)) {
    throw WindowsException(hr);
  }

  final reader = IMetaDataImport2(pReader.cast());

  final phEnum = allocate<IntPtr>()..value = 0;
  final rgTypeDefs = allocate<Uint32>();
  final pcTypeDefs = allocate<Uint32>();

  while (reader.EnumTypeDefs(phEnum, rgTypeDefs, 1, pcTypeDefs) == S_OK) {
    final token = rgTypeDefs.value;

    types.add(ProcessToken(reader, token));
    hr = reader.EnumTypeDefs(phEnum, rgTypeDefs, 1, pcTypeDefs);
  }
  reader.CloseEnum(phEnum.address);

  return types;
}

WindowsRuntimeType ProcessToken(IMetaDataImport reader, int token) {
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

/// Example usage:
/// ```
///   dart winmd.dart Windows.Storage.Pickers.FileOpenPicker
/// ```
void main(List<String> args) {
  // if (args.isEmpty || args.length != 1) {
  //   args = ['Windows.Globalization.Calendar'];
  // }
  // final winmdFile = metadataFileContainingType(args.first);

  final winmdFile =
      File('C:\\WINDOWS\\system32\\WinMetadata\\Windows.Globalization.winmd');
  final types = metadataTypesInFile(winmdFile);
  print(types.length);
  for (var type in types) {
    print(
        '[${type.token.toRadixString(16)}] ${type.typeName} (baseType: ${type.baseTypeToken.toRadixString(16)})');
  }

  // if (winmdFile != null) {
  //   print('Type ${args.first} can be found in ${winmdFile.path}.');

  //   print('\nOther types in the same file:');
  //   final types = metadataTypesInFile(winmdFile);

  // }
}
