// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'constants.dart';
import 'tokenobject.dart';
import 'typeidentifier.dart';
import 'attribute.dart';

/// A parameter or return type.
class Parameter extends TokenObject {
  final int sequence;
  final int attributeFlags;
  TypeIdentifier typeIdentifier;
  String name;
  final Uint8List signatureBlob;

  Parameter(IMetaDataImport2 reader, int token, this.sequence,
      this.attributeFlags, this.typeIdentifier, this.name, this.signatureBlob)
      : super(reader, token);

  factory Parameter.fromToken(IMetaDataImport2 reader, int token) {
    late Parameter parameter;

    final pmd = calloc<Uint32>();
    final pulSequence = calloc<Uint32>();
    final szName = calloc<Uint16>(256).cast<Utf16>();
    final pchName = calloc<Uint32>();
    final pdwAttr = calloc<Uint32>();
    final pdwCPlusTypeFlag = calloc<Uint32>();
    final ppValue = calloc<Uint8>(256);
    final pcchValue = calloc<Uint32>();

    final hr = reader.GetParamProps(token, pmd, pulSequence, szName, 256,
        pchName, pdwAttr, pdwCPlusTypeFlag, ppValue.cast(), pcchValue);

    if (SUCCEEDED(hr)) {
      if (pcchValue.value == 0) {
        parameter = Parameter(
            reader,
            token,
            pulSequence.value,
            pdwAttr.value,
            TypeIdentifier.fromValue(pdwCPlusTypeFlag.value),
            szName.unpackString(pchName.value),
            ppValue.asTypedList(pcchValue.value));
      }

      calloc.free(pmd);
      calloc.free(pulSequence);
      calloc.free(szName);
      calloc.free(pchName);
      calloc.free(pdwAttr);
      calloc.free(pdwCPlusTypeFlag);
      calloc.free(ppValue);
      calloc.free(pcchValue);

      return parameter;
    } else {
      throw WindowsException(hr);
    }
  }

  factory Parameter.fromTypeIdentifier(
          IMetaDataImport2 reader, TypeIdentifier runtimeType) =>
      Parameter(reader, 0, 0, 0, runtimeType, '', Uint8List(0));

  factory Parameter.fromVoid(IMetaDataImport2 reader) => Parameter(reader, 0, 0,
      0, TypeIdentifier(CorElementType.ELEMENT_TYPE_VOID), '', Uint8List(0));

  /// Enumerate all attributes that this parameter has.
  List<Attribute> get attributes {
    final attributes = <Attribute>[];

    final phEnum = calloc<IntPtr>();
    final rAttrs = calloc<Uint32>();
    final pcAttrs = calloc<Uint32>();

    try {
      var hr =
          reader.EnumCustomAttributes(phEnum, token, 0, rAttrs, 1, pcAttrs);
      while (hr == S_OK) {
        final attrToken = rAttrs.value;

        attributes.add(Attribute.fromToken(reader, attrToken));
        hr = reader.EnumCustomAttributes(phEnum, token, 0, rAttrs, 1, pcAttrs);
      }
      return attributes;
    } finally {
      reader.CloseEnum(phEnum.address);

      calloc.free(rAttrs);
      calloc.free(pcAttrs);
    }
  }
}
