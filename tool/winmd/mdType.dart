import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'mdFile.dart';
import 'mdInterface.dart';
import 'mdMethod.dart';
import 'utils.dart';

class WindowsRuntimeTypeDef {
  IMetaDataImport2 reader;

  int token;
  String typeName;
  int flags;
  int baseTypeToken;

  WindowsRuntimeTypeDef(this.reader,
      [this.token = 0,
      this.typeName = '',
      this.flags = 0,
      this.baseTypeToken = 0]);

  factory WindowsRuntimeTypeDef.fromToken(IMetaDataImport2 reader, int token) {
    var type = WindowsRuntimeTypeDef(reader);

    final nRead = allocate<Uint32>();
    final tdFlags = allocate<Uint32>();
    final baseClassToken = allocate<Uint32>();
    final typeName = allocate<Uint16>(count: 256).cast<Utf16>();

    try {
      final hr = reader.GetTypeDefProps(
          token, typeName, 256, nRead, tdFlags, baseClassToken);

      if (hr == S_OK) {
        type = WindowsRuntimeTypeDef(
            reader,
            token,
            typeName.unpackString(nRead.value),
            tdFlags.value,
            baseClassToken.value);
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(nRead);
      free(tdFlags);
      free(baseClassToken);
      free(typeName);
    }

    return type;
  }

  factory WindowsRuntimeTypeDef.fromTypeRef(
      IMetaDataImport2 refReader, int typeRefToken) {
    final ptkResolutionScope = allocate<Uint32>();
    final szName = allocate<Uint16>(count: 256).cast<Utf16>();
    final pchName = allocate<Uint32>();

    var hr = refReader.GetTypeRefProps(
        typeRefToken, ptkResolutionScope, szName, 256, pchName);
    if (hr == S_OK) {
      final typeName = szName.unpackString(pchName.value);
      final file = metadataFileContainingType(typeName);
      final winmdFile = WindowsMetadataFile(file);

      final winTypeDef = winmdFile.findTypeDef(typeName);
      return winTypeDef;
    } else {
      throw WindowsException(hr);
    }
  }

  List<WindowsRuntimeInterface> get interfaces {
    final interfaces = <WindowsRuntimeInterface>[];

    final phEnum = allocate<IntPtr>()..value = 0;
    final rImpls = allocate<Uint32>();
    final pcImpls = allocate<Uint32>();

    try {
      var hr = reader.EnumInterfaceImpls(phEnum, token, rImpls, 1, pcImpls);
      while (hr == S_OK) {
        final token = rImpls.value;

        interfaces.add(WindowsRuntimeInterface.fromToken(reader, token));
        hr = reader.EnumInterfaceImpls(phEnum, token, rImpls, 1, pcImpls);
      }
      reader.CloseEnum(phEnum.address);
    } finally {
      free(rImpls);
      free(pcImpls);

      // dispose phEnum crashes here, so leave it allocated
    }

    return interfaces;
  }

  List<WindowsRuntimeMethod> get methods {
    final methods = <WindowsRuntimeMethod>[];

    final phEnum = allocate<IntPtr>()..value = 0;
    final mdMethodDef = allocate<Uint32>();
    final pcTokens = allocate<Uint32>();

    try {
      var hr = reader.EnumMethods(phEnum, token, mdMethodDef, 1, pcTokens);
      while (hr == S_OK) {
        final token = mdMethodDef.value;

        methods.add(WindowsRuntimeMethod.fromToken(reader, token));
        hr = reader.EnumMethods(phEnum, token, mdMethodDef, 1, pcTokens);
      }
      reader.CloseEnum(phEnum.address);
    } finally {
      free(mdMethodDef);
      free(pcTokens);

      // dispose phEnum crashes here, so leave it allocated
    }

    return methods;
  }

  WindowsRuntimeMethod findMethod(String methodName) {
    WindowsRuntimeMethod methodToken;

    final szName = TEXT(methodName);
    final pmb = allocate<Uint32>();

    try {
      final hr = reader.FindMethod(token, szName, nullptr, 0, pmb);
      if (hr == S_OK) {
        methodToken = WindowsRuntimeMethod.fromToken(reader, pmb.value);
      } else {
        throw COMException(hr);
      }
    } finally {
      free(szName);
      free(pmb);
    }

    return methodToken;
  }

  WindowsRuntimeTypeDef get parent {
    final ptdEnclosingClass = allocate<Uint32>();

    reader.GetNestedClassProps(token, ptdEnclosingClass);

    return WindowsRuntimeTypeDef.fromToken(reader, token);
  }
}
