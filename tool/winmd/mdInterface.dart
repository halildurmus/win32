import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'mdType.dart';
import 'utils.dart';

class WindowsRuntimeInterface {
  IMetaDataImport2 reader;

  int token;
  WindowsRuntimeTypeDef classToken;
  WindowsRuntimeTypeDef interfaceToken;
  bool isInterface;

  WindowsRuntimeInterface(this.reader, this.token, this.classToken,
      this.interfaceToken, this.isInterface);

  factory WindowsRuntimeInterface.none(IMetaDataImport2 reader) =>
      WindowsRuntimeInterface(reader, 0, WindowsRuntimeTypeDef(reader),
          WindowsRuntimeTypeDef(reader), true);

  factory WindowsRuntimeInterface.fromToken(
      IMetaDataImport2 reader, int token) {
    var type = WindowsRuntimeInterface.none(reader);

    final pClass = allocate<Uint32>();
    final ptkIface = allocate<Uint32>();

    try {
      final hr = reader.GetInterfaceImplProps(token, pClass, ptkIface);
      var classTypeDef = WindowsRuntimeTypeDef(reader);
      var interfaceTypeDef = WindowsRuntimeTypeDef(reader);

      if (tokenIsTypeRef(pClass.value)) {
        classTypeDef = WindowsRuntimeTypeDef.fromTypeRef(reader, pClass.value);
      } else if (tokenIsTypeDef(pClass.value)) {
        classTypeDef = WindowsRuntimeTypeDef.fromToken(reader, pClass.value);
      } else {
        throw WindowsException(hr);
      }
      if (tokenIsTypeRef(ptkIface.value)) {
        interfaceTypeDef =
            WindowsRuntimeTypeDef.fromTypeRef(reader, ptkIface.value);
      } else if (tokenIsTypeDef(pClass.value)) {
        interfaceTypeDef =
            WindowsRuntimeTypeDef.fromToken(reader, ptkIface.value);
      } else {
        throw WindowsException(hr);
      }

      if (hr == S_OK) {
        type = WindowsRuntimeInterface(
            reader, token, classTypeDef, interfaceTypeDef, true);
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(pClass);
      free(ptkIface);
    }

    return type;
  }
}
