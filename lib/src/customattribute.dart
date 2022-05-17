// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'enums.dart';
import 'memberref.dart';
import 'scope.dart';
import 'token_object.dart';
import 'type_aliases.dart';
import 'typedef.dart';
import 'typeidentifier.dart';
import 'utils/blob.dart';
import 'utils/typetuple.dart';

/// A custom (named) attribute.
class CustomAttribute extends TokenObject {
  final int attributeType;
  final int modifiedObjectToken;
  final Uint8List signatureBlob;
  final MemberRef memberRef;
  final TypeDef constructor;
  final List<TypeIdentifier> _parameterTypes = <TypeIdentifier>[];
  final List<Object> _parameterValues = <Object>[];

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

  /// Decode attribute parameter types
  List<TypeIdentifier> get parameterTypes {
    if (_parameterTypes.isEmpty) {
      final typeSignatureBlob = memberRef.signatureBlob;
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
        _parameterTypes.add(runtimeType.typeIdentifier);
        // }
        paramsIndex++;
      }
      _parameterTypes.removeAt(0); // throw away return type
    }

    return _parameterTypes;
  }

  /// Decode parameter values per §II.23.3 of ECMA-335.
  List<Object> get parameterValues {
    if (_parameterValues.isEmpty) {
      final blob = signatureBlob.buffer.asByteData();
      var blobIdx = 2; // skip two-byte 0x0001 prolog
      for (var paramIdx = 0; paramIdx < _parameterTypes.length; paramIdx++) {
        var baseType = _parameterTypes[paramIdx].baseType;
        if (_parameterTypes[paramIdx].type?.isEnum == true) {
          // find the type of the .value property (likely an Int32 or
          // Uint32) and use that instead...
          baseType = _parameterTypes[paramIdx]
              .type!
              .fields
              .first
              .typeIdentifier
              .baseType;
        }
        switch (baseType) {
          case BaseType.String:
            // Get string length and move pointer forward
            final packedLen =
                UncompressedData.fromBlob(blob.buffer.asUint8List(blobIdx, 4));
            final stringLength = packedLen.data;
            blobIdx += packedLen.dataLength;

            // Add decoded string value and move pointer forward
            _parameterValues.add(const Utf8Decoder()
                .convert(blob.buffer.asUint8List(blobIdx, stringLength)));
            blobIdx += stringLength;
            break;

          case BaseType.Uint16:
            _parameterValues.add(blob.getUint16(blobIdx, Endian.little));
            blobIdx += 2;
            break;
          case BaseType.Int16:
            _parameterValues.add(blob.getInt16(blobIdx, Endian.little));
            blobIdx += 2;
            break;
          case BaseType.Uint32:
            _parameterValues.add(blob.getUint32(blobIdx, Endian.little));
            blobIdx += 4;
            break;
          case BaseType.Int32:
            _parameterValues.add(blob.getInt32(blobIdx, Endian.little));
            blobIdx += 4;
            break;
          default:
            blobIdx += 4; // guess
            _parameterValues.add(0);
            print('Unexpected attribute type for index $paramIdx');
        }
      }
    }
    return _parameterValues;
  }
}
