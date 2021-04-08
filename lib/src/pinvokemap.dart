import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'base.dart';
import 'com/IMetaDataImport2.dart';

class PinvokeMap extends TokenObject {
  final int attributes;
  final String importName;
  final int importDllToken;
  final String moduleName;

  bool hasAttribute(int attribute) => attributes & attribute == attribute;

  const PinvokeMap(IMetaDataImport2 reader, int token, this.attributes,
      this.importName, this.importDllToken, this.moduleName)
      : super(reader, token);

  factory PinvokeMap.fromToken(IMetaDataImport2 reader, int token) {
    final pdwMappingFlags = calloc<Uint32>();
    final szImportName = calloc<Uint16>(256).cast<Utf16>();
    final pchImportName = calloc<Uint32>();
    final ptkImportDLL = calloc<Uint32>();
    final szModuleName = calloc<Uint16>(256).cast<Utf16>();
    final pchModuleName = calloc<Uint32>();

    try {
      var hr = reader.GetPinvokeMap(token, pdwMappingFlags, szImportName, 256,
          pchImportName, ptkImportDLL);
      if (SUCCEEDED(hr)) {
        hr = reader.GetModuleRefProps(
            ptkImportDLL.value, szModuleName, 256, pchModuleName);

        final moduleName = SUCCEEDED(hr) ? szModuleName.toDartString() : '';

        return PinvokeMap(reader, token, pdwMappingFlags.value,
            szImportName.toDartString(), ptkImportDLL.value, moduleName);
      } else {
        throw WindowsException(hr);
      }
    } finally {
      calloc.free(pdwMappingFlags);
      calloc.free(szImportName);
      calloc.free(pchImportName);
      calloc.free(ptkImportDLL);
    }
  }
}
