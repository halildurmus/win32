// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'base.dart';
import 'scope.dart';
import 'type_aliases.dart';
import 'utils/string.dart';

/// A custom (named) attribute.
class CustomAttribute extends TokenObject {
  final int attributeType;
  final int modifiedObjectToken;
  final Uint8List signatureBlob;

  CustomAttribute(Scope scope, int token, this.modifiedObjectToken,
      this.attributeType, this.signatureBlob)
      : super(scope, token);

  /// Creates a custom attribute object from its given token.
  factory CustomAttribute.fromToken(Scope scope, int token) {
    final ptkObj = calloc<mdToken>();
    final ptkType = calloc<mdToken>();
    final ppBlob = calloc<IntPtr>();
    final pcbBlob = calloc<ULONG>();

    try {
      final reader = scope.reader;
      final hr = reader.GetCustomAttributeProps(
          token, ptkObj, ptkType, ppBlob, pcbBlob);
      if (SUCCEEDED(hr)) {
        return CustomAttribute(
            scope,
            token,
            ptkObj.value,
            ptkType.value,
            Pointer<Uint8>.fromAddress(ppBlob.value)
                .asTypedList(pcbBlob.value));
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(pcbBlob);
      free(ppBlob);
      free(ptkType);
      free(ptkObj);
    }
  }

  String get name {
    final szString = stralloc(MAX_STRING_SIZE);
    final ptk = calloc<Uint32>();

    final pchString = calloc<Uint32>();
    final ppBlob = calloc<Uint8>(256);
    final pcbBlob = calloc<Uint32>();
    try {
      print('Token: ${token.toHexString(32)}');
      print('Token type: ${tokenType.toString()}');

      final hr = reader.GetMemberRefProps(
          token, ptk, szString, MAX_STRING_SIZE, pchString, ppBlob, pcbBlob);

      if (SUCCEEDED(hr)) {
        print('success');
        print(pchString.value);
        return szString.toDartString();
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(pchString);
      free(szString);
    }
  }
}
