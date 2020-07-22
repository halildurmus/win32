// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:collection';
import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'constants.dart';
import 'enums.dart';
import 'mdParameter.dart';
import 'mdType.dart';
import 'utils.dart';
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
      returnType = _parseBlob(signature.sublist(2));
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
            parameter.typeIdentifier =
                _parseBlob(signature.sublist(hasGenericParameters ? 3 : 2))
                    .typeIdentifier;
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

  WinmdParameter _parseBlob(Uint8List blob) {
    final paramTypes = ListQueue<int>.from(blob);

    final paramType = paramTypes.removeFirst();
    final runtimeType = WindowsRuntimeType.fromValue(paramType);

    if (runtimeType.corType == CorElementType.ELEMENT_TYPE_VALUETYPE ||
        runtimeType.corType == CorElementType.ELEMENT_TYPE_CLASS) {
      final uncompressed = corSigUncompressData(paramTypes.toList());
      for (var idx = 0; idx < uncompressed.dataLength; idx++) {
        paramTypes.removeFirst();
      }
      // print(uncompressed.data.toHexString(uncompressed.dataLength * 8));
      final token = unencodeDefRefSpecToken(uncompressed.data);
      // print(token.toHexString(32));
      final tokenAsType = WinmdType.fromToken(reader, token);
      // print(tokenAsType.typeName);
      runtimeType.name = tokenAsType.typeName;
    }
    return WinmdParameter.fromType(reader, runtimeType);
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

  void _parseParameters() {
    var paramNames = _parameterNames;

    if (paramNames.isNotEmpty) {
      final sublist = signature.sublist(hasGenericParameters == false ? 3 : 4);
      final paramTypes = ListQueue<int>.from(sublist);

      // For non-void methods, paramNames includes a return type token with a
      // sequence of 0. We can discard that.
      if (paramNames.first.sequence == 0) {
        paramNames = paramNames.sublist(1);
      }

      for (var idx = 0; idx < paramNames.length; idx++) {
        final paramType = paramTypes.removeFirst();
        if (paramType == 0x11) {
          final param = _parseBlob(sublist);
          paramNames[idx].typeIdentifier = param.typeIdentifier;
          ;
        } else {
          paramNames[idx].typeIdentifier =
              WindowsRuntimeType.fromValue(paramType);
        }
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
