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
import 'pinvokemap.dart';
import 'typeidentifier.dart';
import 'utils.dart';

enum FieldAccess {
  PrivateScope,
  Private,
  FamilyAndAssembly,
  Assembly,
  Family,
  FamilyOrAssembly,
  Public
}

class Field extends TokenObject with CustomAttributesMixin {
  final String name;
  final int value;
  final TypeIdentifier typeIdentifier;
  final CorElementType fieldType;
  final int attributes;
  final Uint8List signatureBlob;

  /// Returns the visibility of the field (public, private, etc.)
  FieldAccess get fieldAccess =>
      FieldAccess.values[attributes & CorFieldAttr.fdFieldAccessMask];

  /// Returns true if the field is a member of its type rather than an instance member.
  bool get isStatic =>
      attributes & CorFieldAttr.fdStatic == CorFieldAttr.fdStatic;

  /// Returns true if the field cannot be changed after it is initialized.
  bool get isInitOnly =>
      attributes & CorFieldAttr.fdInitOnly == CorFieldAttr.fdInitOnly;

  /// Returns true if the field value is a compile-time constant.
  bool get isLiteral =>
      attributes & CorFieldAttr.fdLiteral == CorFieldAttr.fdLiteral;

  /// Returns true if the field is not serialized when its type is remoted.
  bool get isNotSerialized =>
      attributes & CorFieldAttr.fdNotSerialized == CorFieldAttr.fdNotSerialized;

  /// Returns true if the field is special; its name describes how.
  bool get isSpecialName =>
      attributes & CorFieldAttr.fdSpecialName == CorFieldAttr.fdSpecialName;

  /// Returns true if the field implementation is forwarded through PInvoke.
  bool get isPinvokeImpl =>
      attributes & CorFieldAttr.fdPinvokeImpl == CorFieldAttr.fdPinvokeImpl;

  /// Returns true if the common language runtime metadata internal APIs should
  /// check the encoding of the name.
  bool get isRTSpecialName =>
      attributes & CorFieldAttr.fdRTSpecialName == CorFieldAttr.fdRTSpecialName;

  /// Returns true if the field contains marshaling information.
  bool get hasFieldMarshal =>
      attributes & CorFieldAttr.fdHasFieldMarshal ==
      CorFieldAttr.fdHasFieldMarshal;

  /// Returns true if the field has a default value.
  bool get hasDefault =>
      attributes & CorFieldAttr.fdHasDefault == CorFieldAttr.fdHasDefault;

  /// Returns true if the field has a relative virtual address.
  bool get hasFieldRVA =>
      attributes & CorFieldAttr.fdHasFieldRVA == CorFieldAttr.fdHasFieldRVA;

  PinvokeMap get pinvokeMap => PinvokeMap.fromToken(reader, token);

  Field(IMetaDataImport2 reader, int token, this.name, this.value,
      this.typeIdentifier, this.fieldType, this.attributes, this.signatureBlob)
      : super(reader, token);

  factory Field.fromToken(IMetaDataImport2 reader, int token) {
    final ptkTypeDef = calloc<Uint32>();
    final szField = calloc<Uint16>(MAX_STRING_SIZE).cast<Utf16>();
    final pchField = calloc<Uint32>();
    final pdwAttr = calloc<Uint32>();
    final ppvSigBlob = calloc<Pointer<Uint8>>();
    final pcbSigBlob = calloc<Uint32>();
    final pdwCPlusTypeFlag = calloc<Uint32>();
    final ppValue = calloc<Pointer<Uint32>>();
    final pcchValue = calloc<Uint32>();

    try {
      final hr = reader.GetFieldProps(
          token,
          ptkTypeDef,
          szField,
          MAX_STRING_SIZE,
          pchField,
          pdwAttr,
          ppvSigBlob.cast(),
          pcbSigBlob,
          pdwCPlusTypeFlag,
          ppValue.cast(),
          pcchValue);

      if (SUCCEEDED(hr)) {
        final fieldName = szField.toDartString();
        final cPlusTypeFlag = pdwCPlusTypeFlag.value;

        // The first entry of the signature is its FieldAttribute (compare
        // against the CorFieldAttr enumeration), and then follows a type
        // identifier.
        final signature = ppvSigBlob.value.asTypedList(pcbSigBlob.value);
        final typeTuple = parseTypeFromSignature(signature.sublist(1), reader);
        return Field(
            reader,
            ptkTypeDef.value,
            fieldName,
            ppValue.value != nullptr ? ppValue.value.value : 0,
            typeTuple.typeIdentifier,
            CorElementType.values[cPlusTypeFlag],
            pdwAttr.value,
            signature);
      } else {
        throw WindowsException(hr);
      }
    } finally {
      calloc.free(ptkTypeDef);
      calloc.free(szField);
      calloc.free(pchField);
      calloc.free(pdwAttr);
      calloc.free(ppvSigBlob);
      calloc.free(pcbSigBlob);
      calloc.free(pdwCPlusTypeFlag);
      calloc.free(ppValue);
      calloc.free(pcchValue);
    }
  }

  @override
  String toString() => 'Field: $name';
}

extension ListField on List<Field> {
  int operator [](String type) => firstWhere((f) => f.name == type).value;
}
