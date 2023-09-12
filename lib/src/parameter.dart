// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'method.dart';
import 'mixins/custom_attributes_mixin.dart';
import 'models/models.dart';
import 'scope.dart';
import 'token_object.dart';
import 'type_aliases.dart';
import 'type_identifier.dart';

/// A parameter or return type.
class Parameter extends TokenObject with CustomAttributesMixin {
  String name;
  final int sequence;
  final Uint8List signatureBlob;
  TypeIdentifier typeIdentifier;

  int attributes;
  final int _methodToken;

  Parameter(super.scope, super.token, this._methodToken, this.sequence,
      this.attributes, this.typeIdentifier, this.name, this.signatureBlob);

  /// Creates a parameter object from a provided token.
  factory Parameter.fromToken(Scope scope, int token) {
    assert(TokenType.fromToken(token) == TokenType.paramDef);

    return using((Arena arena) {
      final ptkMethodDef = arena<mdMethodDef>();
      final pulSequence = arena<ULONG>();
      final szName = arena<WCHAR>(stringBufferSize).cast<Utf16>();
      final pchName = arena<ULONG>();
      final pdwAttr = arena<DWORD>();
      final pdwCPlusTypeFlag = arena<DWORD>();
      final ppValue = arena<UVCP_CONSTANT>();
      final pcchValue = arena<ULONG>();

      final reader = scope.reader;
      final hr = reader.getParamProps(
          token,
          ptkMethodDef,
          pulSequence,
          szName,
          stringBufferSize,
          pchName,
          pdwAttr,
          pdwCPlusTypeFlag,
          ppValue,
          pcchValue);
      if (FAILED(hr)) throw WindowsException(hr);

      final baseType = BaseType.fromCorElementType(pdwCPlusTypeFlag.value);
      return Parameter(
        scope,
        token,
        ptkMethodDef.value,
        pulSequence.value,
        pdwAttr.value,
        TypeIdentifier(baseType),
        szName.toDartString(),
        ppValue.value.asTypedList(pcchValue.value),
      );
    });
  }

  /// Creates a parameter object from a provided type identifier.
  factory Parameter.fromTypeIdentifier(
    Scope scope,
    int methodToken,
    TypeIdentifier runtimeType, {
    int attributes = 0,
  }) =>
      Parameter(
          scope, 0, methodToken, 0, attributes, runtimeType, '', Uint8List(0));

  /// Creates a void parameter object.
  factory Parameter.fromVoid(Scope scope, int methodToken) => Parameter(
        scope,
        0,
        methodToken,
        0,
        0,
        const TypeIdentifier(BaseType.voidType),
        '',
        Uint8List(0),
      );

  @override
  String toString() => name;

  /// Returns the [Method] that takes the parameter.
  Method get parent => Method.fromToken(scope, _methodToken);

  /// Returns true if the parameter is passed into the method call.
  bool get isInParam => attributes & CorParamAttr.pdIn == CorParamAttr.pdIn;

  /// Returns true if the parameter is passed from the method return.
  bool get isOutParam => attributes & CorParamAttr.pdOut == CorParamAttr.pdOut;

  /// Returns true if the parameter is optional.
  bool get isOptional =>
      attributes & CorParamAttr.pdOptional == CorParamAttr.pdOptional;

  /// Returns true if the parameter has a default value.
  bool get hasDefault =>
      attributes & CorParamAttr.pdHasDefault == CorParamAttr.pdHasDefault;

  /// Returns true if the parameter has marshaling information.
  bool get hasFieldMarshal =>
      attributes & CorParamAttr.pdHasFieldMarshal ==
      CorParamAttr.pdHasFieldMarshal;
}
