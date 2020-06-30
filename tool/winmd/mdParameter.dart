import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'windowsType.dart';

class WinmdParameter {
  IMetaDataImport2 reader;

  int token;
  int sequence;
  int attributes;
  WindowsRuntimeType typeFlag;
  String name;
  int paramValueLength;

  WinmdParameter(this.reader, this.token, this.sequence, this.attributes,
      this.typeFlag, this.name, this.paramValueLength);

  factory WinmdParameter.fromToken(IMetaDataImport2 reader, int token) {
    WinmdParameter parameter;

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
        parameter = WinmdParameter(
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
}
