// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'enums.dart';
import 'md_typeidentifier.dart';

class WinmdParameter {
  IMetaDataImport2 reader;

  int token;
  int? sequence;
  int attributes;
  WinmdTypeIdentifier typeIdentifier;
  String? name;
  int paramValueLength;

  WinmdParameter(this.reader, this.token, this.sequence, this.attributes,
      this.typeIdentifier, this.name, this.paramValueLength);

  factory WinmdParameter.fromToken(IMetaDataImport2 reader, int token) {
    late WinmdParameter parameter;

    final pmd = calloc<Uint32>();
    final pulSequence = calloc<Uint32>();
    final szName = calloc<Uint8>(256 * 2).cast<Utf16>();
    final pchName = calloc<Uint32>();
    final pdwAttr = calloc<Uint32>();
    final pdwCPlusTypeFlag = calloc<Uint32>();
    final ppValue = calloc<Uint8>();
    final pcchValue = calloc<Uint32>();

    final hr = reader.GetParamProps(token, pmd, pulSequence, szName, 256,
        pchName, pdwAttr, pdwCPlusTypeFlag, ppValue, pcchValue);

    if (SUCCEEDED(hr)) {
      if (pcchValue.value == 0) {
        parameter = WinmdParameter(
            reader,
            token,
            pulSequence.value,
            pdwAttr.value,
            WinmdTypeIdentifier.fromValue(pdwCPlusTypeFlag.value),
            szName.unpackString(pchName.value),
            pcchValue.value);
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

  factory WinmdParameter.fromTypeIdentifier(
          IMetaDataImport2 reader, WinmdTypeIdentifier runtimeType) =>
      WinmdParameter(reader, 0, null, 0, runtimeType, null, 0);

  factory WinmdParameter.fromVoid(IMetaDataImport2 reader) => WinmdParameter(
      reader,
      0,
      null,
      0,
      WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_VOID),
      null,
      0);
}
