// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'base.dart';
import 'memberref.dart';
import 'scope.dart';
import 'type_aliases.dart';
import 'typedef.dart';

/// A custom (named) attribute.
class CustomAttribute extends TokenObject {
  final int attributeType;
  final int modifiedObjectToken;
  final String name;
  final Uint8List signatureBlob;

  const CustomAttribute(Scope scope, int token, this.name,
      this.modifiedObjectToken, this.attributeType, this.signatureBlob)
      : super(scope, token);

  /// Creates a custom attribute object from a provided token.
  factory CustomAttribute.fromToken(Scope scope, int token) =>
      using((Arena arena) {
        final ptkObj = arena<mdToken>();
        final ptkType = arena<mdToken>();
        final ppBlob = arena<UVCP_CONSTANT>();
        final pcbBlob = arena<ULONG>();

        final reader = scope.reader;
        final hr = reader.GetCustomAttributeProps(
            token, ptkObj, ptkType, ppBlob, pcbBlob);
        if (SUCCEEDED(hr)) {
          final member = MemberRef.fromToken(scope, ptkType.value);
          final memberParent = TypeDef.fromToken(scope, member.token);
          return CustomAttribute(scope, token, memberParent.name, ptkObj.value,
              ptkType.value, ppBlob.value.asTypedList(pcbBlob.value));
        } else {
          throw WindowsException(hr);
        }
      });

  @override
  String toString() => name;

  // TODO: Attributes can have types and constructors (e.g.
  // Windows.Foundation.Metadata.DeprecatedAttribute)
}
