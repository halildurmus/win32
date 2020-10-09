// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'enums.dart';
import 'md_parameter.dart';
import 'md_type.dart';
import 'md_typeidentifier.dart';
import 'utils.dart';

class WinmdMethod {
  IMetaDataImport2 reader;

  int token;
  String methodName;
  int methodFlags;
  Uint8List signatureBlob;
  int relativeVirtualAddress;
  int implFlags;

  bool get isProperty => isGetProperty | isSetProperty;
  bool isGetProperty = false;
  bool isSetProperty = false;

  List<WinmdParameter> parameters = <WinmdParameter>[];
  late WinmdParameter returnType;

  bool _testFlag(int attribute) => methodFlags & attribute == attribute;

  bool get isPrivate => _testFlag(CorMethodAttr.mdPrivate);
  bool get isPublic => _testFlag(CorMethodAttr.mdPublic);
  bool get isStatic => _testFlag(CorMethodAttr.mdStatic);
  bool get isFinal => _testFlag(CorMethodAttr.mdFinal);
  bool get isVirtual => _testFlag(CorMethodAttr.mdVirtual);
  bool get isSpecialName => _testFlag(CorMethodAttr.mdSpecialName);
  bool get isRTSpecialName => _testFlag(CorMethodAttr.mdRTSpecialName);

  WinmdMethod(this.reader, this.token, this.methodName, this.methodFlags,
      this.signatureBlob, this.relativeVirtualAddress, this.implFlags) {
    _parseMethodType();
    _parseParameterNames();
    _parseParameters();
  }

  factory WinmdMethod.fromToken(IMetaDataImport2 reader, int token) {
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
        return WinmdMethod(
            reader,
            token,
            szMethod.unpackString(pchMethod.value),
            pdwAttr.value,
            signature,
            pulCodeRVA.value,
            pdwImplFlags.value);
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

  bool get hasGenericParameters => signatureBlob[0] & 0x10 == 0x10;

  void _parseMethodType() {
    if (isSpecialName && methodName.startsWith('get_')) {
      // Property getter
      isGetProperty = true;
    } else if (isSpecialName && methodName.startsWith('set_')) {
      // Property setter
      isSetProperty = true;
    }
  }

  /// Parse a single type from the signature blob.
  ///
  /// Returns a Tuple containing the runtime type and the number of bytes
  /// consumed.
  ///
  /// Details on the blob format can be found at §II.23.1.16 of ECMA-335.
  Tuple<WinmdTypeIdentifier, int?> _parseTypeFromSignature(
      Uint8List signatureBlob) {
    final paramType = signatureBlob.first;
    final runtimeType = WinmdTypeIdentifier.fromValue(paramType);
    int? dataLength;

    if (runtimeType.corType == CorElementType.ELEMENT_TYPE_VALUETYPE ||
        runtimeType.corType == CorElementType.ELEMENT_TYPE_CLASS) {
      final uncompressed = corSigUncompressData(signatureBlob.sublist(1));
      final token = unencodeDefRefSpecToken(uncompressed.data);
      final tokenAsType = WinmdType.fromToken(reader, token);

      dataLength = uncompressed.dataLength + 1;
      runtimeType.name = tokenAsType.typeName;
      runtimeType.type = tokenAsType;
    } else if (runtimeType.corType == CorElementType.ELEMENT_TYPE_BYREF &&
        signatureBlob[1] == 0x1D) {
      // array
      runtimeType.corType = CorElementType.ELEMENT_TYPE_ARRAY;
    } else if (runtimeType.corType == CorElementType.ELEMENT_TYPE_GENERICINST) {
      final classTuple = _parseTypeFromSignature(signatureBlob.sublist(1));
      runtimeType.name = classTuple.item1.name;
      final argsCount =
          signatureBlob[1 + classTuple.item2!]; // GENERICINST + class
      dataLength = classTuple.item2! + 2; // GENERICINST + class + argsCount
      for (var idx = 0; idx < argsCount; idx++) {
        final arg = _parseTypeFromSignature(signatureBlob.sublist(dataLength!));
        dataLength += arg.item2!;
        runtimeType.typeArgs.add(arg.item1);
      }
    } else {
      dataLength = 1;
      runtimeType.name = runtimeType.nativeType;
    }
    return Tuple<WinmdTypeIdentifier, int?>(runtimeType, dataLength);
  }

  String get callingConvention {
    final retVal = StringBuffer();
    final cc = signatureBlob[0];

    retVal.write('default ');
    if (cc & 0x05 == 0x05) retVal.write('vararg ');
    if (cc & 0x10 == 0x10) retVal.write('generic ');
    if (cc & 0x20 == 0x20) retVal.write('instance ');
    if (cc & 0x40 == 0x40) retVal.write('explicit ');

    return retVal.toString();
  }

  /// Parses the parameters and return type for this method.
  ///
  /// The method might actually be a property getter or setter, so we also have
  /// to handle those conditions.
  void _parseParameters() {
    var paramsIndex = 0;

    // Strip off the header and the paramCount. We use the paramNames
    // enumeration to determine how many parameters there are to index.
    var blobPtr = hasGenericParameters == false ? 2 : 3;

    if (isGetProperty) {
      returnType = WinmdParameter.fromTypeIdentifier(
          reader, _parseTypeFromSignature(signatureBlob.sublist(2)).item1)
        ..name = 'value';
    } else if (isSetProperty) {
      returnType = WinmdParameter.fromVoid(reader);
    } else {
      // We're parsing a method
      if (parameters.isNotEmpty) {
        if (parameters.first.sequence == 0) {
          // Parse return type
          returnType = parameters.first;
          parameters = parameters.sublist(1);
          final returnTypeTuple =
              _parseTypeFromSignature(signatureBlob.sublist(blobPtr));
          returnType.typeIdentifier = returnTypeTuple.item1;
          blobPtr += returnTypeTuple.item2!;
        } else {
          // Set return type to void
          returnType = WinmdParameter.fromVoid(reader);
          blobPtr += 1;
        }

        // Parse each method parameter
        while (paramsIndex < parameters.length) {
          final runtimeType =
              _parseTypeFromSignature(signatureBlob.sublist(blobPtr));
          if (runtimeType.item1.corType == CorElementType.ELEMENT_TYPE_ARRAY) {
            blobPtr +=
                _parseArray(signatureBlob.sublist(blobPtr + 1), paramsIndex)! +
                    2;
            paramsIndex++; //we've added two parameters here
          } else {
            parameters[paramsIndex].typeIdentifier = runtimeType.item1;
            blobPtr += runtimeType.item2!;
          }
          paramsIndex++;
        }
      } else {
        // paramNames is empty, so we're dealing with a void method with void
        // parameters.
        returnType = WinmdParameter.fromVoid(reader);
      }
    }
  }

  void _parseParameterNames() {
    if (!isGetProperty) {
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
      } finally {
        free(ptkParamDef);
        free(pcTokens);

        reader.CloseEnum(phEnum.address);
        // dispose phEnum crashes here, so leave it allocated
      }
    }
  }

  int? _parseArray(Uint8List sublist, int paramsIndex) {
    final typeTuple = _parseTypeFromSignature(sublist.sublist(1));

    parameters[paramsIndex].name = '__valueSize';
    parameters[paramsIndex].typeIdentifier.name = 'Pointer<Uint32>';
    parameters.insert(paramsIndex + 1, WinmdParameter.fromVoid(reader));
    parameters[paramsIndex + 1].name = 'value';
    parameters[paramsIndex + 1].typeIdentifier.name = 'Pointer<IntPtr>';

    return typeTuple.item2;
  }
}
