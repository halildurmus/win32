// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'base.dart';
import 'com/IMetaDataImport2.dart';

/// A custom (named) attribute.
class CustomAttribute extends TokenObject {
  final int modifiedObjectToken;
  final int attributeType;
  final Uint8List signatureBlob;

  // String get name {
  //   final szString = calloc<Uint16>(256).cast<Utf16>();
  //   final ptk = calloc<Uint32>();

  //   final pchString = calloc<Uint32>();
  //   final ppBlob = calloc<Uint8>(256);
  //   final pcbBlob = calloc<Uint32>();
  //   try {
  //     print('Token: ${token.toHexString(32)}');
  //     print('Token type: ${tokenType.toHexString(32)}');

  //     final hr = reader.GetMemberRefProps(
  //         tokenType, ptk, szString, 256, pchString, ppBlob, pcbBlob);

  //     if (SUCCEEDED(hr)) {
  //       print('success');
  //       print(pchString.value);
  //       return szString.toDartString();
  //     } else {
  //       throw WindowsException(hr);
  //     }
  //   } finally {
  //     free(pchString);
  //     free(szString);
  //   }
  // }

  CustomAttribute(IMetaDataImport2 reader, int token, this.modifiedObjectToken,
      this.attributeType, this.signatureBlob)
      : super(reader, token);

  factory CustomAttribute.fromToken(IMetaDataImport2 reader, int token) {
    final ptkObj = calloc<Uint32>();
    final ptkType = calloc<Uint32>();
    final ppBlob = calloc<IntPtr>();
    final pcbBlob = calloc<Uint32>();

    try {
      final hr = reader.GetCustomAttributeProps(
          token, ptkObj, ptkType, ppBlob, pcbBlob);
      if (SUCCEEDED(hr)) {
        return CustomAttribute(
            reader,
            token,
            ptkObj.value,
            ptkType.value,
            Pointer<Uint8>.fromAddress(ppBlob.value)
                .asTypedList(pcbBlob.value));
      } else {
        throw WindowsException(hr);
      }
    } finally {
      calloc.free(pcbBlob);
      calloc.free(ppBlob);
      calloc.free(ptkType);
      calloc.free(ptkObj);
    }
  }
}
