// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'base.dart';
import 'constants.dart';
import 'method.dart';
import 'mixins/customattributes_mixin.dart';
import 'scope.dart';
import 'type_aliases.dart';
import 'typedef.dart';
import 'typeidentifier.dart';
import 'utils/string.dart';
import 'utils/typetuple.dart';

/// A property object.
class Property extends TokenObject with CustomAttributesMixin {
  final CorElementType corType;
  final Uint8List defaultValue;
  final String name;
  final Uint32List otherMethodTokens;
  final Uint8List signatureBlob;
  final TypeIdentifier typeIdentifier;

  final int _attributes;
  final int _getterToken;
  final int _parentToken;
  final int _setterToken;

  Property(
      Scope scope,
      int token,
      this._parentToken,
      this.name,
      this._attributes,
      this.signatureBlob,
      this.typeIdentifier,
      this.corType,
      this.defaultValue,
      this._setterToken,
      this._getterToken,
      this.otherMethodTokens)
      : super(scope, token);

  /// Creates a property object from its given token.
  factory Property.fromToken(Scope scope, int token) {
    final ptkTypeDef = calloc<mdTypeDef>();
    final szProperty = stralloc(MAX_STRING_SIZE);
    final pchProperty = calloc<ULONG>();
    final pdwPropFlags = calloc<DWORD>();
    final ppvSigBlob = calloc<PCCOR_SIGNATURE>();
    final pcbSigBlob = calloc<ULONG>();
    final pdwCPlusTypeFlag = calloc<DWORD>();
    final ppDefaultValue = calloc<UVCP_CONSTANT>();
    final pcchDefaultValue = calloc<ULONG>();
    final ptkSetter = calloc<mdMethodDef>();
    final ptkGetter = calloc<mdMethodDef>();
    final rgOtherMethod = calloc<mdMethodDef>(256);
    final pcOtherMethod = calloc<ULONG>();

    try {
      final reader = scope.reader;
      final hr = reader.GetPropertyProps(
          token,
          ptkTypeDef,
          szProperty,
          MAX_STRING_SIZE,
          pchProperty,
          pdwPropFlags,
          ppvSigBlob,
          pcbSigBlob,
          pdwCPlusTypeFlag,
          ppDefaultValue,
          pcchDefaultValue,
          ptkSetter,
          ptkGetter,
          rgOtherMethod,
          256,
          pcOtherMethod);

      if (SUCCEEDED(hr)) {
        final propName = szProperty.toDartString();

        // PropertySig is defined in §II.23.2.5.
        final signature = ppvSigBlob.value.asTypedList(pcbSigBlob.value);
        final typeTuple = TypeTuple.fromSignature(signature.sublist(2), scope);
        final defaultValue =
            ppDefaultValue.value.asTypedList(pcchDefaultValue.value);
        final otherMethodTokens =
            rgOtherMethod.asTypedList(pcOtherMethod.value);

        return Property(
            scope,
            token,
            ptkTypeDef.value,
            propName,
            pdwPropFlags.value,
            signature,
            typeTuple.typeIdentifier,
            CorElementType.values[pdwCPlusTypeFlag.value],
            defaultValue,
            ptkSetter.value,
            ptkGetter.value,
            otherMethodTokens);
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(ptkTypeDef);
      free(szProperty);
      free(pchProperty);
      free(pdwPropFlags);
      free(ppvSigBlob);
      free(pcbSigBlob);
      free(pdwCPlusTypeFlag);
      free(ppDefaultValue);
      free(pcchDefaultValue);
      free(ptkSetter);
      free(ptkGetter);
      free(rgOtherMethod);
      free(pcOtherMethod);
    }
  }

  @override
  String toString() => 'Property: $name';

  /// Returns the get accessor method for the property.
  Method? get getterMethod => reader.IsValidToken(_getterToken) == TRUE
      ? Method.fromToken(scope, _getterToken)
      : null;

  /// Returns the set accessor method for the property.
  Method? get setterMethod => reader.IsValidToken(_setterToken) == TRUE
      ? Method.fromToken(scope, _setterToken)
      : null;

  /// Returns the [TypeDef] representing the type that implements the property.
  TypeDef get parent => TypeDef.fromToken(scope, _parentToken);

  /// Returns true if the property is special; the name describes how.
  bool get isSpecialName =>
      _attributes & CorPropertyAttr.prSpecialName ==
      CorPropertyAttr.prSpecialName;

  /// Returns true if the property has a default value.
  bool get hasDefault =>
      _attributes & CorPropertyAttr.prHasDefault ==
      CorPropertyAttr.prHasDefault;

  /// Returns true if the property has a getter. If false, the property is
  /// write-only.
  bool get hasGetter => reader.IsValidToken(_getterToken) == TRUE;

  /// Returns true if the property has a setter. If false, the property is
  /// read-only.
  bool get hasSetter => reader.IsValidToken(_setterToken) == TRUE;

  /// Returns true if the common language runtime metadata internal APIs should
  /// check the encoding of the property name.
  bool get isRTSpecialName =>
      _attributes & CorPropertyAttr.prRTSpecialName ==
      CorPropertyAttr.prRTSpecialName;
}

extension ListProperty on List<Property> {
  Property operator [](String propName) =>
      firstWhere((p) => p.name == propName);
}
