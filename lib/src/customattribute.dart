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

/// A single parameter within a custom attribute.
class CustomAttributeParameter {
  final TypeIdentifier type;
  final Object value;

  const CustomAttributeParameter(this.type, this.value);
}

/// A custom (named) attribute.
class CustomAttribute extends TokenObject {
  final int attributeType;
  final int modifiedObjectToken;
  final Uint8List signatureBlob;
  final MemberRef memberRef;
  final TypeDef constructor;
  List<CustomAttributeParameter>? _parameters;

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

  /// List all parameters for the custom attribute.
  List<CustomAttributeParameter> get parameters {
    if (_parameters == null) {
      _parameters = <CustomAttributeParameter>[];

      final paramTypes = _parameterTypes();
      final paramValues = parameterValues(paramTypes);

      for (var idx = 0; idx < paramTypes.length; idx++) {
        _parameters!
            .add(CustomAttributeParameter(paramTypes[idx], paramValues[idx]));
      }
    }
    return _parameters!;
  }

  /// Decode attribute parameter types
  List<TypeIdentifier> _parameterTypes() {
    final parameterTypes = <TypeIdentifier>[];
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
      parameterTypes.add(runtimeType.typeIdentifier);
      // }
      paramsIndex++;
    }
    parameterTypes.removeAt(0); // throw away return type

    return parameterTypes;
  }

  /// Decode parameter values per §II.23.3 of ECMA-335.
  List<Object> parameterValues(List<TypeIdentifier> paramTypes) {
    final paramValues = <Object>[];
    final blob = signatureBlob.buffer.asByteData();
    var offset = 2; // skip two-byte 0x0001 prolog
    for (var paramIdx = 0; paramIdx < paramTypes.length; paramIdx++) {
      var baseType = paramTypes[paramIdx].baseType;
      if (paramTypes[paramIdx].type?.isEnum == true) {
        // find the type of the .value property (likely an Int32 or
        // Uint32) and use that instead...
        baseType =
            paramTypes[paramIdx].type!.fields.first.typeIdentifier.baseType;
      }
      switch (baseType) {
        case BaseType.String:
        case BaseType.ClassTypeModifier: // canonical name represented in value
          // Get string length and move pointer forward
          final packedLen =
              UncompressedData.fromBlob(blob.buffer.asUint8List(offset, 4));
          final stringLength = packedLen.data;
          offset += packedLen.dataLength;

          // Add decoded string value and move pointer forward
          paramValues.add(const Utf8Decoder()
              .convert(blob.buffer.asUint8List(offset, stringLength)));
          offset += stringLength;
          break;
        case BaseType.Boolean:
          paramValues.add(blob.getUint8(offset) == 1);
          offset += 1;
          break;
        case BaseType.Char:
          paramValues.add(String.fromCharCode(blob.getUint16(offset)));
          offset += 2;
          break;
        case BaseType.Float:
          paramValues.add(blob.getFloat32(offset, Endian.little));
          offset += 4;
          break;
        case BaseType.Double:
          paramValues.add(blob.getFloat64(offset, Endian.little));
          offset += 8;
          break;
        case BaseType.Int8:
          paramValues.add(blob.getInt8(offset));
          offset += 1;
          break;
        case BaseType.Int16:
          paramValues.add(blob.getInt16(offset, Endian.little));
          offset += 2;
          break;
        case BaseType.Int32:
          paramValues.add(blob.getInt32(offset, Endian.little));
          offset += 4;
          break;
        case BaseType.Int64:
          paramValues.add(blob.getInt64(offset, Endian.little));
          offset += 8;
          break;
        case BaseType.Uint8:
          paramValues.add(blob.getUint8(offset));
          offset += 1;
          break;
        case BaseType.Uint16:
          paramValues.add(blob.getUint16(offset, Endian.little));
          offset += 2;
          break;
        case BaseType.Uint32:
          paramValues.add(blob.getUint32(offset, Endian.little));
          offset += 4;
          break;
        case BaseType.Uint64:
          paramValues.add(blob.getUint64(offset, Endian.little));
          offset += 8;
          break;
        default:
          // TODO: Need more exhaustive checking here
          offset += 4; // most likely it's an enum
          paramValues.add(0);
          print('Unexpected attribute type for index $paramIdx. '
              'Do not trust following values.');
      }
    }

    return paramValues;
  }
}
