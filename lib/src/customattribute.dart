// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'memberref.dart';
import 'scope.dart';
import 'token_object.dart';
import 'type_aliases.dart';
import 'typedef.dart';
import 'typeidentifier.dart';
import 'utils/typetuple.dart';

/// A custom (named) attribute.
class CustomAttribute extends TokenObject {
  final int attributeType;
  final int modifiedObjectToken;
  final Uint8List signatureBlob;
  final MemberRef memberRef;
  final TypeDef constructor;
  final List<TypeIdentifier> _parameterTypes = <TypeIdentifier>[];

  CustomAttribute(super.scope, super.token, this.modifiedObjectToken,
      this.memberRef, this.constructor, this.attributeType, this.signatureBlob);

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
          final memberRef = MemberRef.fromToken(scope, ptkType.value);
          final constructorTypeDef =
              TypeDef.fromToken(scope, memberRef.referencedToken);
          return CustomAttribute(
              scope,
              token,
              ptkObj.value,
              memberRef,
              constructorTypeDef,
              ptkType.value,
              ppBlob.value.asTypedList(pcbBlob.value));
        } else {
          throw WindowsException(hr);
        }
      });

  String get name => constructor.name;

  @override
  String toString() => name;

  List<TypeIdentifier> get parameterTypes {
    final typeSignatureBlob = memberRef.signatureBlob;
    if (_parameterTypes.isEmpty) {
      // Parse through the signature blob, and map each recovered
      // type to the corresponding parameter.
      var blobPtr = 1; // skip prolog
      final paramCount = typeSignatureBlob.elementAt(blobPtr++);

      var paramsIndex = 0;
      while (paramsIndex < paramCount + 1) {
        final runtimeType =
            TypeTuple.fromSignature(typeSignatureBlob.sublist(blobPtr), scope);
        blobPtr += runtimeType.offsetLength;

        // TODO: Deal with arrays. Code can be found in method.dart.

        // if (runtimeType.typeIdentifier.baseType == BaseType.ArrayTypeModifier) {
        //   blobPtr += _parseArray(signatureBlob.sublist(blobPtr), paramsIndex) + 2;
        //   paramsIndex++; //we've added two parameters here
        // } else {
        _parameterTypes.add(runtimeType.typeIdentifier);
        // }
        paramsIndex++;
      }
      _parameterTypes.removeAt(0); // throw away return type
    }

    return _parameterTypes;
  }
}
