// ignore_for_file: prefer_asserts_with_message

import 'dart:convert';
import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide TokenType;

import 'member_ref.dart';
import 'models/models.dart';
import 'scope.dart';
import 'token_object.dart';
import 'type_aliases.dart';
import 'type_def.dart';
import 'type_identifier.dart';

/// A custom (named) attribute.
class CustomAttribute extends TokenObject {
  CustomAttribute(
    super.scope,
    super.token,
    this.modifiedObjectToken,
    this.memberRef,
    this.constructor,
    this.attributeType,
    this.signatureBlob,
  );

  /// Creates a custom attribute object from a provided token.
  factory CustomAttribute.fromToken(Scope scope, int token) {
    assert(
      TokenType.fromToken(token) == TokenType.customAttribute,
      'Token $token is not a CustomAttribute token',
    );

    return using((arena) {
      final ptkObj = arena<mdToken>();
      final ptkType = arena<mdToken>();
      final ppBlob = arena<UVCP_CONSTANT>();
      final pcbBlob = arena<ULONG>();

      final reader = scope.reader;
      final hr = reader.getCustomAttributeProps(
        token,
        ptkObj,
        ptkType,
        ppBlob,
        pcbBlob,
      );
      if (FAILED(hr)) throw WindowsException(hr);

      final memberRef = MemberRef.fromToken(scope, ptkType.value);
      final constructorTypeDef = TypeDef.fromToken(
        scope,
        memberRef.referencedToken,
      );
      return CustomAttribute(
        scope,
        token,
        ptkObj.value,
        memberRef,
        constructorTypeDef,
        ptkType.value,
        ppBlob.value.asTypedList(pcbBlob.value),
      );
    });
  }

  final int attributeType;
  final int modifiedObjectToken;
  final Uint8List signatureBlob;
  final MemberRef memberRef;
  final TypeDef constructor;

  late final List<CustomAttributeParameter> parameters = _getParameters();

  /// The name of the attribute.
  String get name => constructor.name;

  /// Parameters for the custom attribute.
  List<CustomAttributeParameter> _getParameters() {
    final parameters = <CustomAttributeParameter>[];

    // Decode parameters, per §II.23.3 of ECMA-335.
    final methodRefSig = memberRef.signatureBlob;
    final data = signatureBlob.buffer.asByteData();
    var methodRefSigOffset = 0;
    var dataOffset = 0;

    final prolog = data.getUint16(dataOffset, Endian.little);
    assert(prolog == 0x0001);
    dataOffset += 2;

    final hasThis = methodRefSig.elementAt(methodRefSigOffset++);
    assert(hasThis == 0x20);

    final fixedArgCount = methodRefSig.elementAt(methodRefSigOffset++);

    final retType = methodRefSig.elementAt(methodRefSigOffset++);
    assert(retType == ELEMENT_TYPE_VOID);

    // Process fixed args.
    for (var i = 0; i < fixedArgCount; i++) {
      final runtimeType = TypeTuple.fromSignature(
        methodRefSig.sublist(methodRefSigOffset),
        scope,
      );
      methodRefSigOffset += runtimeType.offsetLength;
      final type = runtimeType.typeIdentifier;
      final baseType = _resolveBaseType(type);
      final (value, valueOffset) = _decodeValue(data, baseType, dataOffset);
      dataOffset += valueOffset;
      parameters.add(CustomAttributeParameter(type, value));
    }

    // Process named args.
    final namedArgCount = data.getUint16(dataOffset, Endian.little);
    dataOffset += 2;

    for (var i = 0; i < namedArgCount; i++) {
      // Read a single byte to determine the type of the named argument.
      data.getUint8(dataOffset++); // FIELD (0x53) or PROPERTY (0x54)

      // Read the type of the named argument (FieldOrPropType).
      final runtimeType = TypeTuple.fromSignature(
        data.buffer.asUint8List(dataOffset),
        scope,
      );
      dataOffset += runtimeType.offsetLength;
      final type = runtimeType.typeIdentifier;
      final baseType = _resolveBaseType(type);

      // Read the name of the named argument (FieldOrPropName).
      final (name, stringOffset) = _readString(data, dataOffset);
      dataOffset += stringOffset;

      // Read the value of the named argument (FixedArg).
      final (value, valueOffset) = _decodeValue(data, baseType, dataOffset);
      dataOffset += valueOffset;
      parameters.add(
        CustomAttributeParameter(type.copyWith(name: name), value),
      );
    }

    return parameters;
  }

  /// Resolves the base type, including special handling for enums.
  BaseType _resolveBaseType(TypeIdentifier type) {
    if (type.type?.isEnum ?? false) {
      // Use the type of the `.value` property for enums.
      return type.type!.fields.first.typeIdentifier.baseType;
    }
    return type.baseType;
  }

  /// Decodes a value from the byte [data] based on the [baseType].
  (Object, int) _decodeValue(ByteData data, BaseType baseType, int offset) =>
      switch (baseType) {
        BaseType.stringType ||
        BaseType.classTypeModifier => _readString(data, offset),
        BaseType.booleanType => (data.getUint8(offset) == 1, 1),
        BaseType.charType => (String.fromCharCode(data.getUint16(offset)), 2),
        BaseType.floatType => (data.getFloat32(offset, Endian.little), 4),
        BaseType.doubleType => (data.getFloat64(offset, Endian.little), 8),
        BaseType.int8Type => (data.getInt8(offset), 1),
        BaseType.int16Type => (data.getInt16(offset, Endian.little), 2),
        BaseType.int32Type => (data.getInt32(offset, Endian.little), 4),
        BaseType.int64Type => (data.getInt64(offset, Endian.little), 8),
        BaseType.uint8Type => (data.getUint8(offset), 1),
        BaseType.uint16Type => (data.getUint16(offset, Endian.little), 2),
        BaseType.uint32Type => (data.getUint32(offset, Endian.little), 4),
        BaseType.uint64Type => (data.getUint64(offset, Endian.little), 8),
        _ =>
          throw WinmdException(
            'Unexpected parameter type in signature blob: $baseType',
          ),
      };

  /// Reads a UTF-8 encoded string from the byte [data].
  (String, int) _readString(ByteData data, int offset) {
    final packedLen = UncompressedData.fromBlob(
      data.buffer.asUint8List(offset, 4),
    );
    final stringLength = packedLen.data;
    final stringOffset = offset + packedLen.dataLength;

    final decodedString = const Utf8Decoder().convert(
      data.buffer.asUint8List(stringOffset, stringLength),
    );
    return (decodedString, packedLen.dataLength + stringLength);
  }

  @override
  String toString() => name;
}

/// A single parameter within a custom attribute.
class CustomAttributeParameter {
  const CustomAttributeParameter(this.type, this.value);

  final TypeIdentifier type;
  final Object value;
}
