// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'com/constants.dart';
import 'enums.dart';
import 'mixins/customattributes_mixin.dart';
import 'pinvokemap.dart';
import 'scope.dart';
import 'tokenObject.dart';
import 'type_aliases.dart';
import 'typedef.dart';
import 'typeidentifier.dart';
import 'utils/typetuple.dart';

/// Field accessibility information.
enum FieldAccess {
  /// Specifies that the field cannot be referenced.
  privateScope,

  /// Specifies that the field is accessible only by its parent type.
  private,

  /// Specifies that the field is accessible by derived classes in its assembly.
  familyAndAssembly,

  /// Specifies that the field is accessible by all types in its assembly.
  assembly,

  /// Specifies that the field is accessible only by its type and derived
  /// classes.
  family,

  /// Specifies that the field is accessible by derived classes and by all types
  /// in its assembly.
  familyOrAssembly,

  /// Specifies that the field is accessible by all types with visibility of
  /// this scope.
  public
}

/// A field.
///
/// Fields are typed memory locations that store the data of a program.
class Field extends TokenObject with CustomAttributesMixin {
  final BaseType fieldType;
  final String name;
  final Uint8List signatureBlob;
  final TypeIdentifier typeIdentifier;
  final int value;

  final int _attributes;
  final int _parentToken;

  Field(
      super.scope,
      super.token,
      this._parentToken,
      this.name,
      this.value,
      this.typeIdentifier,
      this.fieldType,
      this._attributes,
      this.signatureBlob);

  /// Creates a field object from a provided token.
  factory Field.fromToken(Scope scope, int token) => using((Arena arena) {
        final ptkTypeDef = arena<mdTypeDef>();
        final szField = arena<WCHAR>(MAX_STRING_SIZE).cast<Utf16>();
        final pchField = arena<ULONG>();
        final pdwAttr = arena<DWORD>();
        final ppvSigBlob = arena<PCCOR_SIGNATURE>();
        final pcbSigBlob = arena<ULONG>();
        final pdwCPlusTypeFlag = arena<DWORD>();
        final ppValue = arena<Pointer<Uint32>>();
        final pcchValue = arena<ULONG>();

        final reader = scope.reader;
        final hr = reader.GetFieldProps(
            token,
            ptkTypeDef,
            szField,
            MAX_STRING_SIZE,
            pchField,
            pdwAttr,
            ppvSigBlob,
            pcbSigBlob,
            pdwCPlusTypeFlag,
            ppValue,
            pcchValue);

        if (SUCCEEDED(hr)) {
          final fieldName = szField.toDartString();

          // The first entry of the signature is its FieldAttribute (compare
          // against the CorFieldAttr enumeration), and then follows a type
          // identifier.
          final signature = ppvSigBlob.value.asTypedList(pcbSigBlob.value);
          final typeTuple =
              TypeTuple.fromSignature(signature.sublist(1), scope);

          return Field(
              scope,
              token,
              ptkTypeDef.value,
              fieldName,
              ppValue.value != nullptr ? ppValue.value.value : 0,
              typeTuple.typeIdentifier,
              parseCorElementType(pdwCPlusTypeFlag.value),
              pdwAttr.value,
              signature);
        } else {
          throw WindowsException(hr);
        }
      });

  @override
  String toString() => name;

  /// Returns the [TypeDef] representing the class that the field belongs to.
  TypeDef get parent => scope.findTypeDefByToken(_parentToken)!;

  /// Returns the visibility of the field (public, private, etc.)
  FieldAccess get fieldAccess =>
      FieldAccess.values[_attributes & CorFieldAttr.fdFieldAccessMask];

  /// Returns true if the field is a member of its type rather than an instance member.
  bool get isStatic =>
      _attributes & CorFieldAttr.fdStatic == CorFieldAttr.fdStatic;

  /// Returns true if the field cannot be changed after it is initialized.
  bool get isInitOnly =>
      _attributes & CorFieldAttr.fdInitOnly == CorFieldAttr.fdInitOnly;

  /// Returns true if the field value is a compile-time constant.
  bool get isLiteral =>
      _attributes & CorFieldAttr.fdLiteral == CorFieldAttr.fdLiteral;

  /// Returns true if the field is not serialized when its type is remoted.
  bool get isNotSerialized =>
      _attributes & CorFieldAttr.fdNotSerialized ==
      CorFieldAttr.fdNotSerialized;

  /// Returns true if the field is special; its name describes how.
  bool get isSpecialName =>
      _attributes & CorFieldAttr.fdSpecialName == CorFieldAttr.fdSpecialName;

  /// Returns true if the field implementation is forwarded through PInvoke.
  bool get isPinvokeImpl =>
      _attributes & CorFieldAttr.fdPinvokeImpl == CorFieldAttr.fdPinvokeImpl;

  /// Returns true if the common language runtime metadata internal APIs should
  /// check the encoding of the name.
  bool get isRTSpecialName =>
      _attributes & CorFieldAttr.fdRTSpecialName ==
      CorFieldAttr.fdRTSpecialName;

  /// Returns true if the field contains marshaling information.
  bool get hasFieldMarshal =>
      _attributes & CorFieldAttr.fdHasFieldMarshal ==
      CorFieldAttr.fdHasFieldMarshal;

  /// Returns true if the field has a default value.
  bool get hasDefault =>
      _attributes & CorFieldAttr.fdHasDefault == CorFieldAttr.fdHasDefault;

  /// Returns true if the field has a relative virtual address.
  bool get hasFieldRVA =>
      _attributes & CorFieldAttr.fdHasFieldRVA == CorFieldAttr.fdHasFieldRVA;

  /// Returns the P/Invoke mapping representation for the field.
  PinvokeMap get pinvokeMap => PinvokeMap.fromToken(scope, token);
}
