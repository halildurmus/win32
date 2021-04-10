// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'base.dart';
import 'com/IMetaDataImport2.dart';
import 'constants.dart';
import 'mixins/customattributes_mixin.dart';
import 'typedef.dart';
import 'typeidentifier.dart';
import 'utils.dart';
import 'win32.dart';

class Property extends TokenObject with CustomAttributesMixin {
  final int _parentToken;
  final String name;
  final CorElementType corType;
  final int _attributes;
  final Uint8List signatureBlob;
  final TypeIdentifier typeIdentifier;
  final Uint8List defaultValue;
  final int setterToken;
  final int getterToken;
  final Uint32List otherMethodTokens;

  TypeDef get parentToken => TypeDef.fromToken(reader, _parentToken);

  bool get isSpecialName =>
      _attributes & CorPropertyAttr.prSpecialName ==
      CorPropertyAttr.prSpecialName;

  bool get hasDefault =>
      _attributes & CorPropertyAttr.prHasDefault ==
      CorPropertyAttr.prHasDefault;

  bool get isRTSpecialName =>
      _attributes & CorPropertyAttr.prRTSpecialName ==
      CorPropertyAttr.prRTSpecialName;

  Property(
      IMetaDataImport2 reader,
      int token,
      this._parentToken,
      this.name,
      this._attributes,
      this.signatureBlob,
      this.typeIdentifier,
      this.corType,
      this.defaultValue,
      this.setterToken,
      this.getterToken,
      this.otherMethodTokens)
      : super(reader, token);

  /// Creates a property object from its given token.
  factory Property.fromToken(IMetaDataImport2 reader, int token) {
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
      final hr = reader.GetPropertyProps(
          token,
          ptkTypeDef,
          szProperty,
          MAX_STRING_SIZE,
          pchProperty,
          pdwPropFlags,
          ppvSigBlob.cast(),
          pcbSigBlob,
          pdwCPlusTypeFlag,
          ppDefaultValue.cast(),
          pcchDefaultValue,
          ptkSetter,
          ptkGetter,
          rgOtherMethod,
          256,
          pcOtherMethod);

      if (SUCCEEDED(hr)) {
        final propName = szProperty.toDartString();

        // PropertySig is defined in §II.23.2.5.
        //
        // TODO: More sophisticated parsing.
        final signature = ppvSigBlob.value.asTypedList(pcbSigBlob.value);
        final typeTuple = parseTypeFromSignature(signature.sublist(2), reader);
        final defaultValue =
            ppDefaultValue.value.asTypedList(pcchDefaultValue.value);
        final otherMethodTokens =
            rgOtherMethod.asTypedList(pcOtherMethod.value);

        return Property(
            reader,
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
}

extension ListProperty on List<Property> {
  Property operator [](String propName) =>
      firstWhere((p) => p.name == propName);
}
