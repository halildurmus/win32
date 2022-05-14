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
import 'tokenObject.dart';
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

  /// Decode parameter values per §II.23.3 of ECMA-335.
  List<Object> get parameterValues {
    final blob = signatureBlob.toList();
    var blobIdx = 2; // skip two-byte 0x0001 prolog
    print('Blob is ${blob.length} long');
    if (_parameterValues.isEmpty) {
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
            final packedLen = UncompressedData.fromBlob(blob.sublist(blobIdx));
            final stringLength = packedLen.data;
            blobIdx += packedLen.dataLength;

            // Add decoded string value and move pointer forward
            print('$blobIdx -> $stringLength for $paramIdx');
            _parameterValues.add(const Utf8Decoder()
                .convert(blob, blobIdx, blobIdx + stringLength));
            blobIdx += stringLength;
            print(_parameterValues[paramIdx]);
            break;

          case BaseType.Uint16:
            _parameterValues
                .add(Uint16List.fromList(blob.sublist(blobIdx)).first);
            blobIdx += 2;
            break;
          case BaseType.Int16:
            _parameterValues
                .add(Int16List.fromList(blob.sublist(blobIdx)).first);
            blobIdx += 2;
            break;
          case BaseType.Uint32:
            print('Uint32 for $paramIdx');
            _parameterValues
                .add(Uint32List.fromList(blob.sublist(blobIdx)).first);
            blobIdx += 4;
            break;
          case BaseType.Int32:
            _parameterValues
                .add(Int32List.fromList(blob.sublist(blobIdx)).first);
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
