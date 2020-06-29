import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'enums.dart';
import 'mdParameter.dart';

class WinmdMethod {
  IMetaDataImport2 reader;

  int token;
  String methodName;
  int methodFlags;
  int relativeVirtualAddress;

  bool _testFlag(int attribute) => methodFlags & attribute == attribute;

  bool get isPrivate => _testFlag(CorMethodAttr.mdPrivate);
  bool get isPublic => _testFlag(CorMethodAttr.mdPublic);
  bool get isStatic => _testFlag(CorMethodAttr.mdStatic);
  bool get isFinal => _testFlag(CorMethodAttr.mdFinal);
  bool get isVirtual => _testFlag(CorMethodAttr.mdVirtual);
  bool get isSpecialName => _testFlag(CorMethodAttr.mdSpecialName);
  bool get isRTSpecialName => _testFlag(CorMethodAttr.mdRTSpecialName);

  WinmdMethod(this.reader, this.token, this.methodName, this.methodFlags,
      this.relativeVirtualAddress);

  factory WinmdMethod.fromToken(IMetaDataImport2 reader, int token) {
    WinmdMethod method;

    final pClass = allocate<Uint32>();
    final szMethod = allocate<Uint16>(count: 256).cast<Utf16>();
    final pchMethod = allocate<Uint32>();
    final pdwAttr = allocate<Uint32>();
    final ppvSigBlob = allocate<IntPtr>();
    final pcbSigBlob = allocate<Uint32>();
    final pulCodeRVA = allocate<Uint32>();
    final pdwImplFlags = allocate<Uint32>();

    try {
      final hr = reader.GetMethodProps(token, pClass, szMethod, 256, pchMethod,
          pdwAttr, ppvSigBlob.cast(), pcbSigBlob, pulCodeRVA, pdwImplFlags);

      if (hr == S_OK) {
        method = WinmdMethod(
            reader,
            token,
            szMethod.unpackString(pchMethod.value),
            pdwAttr.value,
            pulCodeRVA.value);

        return method;
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(pClass);
      free(szMethod);
      free(pchMethod);
      free(pdwAttr);
      free(ppvSigBlob);
      free(pcbSigBlob);
      free(pulCodeRVA);
      free(pdwImplFlags);
    }
  }

  WinmdParameter get returnType {
    WinmdParameter parameter;

    final ptkParamDef = allocate<Uint32>();
    var hr = reader.GetParamForMethodIndex(token, 0, ptkParamDef);
    if (SUCCEEDED(hr)) {
      final token = ptkParamDef.value;

      if (reader.IsValidToken(token) != 0) {
        parameter = WinmdParameter.fromToken(reader, token);
      } else {
        print('ERROR: Invalid token');
      }
    }

    free(ptkParamDef);

    return parameter;
  }

  List<WinmdParameter> get parameters {
    final parameters = <WinmdParameter>[];

    final phEnum = allocate<IntPtr>()..value = 0;
    final ptkParamDef = allocate<Uint32>();
    final pcTokens = allocate<Uint32>();

    var hr = reader.EnumParams(phEnum, token, ptkParamDef, 1, pcTokens);
    while (hr == S_OK) {
      final token = ptkParamDef.value;

      parameters.add(WinmdParameter.fromToken(reader, token));
      hr = reader.EnumParams(phEnum, token, ptkParamDef, 1, pcTokens);
    }
    reader.CloseEnum(phEnum.address);

    free(ptkParamDef);
    free(pcTokens);

    // dispose phEnum crashes here, so leave it allocated

    return parameters;
  }
}
