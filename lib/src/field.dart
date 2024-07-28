import 'dart:convert';
import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'mixins/custom_attributes_mixin.dart';
import 'models/models.dart';
import 'pinvokemap.dart';
import 'scope.dart';
import 'token_object.dart';
import 'type_aliases.dart';
import 'type_def.dart';
import 'type_identifier.dart';

/// A field.
///
/// Fields are typed memory locations that store the data of a program.
class Field extends TokenObject with CustomAttributesMixin {
  Field(
    super.scope,
    super.token,
    this._parentToken,
    this.name,
    this.value,
    this.typeIdentifier,
    this.fieldType,
    this._attribs,
    this.signatureBlob,
  );

  final BaseType fieldType;
  final String name;
  final Uint8List signatureBlob;
  final TypeIdentifier typeIdentifier;
  final Object? value;

  final int _attribs;
  final int _parentToken;

  /// Creates a field object from a provided token.
  factory Field.fromToken(Scope scope, int token) {
    assert(TokenType.fromToken(token) == TokenType.fieldDef);

    return using((Arena arena) {
      final ptkTypeDef = arena<mdTypeDef>();
      final szField = arena<WCHAR>(stringBufferSize).cast<Utf16>();
      final pchField = arena<ULONG>();
      final pdwAttr = arena<DWORD>();
      final ppvSigBlob = arena<PCCOR_SIGNATURE>();
      final pcbSigBlob = arena<ULONG>();
      final pdwCPlusTypeFlag = arena<DWORD>();
      final ppValue = arena<UVCP_CONSTANT>();
      final pcchValue = arena<ULONG>();

      final reader = scope.reader;
      final hr = reader.getFieldProps(
        token,
        ptkTypeDef,
        szField,
        stringBufferSize,
        pchField,
        pdwAttr,
        ppvSigBlob,
        pcbSigBlob,
        pdwCPlusTypeFlag,
        ppValue,
        pcchValue,
      );
      if (FAILED(hr)) throw WindowsException(hr);

      final fieldName = szField.toDartString();
      final fieldType = BaseType.fromCorElementType(pdwCPlusTypeFlag.value);

      Object? fieldValue;
      if (ppValue.value case final pValue when pValue != nullptr) {
        fieldValue = switch (fieldType) {
          BaseType.doubleType => pValue.cast<Double>().value,
          BaseType.floatType => pValue.cast<Float>().value,
          BaseType.int8Type => pValue.cast<Int8>().value,
          BaseType.int16Type => pValue.cast<Int16>().value,
          BaseType.int32Type => pValue.cast<Int32>().value,
          BaseType.int64Type => pValue.cast<Int64>().value,
          BaseType.uint8Type => pValue.cast<Uint8>().value,
          BaseType.uint16Type => pValue.cast<Uint16>().value,
          BaseType.uint32Type => pValue.cast<Uint32>().value,
          BaseType.uint64Type => pValue.cast<Uint64>().value,
          BaseType.stringType => _decodeString(
              pValue,
              isAnsi: _fieldIsAnsiString(scope, token),
              length: pcchValue.value,
            ),
          _ => null,
        };
      }

      // The first entry of the signature is a FIELD attribute (0x06), per
      // §II.23.2.4 of ECMA-335. Then follows a type identifier.
      final signature = ppvSigBlob.value.asTypedList(pcbSigBlob.value);
      final typeTuple = TypeTuple.fromSignature(signature.sublist(1), scope);

      return Field(
        scope,
        token,
        ptkTypeDef.value,
        fieldName,
        fieldValue,
        typeTuple.typeIdentifier,
        fieldType,
        pdwAttr.value,
        signature,
      );
    });
  }

  @override
  String toString() => name;

  /// Returns the [TypeDef] representing the class that the field belongs to.
  TypeDef get parent => scope.findTypeDefByToken(_parentToken)!;

  /// Returns the visibility of the field (public, private, etc.)
  FieldAccess get fieldAccess =>
      FieldAccess.values[_attribs & CorFieldAttr.fdFieldAccessMask];

  /// Returns true if the field is a member of its type rather than an instance member.
  bool get isStatic =>
      _attribs & CorFieldAttr.fdStatic == CorFieldAttr.fdStatic;

  /// Returns true if the field cannot be changed after it is initialized.
  bool get isInitOnly =>
      _attribs & CorFieldAttr.fdInitOnly == CorFieldAttr.fdInitOnly;

  /// Returns true if the field value is a compile-time constant.
  bool get isLiteral =>
      _attribs & CorFieldAttr.fdLiteral == CorFieldAttr.fdLiteral;

  /// Returns true if the field is not serialized when its type is remoted.
  bool get isNotSerialized =>
      _attribs & CorFieldAttr.fdNotSerialized == CorFieldAttr.fdNotSerialized;

  /// Returns true if the field is special; its name describes how.
  bool get isSpecialName =>
      _attribs & CorFieldAttr.fdSpecialName == CorFieldAttr.fdSpecialName;

  /// Returns true if the field implementation is forwarded through PInvoke.
  bool get isPinvokeImpl =>
      _attribs & CorFieldAttr.fdPinvokeImpl == CorFieldAttr.fdPinvokeImpl;

  /// Returns true if the common language runtime metadata internal APIs should
  /// check the encoding of the name.
  bool get isRTSpecialName =>
      _attribs & CorFieldAttr.fdRTSpecialName == CorFieldAttr.fdRTSpecialName;

  /// Returns true if the field contains marshaling information.
  bool get hasFieldMarshal =>
      _attribs & CorFieldAttr.fdHasFieldMarshal ==
      CorFieldAttr.fdHasFieldMarshal;

  /// Returns true if the field has a default value.
  bool get hasDefault =>
      _attribs & CorFieldAttr.fdHasDefault == CorFieldAttr.fdHasDefault;

  /// Returns true if the field has a relative virtual address.
  bool get hasFieldRVA =>
      _attribs & CorFieldAttr.fdHasFieldRVA == CorFieldAttr.fdHasFieldRVA;

  /// Returns the P/Invoke mapping representation for the field.
  PinvokeMap get pinvokeMap => PinvokeMap.fromToken(scope, token);

  static String _decodeString(
    Pointer<Uint8> ptr, {
    required bool isAnsi,
    required int length,
  }) {
    // For some reason, ANSI strings are encoded as UTF-16, so we need to decode
    // them as such.
    final codeUnits = [
      for (var idx = 0; idx < length; idx++) ptr.cast<Uint16>()[idx]
    ];

    return isAnsi ? utf8.decode(codeUnits) : String.fromCharCodes(codeUnits);
  }

  static bool _fieldIsAnsiString(Scope scope, int token) {
    final field = Field(
      scope,
      token,
      0,
      '',
      '',
      const TypeIdentifier(BaseType.stringType),
      BaseType.stringType,
      0,
      Uint8List(0),
    );
    const nativeEncodingAttribute =
        'Windows.Win32.Foundation.Metadata.NativeEncodingAttribute';
    return field.attributeAsString(nativeEncodingAttribute) == 'ansi';
  }
}
