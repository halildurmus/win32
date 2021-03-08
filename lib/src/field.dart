// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '_base.dart';
import 'com/IMetaDataImport2.dart' as md;
import 'typeidentifier.dart';

class Field extends AttributeObject {
  final String name;
  final int value;
  final TypeIdentifier typeIdentifier;
  final int corType;

  Field(md.IMetaDataImport2 reader, int token, this.name, this.value,
      this.typeIdentifier, this.corType)
      : super(reader, token);

  factory Field.fromToken(md.IMetaDataImport2 reader, int token) {
    final ptkTypeDef = calloc<Uint32>();
    final szField = calloc<Uint16>(256).cast<Utf16>();
    final pchField = calloc<Uint32>();
    final pdwAttr = calloc<Uint32>();
    final ppvSigBlob = calloc<Uint8>();
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
          ppvSigBlob,
          pcbSigBlob,
          pdwCPlusTypeFlag,
          ppValue.cast(),
          pcchValue);

      if (SUCCEEDED(hr)) {
        final fieldName = szField.toDartString();
        final ctype = pdwCPlusTypeFlag.value;
        if (ppValue.value != nullptr) {
          return Field(reader, ptkTypeDef.value, fieldName, ppValue.value.value,
              TypeIdentifier.fromValue(pdwCPlusTypeFlag.value), ctype);
        } else {
          return Field(reader, ptkTypeDef.value, fieldName, 0,
              TypeIdentifier.fromValue(pdwCPlusTypeFlag.value), ctype);
        }
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
