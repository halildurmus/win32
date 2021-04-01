// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '_base.dart';
import 'com/IMetaDataImport2.dart';
import 'constants.dart';
import 'module.dart';
import 'parameter.dart';
import 'pinvokemap.dart';
import 'typeidentifier.dart';
import 'utils.dart';

class Method extends TokenObject with CustomAttributes {
  String methodName;
  int attributes;
  Uint8List signatureBlob;
  int relativeVirtualAddress;
  int implFlags;

  PinvokeMap get pinvokeMap => PinvokeMap.fromToken(reader, token);

  bool get isProperty => isGetProperty | isSetProperty;
  bool isGetProperty = false;
  bool isSetProperty = false;

  List<Parameter> parameters = <Parameter>[];
  late Parameter returnType;

  bool hasAttribute(int attribute) => attributes & attribute == attribute;

  bool get isPrivate => hasAttribute(CorMethodAttr.mdPrivate);
  bool get isPublic => hasAttribute(CorMethodAttr.mdPublic);
  bool get isStatic => hasAttribute(CorMethodAttr.mdStatic);
  bool get isFinal => hasAttribute(CorMethodAttr.mdFinal);
  bool get isVirtual => hasAttribute(CorMethodAttr.mdVirtual);
  bool get isSpecialName => hasAttribute(CorMethodAttr.mdSpecialName);
  bool get isRTSpecialName => hasAttribute(CorMethodAttr.mdRTSpecialName);

  Module get module {
    final pdwMappingFlags = calloc<Uint32>();
    final szImportName = calloc<Uint16>(256).cast<Utf16>();
    final pchImportName = calloc<Uint32>();
    final ptkImportDLL = calloc<Uint32>();
    try {
      final hr = reader.GetPinvokeMap(token, pdwMappingFlags, szImportName, 256,
          pchImportName, ptkImportDLL);
      if (SUCCEEDED(hr)) {
        return Module.fromToken(reader, ptkImportDLL.value);
      } else {
        throw COMException(hr);
      }
    } finally {
      calloc.free(pdwMappingFlags);
      calloc.free(szImportName);
      calloc.free(pchImportName);
      calloc.free(ptkImportDLL);
    }
  }

  Method(IMetaDataImport2 reader, int token, this.methodName, this.attributes,
      this.signatureBlob, this.relativeVirtualAddress, this.implFlags)
      : super(reader, token) {
    _parseMethodType();
    _parseParameterNames();
    _parseSignatureBlob();
    _parseParameterAttributes();
  }

  factory Method.fromToken(IMetaDataImport2 reader, int token) {
    final pClass = calloc<Uint32>();
    final szMethod = calloc<Uint16>(256).cast<Utf16>();
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
    } else if (isSpecialName && methodName.startsWith('put_')) {
      // Property setter
      isSetProperty = true;
    }
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
    // Win32 properties are declared as such, but are represented as
    // MethodDefSig objects
    if (isGetProperty && signatureBlob[0] != 0x20) {
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
          parseTypeFromSignature(signatureBlob.sublist(2), reader)
              .typeIdentifier;
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
    // the parameters already; we're simply mapping them to types here.
    var blobPtr = hasGenericParameters == false ? 2 : 3;

    // Windows Runtime emits a zero-th parameter for the return type. So move
    // that to the returnType and parse a type from the signature.
    if (parameters.isNotEmpty && parameters.first.sequence == 0) {
      // Parse return type
      returnType = parameters.first;
      parameters = parameters.sublist(1);
      final returnTypeTuple =
          parseTypeFromSignature(signatureBlob.sublist(blobPtr), reader);
      returnType.typeIdentifier = returnTypeTuple.typeIdentifier;
      blobPtr += returnTypeTuple.offsetLength;
    } else {
      // In Win32 metadata, EnumParams does not return a zero-th parameter even
      // if there is a return type. So we create a new returnType for it.
      final returnTypeTuple =
          parseTypeFromSignature(signatureBlob.sublist(blobPtr), reader);
      returnType =
          Parameter.fromTypeIdentifier(reader, returnTypeTuple.typeIdentifier);
      blobPtr += returnTypeTuple.offsetLength;
    }

    // Parse through the params section of MethodDefSig, and map each recovered
    // type to the corresponding parameter.
    while (paramsIndex < parameters.length) {
      final runtimeType =
          parseTypeFromSignature(signatureBlob.sublist(blobPtr), reader);
      blobPtr += runtimeType.offsetLength;

      if (runtimeType.typeIdentifier.corType ==
          CorElementType.ELEMENT_TYPE_ARRAY) {
        blobPtr += _parseArray(signatureBlob.sublist(blobPtr), paramsIndex) + 2;
        paramsIndex++; //we've added two parameters here
      } else {
        parameters[paramsIndex].typeIdentifier = runtimeType.typeIdentifier;
      }
      paramsIndex++;
    }
  }

  void _parseParameterNames() {
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
      reader.CloseEnum(phEnum.value);
      calloc.free(phEnum);
      calloc.free(ptkParamDef);
      calloc.free(pcTokens);
    }
  }

  void _parseParameterAttributes() {
    // At some point, we should look this up
    const nativeTypeInfoToken = 0x0A000004;

    for (final param in parameters) {
      for (final attr in param.customAttributes) {
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

  // Various projections do smart things to mask this into a single array
  // value. We're not that clever yet, so we project it in its raw state, which
  // means a little work here to ensure that it comes out right.
  int _parseArray(Uint8List sublist, int paramsIndex) {
    final typeTuple = parseTypeFromSignature(sublist.sublist(2), reader);

    parameters[paramsIndex].name = '__valueSize';
    parameters[paramsIndex].typeIdentifier.corType =
        CorElementType.ELEMENT_TYPE_PTR;
    parameters[paramsIndex]
        .typeIdentifier
        .typeArgs
        .add(TypeIdentifier(CorElementType.ELEMENT_TYPE_U4));

    parameters.insert(paramsIndex + 1, Parameter.fromVoid(reader));
    parameters[paramsIndex + 1].name = 'value';
    parameters[paramsIndex + 1].typeIdentifier.corType =
        CorElementType.ELEMENT_TYPE_PTR;
    parameters[paramsIndex + 1]
        .typeIdentifier
        .typeArgs
        .add(typeTuple.typeIdentifier);

    return typeTuple.offsetLength;
  }

  @override
  String toString() => 'Method: $methodName';
}
