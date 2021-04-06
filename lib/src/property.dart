// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '_base.dart';
import 'com/IMetaDataImport2.dart';
import 'constants.dart';
import 'typeidentifier.dart';
import 'utils.dart';

class Property extends TokenObject with CustomAttributes {
  final String name;
  final CorElementType corType;
  final int attributes;
  final Uint8List signatureBlob;
  final TypeIdentifier typeIdentifier;
  final Uint8List defaultValue;
  final int setterToken;
  final int getterToken;
  final Uint32List otherMethodTokens;

  bool get isSpecialName =>
      attributes & CorPropertyAttr.prSpecialName ==
      CorPropertyAttr.prSpecialName;

  bool get hasDefault =>
      attributes & CorPropertyAttr.prHasDefault == CorPropertyAttr.prHasDefault;

  bool get isRTSpecialName =>
      attributes & CorPropertyAttr.prRTSpecialName ==
      CorPropertyAttr.prRTSpecialName;

  Property(
      IMetaDataImport2 reader,
      int token,
      this.name,
      this.attributes,
      this.signatureBlob,
      this.typeIdentifier,
      this.corType,
      this.defaultValue,
      this.setterToken,
      this.getterToken,
      this.otherMethodTokens)
      : super(reader, token);

  factory Property.fromToken(IMetaDataImport2 reader, int token) {
    final ptkTypeDef = calloc<Uint32>();
    final szProperty = calloc<Uint16>(256).cast<Utf16>();
    final pchProperty = calloc<Uint32>();
    final pdwPropFlags = calloc<Uint32>();
    // TODO: Incorrectly declared? Should be P<P<U1>>?
    final ppvSigBlob = calloc<Pointer<Uint8>>();
    final pcbSigBlob = calloc<Uint32>();
    final pdwCPlusTypeFlag = calloc<Uint32>();
    // TODO: Incorrectly declared? Should be P<P<U1>>?
    final ppDefaultValue = calloc<Pointer<Uint8>>();
    final pcchDefaultValue = calloc<Uint32>();
    final ptkSetter = calloc<Uint32>();
    final ptkGetter = calloc<Uint32>();
    final rgOtherMethod = calloc<Uint32>(256);
    final pcOtherMethod = calloc<Uint32>();

    try {
      final hr = reader.GetPropertyProps(
          token,
          ptkTypeDef,
          szProperty,
          256,
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
      calloc.free(ptkTypeDef);
      calloc.free(szProperty);
      calloc.free(pchProperty);
      calloc.free(pdwPropFlags);
      calloc.free(ppvSigBlob);
      calloc.free(pcbSigBlob);
      calloc.free(pdwCPlusTypeFlag);
      calloc.free(ppDefaultValue);
      calloc.free(pcchDefaultValue);
      calloc.free(ptkSetter);
      calloc.free(ptkGetter);
      calloc.free(rgOtherMethod);
      calloc.free(pcOtherMethod);
    }
  }

  @override
  String toString() => 'Property: $name';
}

extension ListProperty on List<Property> {
  Property operator [](String propName) =>
      firstWhere((p) => p.name == propName);
}
