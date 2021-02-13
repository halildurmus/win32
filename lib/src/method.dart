// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'constants.dart';
import '_base.dart';
import 'parameter.dart';
import 'typedef.dart';
import 'typeidentifier.dart';
import 'utils.dart';

class Method extends AttributeObject {
  String methodName;
  int methodFlags;
  Uint8List signatureBlob;
  int relativeVirtualAddress;
  int implFlags;

  bool get isProperty => isGetProperty | isSetProperty;
  bool isGetProperty = false;
  bool isSetProperty = false;

  List<Parameter> parameters = <Parameter>[];
  late Parameter returnType;

  bool _testFlag(int attribute) => methodFlags & attribute == attribute;

  bool get isPrivate => _testFlag(CorMethodAttr.mdPrivate);
  bool get isPublic => _testFlag(CorMethodAttr.mdPublic);
  bool get isStatic => _testFlag(CorMethodAttr.mdStatic);
  bool get isFinal => _testFlag(CorMethodAttr.mdFinal);
  bool get isVirtual => _testFlag(CorMethodAttr.mdVirtual);
  bool get isSpecialName => _testFlag(CorMethodAttr.mdSpecialName);
  bool get isRTSpecialName => _testFlag(CorMethodAttr.mdRTSpecialName);

  Method(IMetaDataImport2 reader, int token, this.methodName, this.methodFlags,
      this.signatureBlob, this.relativeVirtualAddress, this.implFlags)
      : super(reader, token) {
    _parseMethodType();
    _parseParameterNames();
    _parseSignatureBlob();
    _parseParameterAttributes();
  }

