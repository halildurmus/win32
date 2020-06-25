import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'mdMethod.dart';

class WindowsRuntimeTypeDef {
  IMetaDataImport2 reader;

  int token;
  String typeName;
  int flags;
  int baseTypeToken;

  WindowsRuntimeTypeDef(
      this.reader, this.token, this.typeName, this.flags, this.baseTypeToken);

  WindowsRuntimeMethod processMethodToken(int token) {
    WindowsRuntimeMethod method;

    final pClass = allocate<Uint32>();
    final szMethod = allocate<Uint16>(count: 256).cast<Utf16>();
    final pchMethod = allocate<Uint32>();
    final pdwAttr = allocate<Uint32>();
    final ppvSigBlob = allocate<IntPtr>();
    final pcbSigBlob = allocate<Uint32>();
    final pulCodeRVA = allocate<Uint32>();
    final pdwImplFlags = allocate<Uint32>();

    var hr = reader.GetMethodProps(token, pClass, szMethod, 256, pchMethod,
        pdwAttr, ppvSigBlob.cast(), pcbSigBlob, pulCodeRVA, pdwImplFlags);

    if (hr == S_OK) {
      method = WindowsRuntimeMethod(
          reader,
          token,
          szMethod.unpackString(pchMethod.value),
          pdwAttr.value,
          pulCodeRVA.value);

      free(pClass);
      free(szMethod);
      free(pchMethod);
      free(pdwAttr);
      free(ppvSigBlob);
      free(pcbSigBlob);
      free(pulCodeRVA);
      free(pdwImplFlags);

      return method;
    } else {
      throw WindowsException(hr);
    }
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

        methods.add(processMethodToken(token));
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
        methodToken = processMethodToken(pmb.value);
      } else {
        throw COMException(hr);
      }
    } finally {
      free(szName);
      free(pmb);
    }

    return methodToken;
  }
}
