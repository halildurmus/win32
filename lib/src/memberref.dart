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

class MemberRef extends TokenObject {
  final String name;
  final Uint8List signatureBlob;

  const MemberRef(Scope scope, int token, this.name, this.signatureBlob)
      : super(scope, token);

  /// Creates a module object from its given token.
  factory MemberRef.fromToken(Scope scope, int token) {
    final ptk = calloc<mdToken>();
    final szMember = stralloc(MAX_STRING_SIZE);
    final pchMember = calloc<ULONG>();
    final ppvSigBlob = calloc<PCCOR_SIGNATURE>();
    final pcbSigBlob = calloc<ULONG>();

    try {
      final reader = scope.reader;
      final hr = reader.GetMemberRefProps(token, ptk, szMember, MAX_STRING_SIZE,
          pchMember, ppvSigBlob, pcbSigBlob);

      if (SUCCEEDED(hr)) {
        return MemberRef(scope, ptk.value, szMember.toDartString(),
            ppvSigBlob.value.asTypedList(pcbSigBlob.value));
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(ptk);
      free(szMember);
      free(pchMember);
      free(ppvSigBlob);
      free(pcbSigBlob);
    }
  }

  @override
  String toString() => name;
}