  factory Method.fromToken(IMetaDataImport2 reader, int token) {
    final pClass = calloc<Uint32>();
    final szMethod = calloc<Uint16>(256 * 2).cast<Utf16>();
    final pchMethod = calloc<Uint32>();
    final pdwAttr = calloc<Uint32>();
    final ppvSigBlob = calloc<IntPtr>();
    final pcbSigBlob = calloc<Uint32>();
    final pulCodeRVA = calloc<Uint32>();
    final pdwImplFlags = calloc<Uint32>();

    try {
      final hr = reader.GetMethodProps(token, pClass, szMethod, 256, pchMethod,
          pdwAttr, ppvSigBlob.cast(), pcbSigBlob, pulCodeRVA, pdwImplFlags);

      if (SUCCEEDED(hr)) {
        final signature = Pointer<Uint8>.fromAddress(ppvSigBlob.value)
            .asTypedList(pcbSigBlob.value);
        return Method(reader, token, szMethod.toDartString(), pdwAttr.value,
            signature, pulCodeRVA.value, pdwImplFlags.value);
      } else {
        throw WindowsException(hr);
      }
    } finally {
      calloc.free(pClass);
      calloc.free(szMethod);
      calloc.free(pchMethod);
      calloc.free(pdwAttr);
      calloc.free(ppvSigBlob);
      calloc.free(pcbSigBlob);
      calloc.free(pulCodeRVA);
      calloc.free(pdwImplFlags);
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
  /// Returns a [TypeTuple] containing the runtime type and the number of bytes
  /// consumed.
  ///
  /// Details on the blob format can be found at §II.23.1.16 and §II.23.2 of
  /// ECMA-335.
  TypeTuple _parseTypeFromSignature(Uint8List signatureBlob) {
    final paramType = signatureBlob.first;
    final runtimeType = TypeIdentifier.fromValue(paramType);
    var dataLength = 0;

    if (runtimeType.corType == CorElementType.ELEMENT_TYPE_VALUETYPE ||
        runtimeType.corType == CorElementType.ELEMENT_TYPE_CLASS) {
      final uncompressed = corSigUncompressData(signatureBlob.sublist(1));
      final token = unencodeDefRefSpecToken(uncompressed.data);
      final tokenAsType = TypeDef.fromToken(reader, token);

      dataLength = uncompressed.dataLength + 1;
      runtimeType.name = tokenAsType.typeName;
      runtimeType.type = tokenAsType;
    } else if (runtimeType.corType == CorElementType.ELEMENT_TYPE_BYREF &&
        signatureBlob[1] == 0x1D) {
      // array
      runtimeType.corType = CorElementType.ELEMENT_TYPE_ARRAY;
    } else if (runtimeType.corType == CorElementType.ELEMENT_TYPE_GENERICINST) {
      final classTuple = _parseTypeFromSignature(signatureBlob.sublist(1));
      runtimeType.name = classTuple.typeIdentifier.name;
      final argsCount =
          signatureBlob[1 + classTuple.offsetLength]; // GENERICINST + class
      dataLength =
          classTuple.offsetLength + 2; // GENERICINST + class + argsCount
      for (var idx = 0; idx < argsCount; idx++) {
        final arg = _parseTypeFromSignature(signatureBlob.sublist(dataLength));
        dataLength += arg.offsetLength;
        runtimeType.typeArgs.add(arg.typeIdentifier);
      }
    } else {
      dataLength = 1;
      runtimeType.name = runtimeType.toString();
    }
    return TypeTuple(runtimeType, dataLength);
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

  /// Parses the parameters and return type for this method from the
  /// [signatureBlob], which is of type `MethodDefSig` (or `PropertySig`, if the
  /// method is a property getter). This is documented in §II.23.2.1 and
  /// §II.23.2.5 respectively.
  void _parseSignatureBlob() {
    if (isGetProperty || isSetProperty) {
      _parsePropertySig();
    } else {
      _parseMethodDefSig();
    }
  }

  /// Parse a property from the signature blob. Properties have the following
  /// format: [type | paramCount | customMod | type | param]
  ///
  /// `PropertySig` is defined in §II.23.2.5.
  void _parsePropertySig() {
    if (isGetProperty) {
      // Type should begin at index 2
      final typeIdentifier =
          _parseTypeFromSignature(signatureBlob.sublist(2)).typeIdentifier;
      returnType = Parameter.fromTypeIdentifier(reader, typeIdentifier);
    } else if (isSetProperty) {
      // set properties don't have a return type
      returnType = Parameter.fromVoid(reader);
    }
  }

  /// Parses the parameters and return type for this method from the
  /// [signatureBlob], which is of type `MethodDefSig`. This is documented in
  /// §II.23.2.1.
  ///
  /// This is of format:
  ///   [callConv | genParamCount | paramCount | retType | param...]
  void _parseMethodDefSig() {
    var paramsIndex = 0;

    // Strip off the header and the paramCount. We know the number and names of
    // the parameters already, and we're simply mapping them to types here.
    var blobPtr = hasGenericParameters == false ? 2 : 3;

    if (parameters.isNotEmpty) {
      // In some implementations (e.g. Windows Runtime), param.EnumParams
      // includes the return type as a zeroth sequence number. If that's the
      // case, we already have a return parameter, and we can use this for the
      // returnType, then strip it off the parameter list.
      if (parameters.first.sequence == 0) {
        // Parse return type
        returnType = parameters.first;
        parameters = parameters.sublist(1);
        final returnTypeTuple =
            _parseTypeFromSignature(signatureBlob.sublist(blobPtr));
        returnType.typeIdentifier = returnTypeTuple.typeIdentifier;
        blobPtr += returnTypeTuple.offsetLength;
      } else {
        // In Win32 EnumParams does not return a zeroth parameter even if there
        // is a return type. So we create a new returnType for it.
        final returnTypeTuple =
            _parseTypeFromSignature(signatureBlob.sublist(blobPtr));
        returnType = Parameter.fromTypeIdentifier(
            reader, returnTypeTuple.typeIdentifier);
        blobPtr += returnTypeTuple.offsetLength;
      }

      // Now we're at the parameters section of MethodDefSig. Parse each method
      // parameter.
      while (paramsIndex < parameters.length) {
        final runtimeType =
            _parseTypeFromSignature(signatureBlob.sublist(blobPtr));

        if (runtimeType.typeIdentifier.corType ==
            CorElementType.ELEMENT_TYPE_ARRAY) {
          blobPtr +=
              _parseArray(signatureBlob.sublist(blobPtr + 1), paramsIndex)! + 2;
          paramsIndex++; //we've added two parameters here
        } else if (runtimeType.typeIdentifier.corType ==
            CorElementType.ELEMENT_TYPE_PTR) {
          // Pointer<T>, so parse the type of T.
          blobPtr += runtimeType.offsetLength;
          final ptrType =
              _parseTypeFromSignature(signatureBlob.sublist(blobPtr));
          parameters[paramsIndex].typeIdentifier = runtimeType.typeIdentifier;
          parameters[paramsIndex]
              .typeIdentifier
              .typeArgs
              .add(ptrType.typeIdentifier);
          blobPtr += ptrType.offsetLength;
        } else {
          parameters[paramsIndex].typeIdentifier = runtimeType.typeIdentifier;

          blobPtr += runtimeType.offsetLength;
        }
        paramsIndex++;
      }
    } else {
      // paramNames is empty, so we're dealing with a void method with void
      // parameters.
      returnType = Parameter.fromVoid(reader);
    }
  }

  void _parseParameterNames() {
    if (!isGetProperty) {
      final phEnum = calloc<IntPtr>();
      final ptkParamDef = calloc<Uint32>();
      final pcTokens = calloc<Uint32>();

      try {
        var hr = reader.EnumParams(phEnum, token, ptkParamDef, 1, pcTokens);
        while (hr == S_OK) {
          final token = ptkParamDef.value;

          parameters.add(Parameter.fromToken(reader, token));
          hr = reader.EnumParams(phEnum, token, ptkParamDef, 1, pcTokens);
        }
      } finally {
        calloc.free(ptkParamDef);
        calloc.free(pcTokens);

        reader.CloseEnum(phEnum.address);
        // dispose phEnum crashes here, so leave it allocated
      }
    }
  }

  void _parseParameterAttributes() {
    // At some point, we should look this up
    const nativeTypeInfoToken = 0x0A000004;

    for (final param in parameters) {
      for (final attr in param.attributes) {
        if (attr.tokenType == nativeTypeInfoToken) {
          if (attr.signatureBlob[2] == 0x14) // ASCII
          {
            param.typeIdentifier.name = 'LPSTR';
          } else if (attr.signatureBlob[2] == 0x15) // Unicode
          {
            param.typeIdentifier.name = 'LPWSTR';
          }
        }
      }
    }
  }

  int? _parseArray(Uint8List sublist, int paramsIndex) {
    final typeTuple = _parseTypeFromSignature(sublist.sublist(1));

    parameters[paramsIndex].name = '__valueSize';
    parameters[paramsIndex].typeIdentifier.name = 'Pointer<Uint32>';
    parameters.insert(paramsIndex + 1, Parameter.fromVoid(reader));
    parameters[paramsIndex + 1].name = 'value';
    parameters[paramsIndex + 1].typeIdentifier.name = 'Pointer<IntPtr>';

    return typeTuple.offsetLength;
  }
}
