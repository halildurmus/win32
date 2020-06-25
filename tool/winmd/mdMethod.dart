import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'enums.dart';
import 'mdParameter.dart';
import 'mdType.dart';

class WindowsRuntimeMethod {
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

  WindowsRuntimeMethod(this.reader, this.token, this.methodName,
      this.methodFlags, this.relativeVirtualAddress);

  WindowsRuntimeParameter get returnType {
    WindowsRuntimeParameter parameter;

    final ptkParamDef = allocate<Uint32>();
    var hr = reader.GetParamForMethodIndex(token, 0, ptkParamDef);
    if (SUCCEEDED(hr)) {
      final token = ptkParamDef.value;

      if (reader.IsValidToken(token) != 0) {
        parameter = processParameterToken(token);
      } else {
        print('ERROR: Invalid token');
      }
    }

    free(ptkParamDef);

    return parameter;
  }

  WindowsRuntimeParameter processParameterToken(int token) {
    WindowsRuntimeParameter parameter;

    final pmd = allocate<Uint32>();
    final pulSequence = allocate<Uint32>();
    final szName = allocate<Uint16>(count: 256).cast<Utf16>();
    final pchName = allocate<Uint32>();
    final pdwAttr = allocate<Uint32>();
    final pdwCPlusTypeFlag = allocate<Uint32>();
    final ppValue = allocate<Uint8>();
    final pcchValue = allocate<Uint32>();

    var hr = reader.GetParamProps(token, pmd, pulSequence, szName, 256, pchName,
        pdwAttr, pdwCPlusTypeFlag, ppValue, pcchValue);

    if (hr == S_OK) {
      if (pcchValue.value == 0) {
        parameter = WindowsRuntimeParameter(
            reader,
            token,
            pulSequence.value,
            pdwAttr.value,
            WindowsRuntimeType(pdwCPlusTypeFlag.value),
            szName.unpackString(pchName.value),
            pcchValue.value);
      }

      free(pmd);
      free(pulSequence);
      free(szName);
      free(pchName);
      free(pdwAttr);
      free(pdwCPlusTypeFlag);
      free(ppValue);
      free(pcchValue);

      return parameter;
    } else {
      throw WindowsException(hr);
    }
  }

  List<WindowsRuntimeParameter> get parameters {
    final parameters = <WindowsRuntimeParameter>[];

    final phEnum = allocate<IntPtr>()..value = 0;
    final ptkParamDef = allocate<Uint32>();
    final pcTokens = allocate<Uint32>();

    var hr = reader.EnumParams(phEnum, token, ptkParamDef, 1, pcTokens);
    while (hr == S_OK) {
      final token = ptkParamDef.value;

      parameters.add(processParameterToken(token));
      hr = reader.EnumParams(phEnum, token, ptkParamDef, 1, pcTokens);
    }
    reader.CloseEnum(phEnum.address);

    free(ptkParamDef);
    free(pcTokens);

    // dispose phEnum crashes here, so leave it allocated

    return parameters;
  }
}
