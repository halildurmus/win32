import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'constants.dart';
import 'enums.dart';
import 'mdParameter.dart';
import 'windowsType.dart';

class WinmdMethod {
  IMetaDataImport2 reader;

  int token;
  String methodName;
  int methodFlags;
  Uint8List signature;
  int relativeVirtualAddress;
  int implFlags;

  bool get isProperty => isGetProperty | isSetProperty;
  bool isGetProperty = false;
  bool isSetProperty = false;

  List<WinmdParameter> parameters;
  WinmdParameter returnType;

  bool _testFlag(int attribute) => methodFlags & attribute == attribute;

  bool get isPrivate => _testFlag(CorMethodAttr.mdPrivate);
  bool get isPublic => _testFlag(CorMethodAttr.mdPublic);
  bool get isStatic => _testFlag(CorMethodAttr.mdStatic);
  bool get isFinal => _testFlag(CorMethodAttr.mdFinal);
  bool get isVirtual => _testFlag(CorMethodAttr.mdVirtual);
  bool get isSpecialName => _testFlag(CorMethodAttr.mdSpecialName);
  bool get isRTSpecialName => _testFlag(CorMethodAttr.mdRTSpecialName);

  WinmdMethod(this.reader, this.token, this.methodName, this.methodFlags,
      this.signature, this.relativeVirtualAddress, this.implFlags) {
    _parseMethodType();
    _parseReturnType();
    _parseParameters();
  }

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

      if (SUCCEEDED(hr)) {
        final signature = Pointer<Uint8>.fromAddress(ppvSigBlob.value)
            .asTypedList(pcbSigBlob.value);
        method = WinmdMethod(
            reader,
            token,
            szMethod.unpackString(pchMethod.value),
            pdwAttr.value,
            signature,
            pulCodeRVA.value,
            pdwImplFlags.value);

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

  bool get hasGenericParameters => (signature[0] & 0x10 == 0x10);

  void _parseMethodType() {
    if (isSpecialName && methodName.startsWith('get_')) {
      // Property getter
      isGetProperty = true;
    } else if (isSpecialName && methodName.startsWith('set_')) {
      // Property setter
      isSetProperty = true;
    }
  }

  void _parseReturnType() {
    WinmdParameter parameter;

    if (isGetProperty) {
      returnType =
          WinmdParameter.fromType(reader, WindowsRuntimeType(signature[2]));
    } else if (isSetProperty) {
      returnType = WinmdParameter.fromVoid(reader);
    } else {
      // Regular method
      final ptkParamDef = allocate<Uint32>();

      try {
        var hr = reader.GetParamForMethodIndex(token, 0, ptkParamDef);
        if (SUCCEEDED(hr)) {
          final token = ptkParamDef.value;

          if (reader.IsValidToken(token) != 0) {
            parameter = WinmdParameter.fromToken(reader, token);

            // For a standard method, the return type is index 2, unless the
            // method signature includes generic parameters, in which case there
            // is an additional value in the blob.
            parameter.typeFlag = (hasGenericParameters == false
                ? WindowsRuntimeType(signature[2])
                : WindowsRuntimeType(signature[3]));
          } else {
            print('ERROR: Invalid token');
          }

          returnType = parameter;
        } else if (hr == CLDB_E_RECORD_NOTFOUND) {
          // return type is void
          returnType = WinmdParameter.fromVoid(reader);
        } else {
          throw WindowsException(hr);
        }
      } finally {
        free(ptkParamDef);
      }
    }
  }

  String get callingConvention {
    final retVal = StringBuffer();
    final cc = signature[0];

    retVal.write('default ');
    if (cc & 0x05 == 0x05) retVal.write('vararg ');
    if (cc & 0x10 == 0x10) retVal.write('generic ');
    if (cc & 0x20 == 0x20) retVal.write('instance ');
    if (cc & 0x40 == 0x40) retVal.write('explicit ');

    return retVal.toString();
  }

  // void _setReturnType() {
  //   returnType = (hasGenericParameters == false
  //       ? WindowsRuntimeType(signature[2])
  //       : WindowsRuntimeType(signature[3]));
  // }

  void _parseParameters() {
    var paramNames = _parameterNames;

    if (_parameterNames.isNotEmpty) {
      var paramTypes = signature
          .sublist(hasGenericParameters == false ? 3 : 4)
          .map((e) => WindowsRuntimeType(e))
          .toList();

      // For non-void methods, paramNames includes a 0 index "result" which is the
      // return type token. We can discard that.
      if (paramNames.first.name == 'result') {
        paramNames = paramNames.sublist(1);
      }

      for (var idx = 0; idx < paramNames.length; idx++) {
        paramNames[idx].typeFlag = paramTypes[idx];
      }
    }

    parameters = paramNames;
  }

  List<WinmdParameter> get _parameterNames {
    if (isGetProperty) {
      return [];
    }

    final parameters = <WinmdParameter>[];

    final phEnum = allocate<IntPtr>()..value = 0;
    final ptkParamDef = allocate<Uint32>();
    final pcTokens = allocate<Uint32>();

    try {
      var hr = reader.EnumParams(phEnum, token, ptkParamDef, 1, pcTokens);
      while (hr == S_OK) {
        final token = ptkParamDef.value;

        parameters.add(WinmdParameter.fromToken(reader, token));
        hr = reader.EnumParams(phEnum, token, ptkParamDef, 1, pcTokens);
      }

      return parameters;
    } finally {
      free(ptkParamDef);
      free(pcTokens);

      reader.CloseEnum(phEnum.address);
      // dispose phEnum crashes here, so leave it allocated
    }
  }
}
