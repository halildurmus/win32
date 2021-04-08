// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'base.dart';
import 'com/IMetaDataImport2.dart';
import 'constants.dart';
import 'typeidentifier.dart';

/// A parameter or return type.
class Parameter extends TokenObject with CustomAttributes {
  final int sequence;
  final int attributes;
  TypeIdentifier typeIdentifier;
  String name;
  final Uint8List signatureBlob;

  /// Returns true if the parameter is passed into the method call.
  bool get isInParam => attributes & CorParamAttr.pdIn == CorParamAttr.pdIn;

  /// Returns true if the parameter is passed from the method return.
  bool get isOutParam => attributes & CorParamAttr.pdOut == CorParamAttr.pdOut;

  /// Returns true if the parameter is optional.
  bool get isOptional =>
      attributes & CorParamAttr.pdOptional == CorParamAttr.pdOptional;

  /// Returns true if the parameter has a default value.
  bool get hasDefault =>
      attributes & CorParamAttr.pdHasDefault == CorParamAttr.pdHasDefault;

  /// Returns true if the parameter has marshaling information.
  bool get hasFieldMarshal =>
      attributes & CorParamAttr.pdHasFieldMarshal ==
      CorParamAttr.pdHasFieldMarshal;

  Parameter(IMetaDataImport2 reader, int token, this.sequence, this.attributes,
      this.typeIdentifier, this.name, this.signatureBlob)
      : super(reader, token);

  factory Parameter.fromToken(IMetaDataImport2 reader, int token) {
    final pmd = calloc<Uint32>();
    final pulSequence = calloc<Uint32>();
    final szName = calloc<Uint16>(256).cast<Utf16>();
    final pchName = calloc<Uint32>();
    final pdwAttr = calloc<Uint32>();
    final pdwCPlusTypeFlag = calloc<Uint32>();
    final ppValue = calloc<IntPtr>();
    final pcchValue = calloc<Uint32>();

    try {
      final hr = reader.GetParamProps(token, pmd, pulSequence, szName, 256,
          pchName, pdwAttr, pdwCPlusTypeFlag, ppValue.cast(), pcchValue);
      if (SUCCEEDED(hr)) {
        return Parameter(
            reader,
            token,
            pulSequence.value,
            pdwAttr.value,
            TypeIdentifier.fromValue(pdwCPlusTypeFlag.value),
            szName.toDartString(),
            Pointer<Uint8>.fromAddress(ppValue.value)
                .asTypedList(pcchValue.value));
      } else {
        throw WindowsException(hr);
      }
    } finally {
      calloc.free(pmd);
      calloc.free(pulSequence);
      calloc.free(szName);
      calloc.free(pchName);
      calloc.free(pdwAttr);
      calloc.free(pdwCPlusTypeFlag);
      calloc.free(ppValue);
      calloc.free(pcchValue);
    }
  }

  factory Parameter.fromTypeIdentifier(
          IMetaDataImport2 reader, TypeIdentifier runtimeType) =>
      Parameter(reader, 0, 0, 0, runtimeType, '', Uint8List(0));

  factory Parameter.fromVoid(IMetaDataImport2 reader) => Parameter(reader, 0, 0,
      0, TypeIdentifier(CorElementType.ELEMENT_TYPE_VOID), '', Uint8List(0));

  @override
  String toString() => 'Parameter: $name';
}
