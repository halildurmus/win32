// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '_base.dart';
import 'com/IMetaDataImport2.dart';
import 'typeidentifier.dart';
import 'utils.dart';

class Field extends TokenObject with CustomAttributes {
  final String name;
  final int value;
  final TypeIdentifier typeIdentifier;
  final int cPlusTypeFlag;
  final int attributes;
  final Uint8List signatureBlob;

  bool hasAttribute(int attribute) => attributes & attribute == attribute;

  Field(
      IMetaDataImport2 reader,
      int token,
      this.name,
      this.value,
      this.typeIdentifier,
      this.cPlusTypeFlag,
      this.attributes,
      this.signatureBlob)
      : super(reader, token);

  factory Field.fromToken(IMetaDataImport2 reader, int token) {
    final ptkTypeDef = calloc<Uint32>();
    final szField = calloc<Uint16>(256).cast<Utf16>();
    final pchField = calloc<Uint32>();
    final pdwAttr = calloc<Uint32>();
    final ppvSigBlob = calloc<Pointer<Uint8>>();
    final pcbSigBlob = calloc<Uint32>();
    final pdwCPlusTypeFlag = calloc<Uint32>();
    final ppValue = calloc<Pointer<Uint32>>();
    final pcchValue = calloc<Uint32>();

    try {
      final hr = reader.GetFieldProps(
          token,
          ptkTypeDef,
          szField,
          256,
          pchField,
          pdwAttr,
          ppvSigBlob.cast(),
          pcbSigBlob,
          pdwCPlusTypeFlag,
          ppValue.cast(),
          pcchValue);

      if (SUCCEEDED(hr)) {
        final fieldName = szField.toDartString();
        final cPlusTypeFlag = pdwCPlusTypeFlag.value;

        // The first entry of the signature is its FieldAttribute (compare
        // against the CorFieldAttr enumeration), and then follows a type
        // identifier.
        final signature = ppvSigBlob.value.asTypedList(pcbSigBlob.value);
        final typeTuple = parseTypeFromSignature(signature.sublist(1), reader);
        return Field(
            reader,
            ptkTypeDef.value,
            fieldName,
            ppValue.value != nullptr ? ppValue.value.value : 0,
            typeTuple.typeIdentifier,
            cPlusTypeFlag,
            pdwAttr.value,
            signature);
      } else {
        throw WindowsException(hr);
      }
    } finally {
      calloc.free(ptkTypeDef);
      calloc.free(szField);
      calloc.free(pchField);
      calloc.free(pdwAttr);
      calloc.free(ppvSigBlob);
      calloc.free(pcbSigBlob);
      calloc.free(pdwCPlusTypeFlag);
      calloc.free(ppValue);
      calloc.free(pcchValue);
    }
  }

  @override
  String toString() => 'Field: $name';
}

extension ListField on List<Field> {
  int operator [](String type) => firstWhere((f) => f.name == type).value;
}
