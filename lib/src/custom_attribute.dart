import 'dart:convert';
import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

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

  final int attributeType;
  final int modifiedObjectToken;
  final Uint8List signatureBlob;
  final MemberRef memberRef;
  final TypeDef constructor;

  late final List<CustomAttributeParameter> parameters = _getParameters();

  /// Creates a custom attribute object from a provided token.
  factory CustomAttribute.fromToken(Scope scope, int token) {
    assert(TokenType.fromToken(token) == TokenType.customAttribute);

    return using((arena) {
      final ptkObj = arena<mdToken>();
      final ptkType = arena<mdToken>();
      final ppBlob = arena<UVCP_CONSTANT>();
      final pcbBlob = arena<ULONG>();

      final reader = scope.reader;
      final hr = reader.getCustomAttributeProps(
          token, ptkObj, ptkType, ppBlob, pcbBlob);
      if (FAILED(hr)) throw WindowsException(hr);

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
        ppBlob.value.asTypedList(pcbBlob.value),
      );
    });
  }

  /// The name of the attribute
  String get name => constructor.name;

  /// Parameters for the custom attribute.
  List<CustomAttributeParameter> _getParameters() {
    final parameters = <CustomAttributeParameter>[];

    final paramTypes = _parameterTypes();
    final paramValues = _parameterValues(paramTypes);

    for (var idx = 0; idx < paramTypes.length; idx++) {
      final param = CustomAttributeParameter(paramTypes[idx], paramValues[idx]);
      parameters.add(param);
    }

    return parameters;
  }

  /// Decode parameter types, per §II.23.2.1 of ECMA-335 (MethodDefSig)
  List<TypeIdentifier> _parameterTypes() {
    final parameterTypes = <TypeIdentifier>[];
    final typeSignatureBlob = memberRef.signatureBlob;
    // Parse through the signature blob, and map each recovered
    // type to the corresponding parameter.
    var offset = 1; // skip prolog
    final paramCount = typeSignatureBlob.elementAt(offset++);

    var paramsIndex = 0;
    // Signature
    while (paramsIndex < paramCount + 1) {
      final runtimeType =
          TypeTuple.fromSignature(typeSignatureBlob.sublist(offset), scope);
      offset += runtimeType.offsetLength;
      parameterTypes.add(runtimeType.typeIdentifier);
      paramsIndex++;
    }
    parameterTypes.removeAt(0); // throw away return type

    return parameterTypes;
  }

  /// Decode parameter values per §II.23.3 of ECMA-335.
  List<Object> _parameterValues(List<TypeIdentifier> paramTypes) {
    final paramValues = <Object>[];
    final blob = signatureBlob.buffer.asByteData();
    var offset = 2; // skip two-byte 0x0001 prolog

    for (var paramIdx = 0; paramIdx < paramTypes.length; paramIdx++) {
      var baseType = paramTypes[paramIdx].baseType;

      if (paramTypes[paramIdx].type?.isEnum ?? false) {
        // find the type of the .value property (likely an Int32 or
        // Uint32) and use that instead...
        baseType =
            paramTypes[paramIdx].type!.fields.first.typeIdentifier.baseType;
      }

      switch (baseType) {
        case BaseType.stringType:
        case BaseType.classTypeModifier: // canonical name represented in value
          // Get string length and move pointer forward
          final packedLen =
              UncompressedData.fromBlob(blob.buffer.asUint8List(offset, 4));
          final stringLength = packedLen.data;
          offset += packedLen.dataLength;

          // Add decoded string value and move pointer forward
          paramValues.add(const Utf8Decoder()
              .convert(blob.buffer.asUint8List(offset, stringLength)));
          offset += stringLength;
        case BaseType.booleanType:
          paramValues.add(blob.getUint8(offset) == 1);
          offset += 1;
        case BaseType.charType:
          paramValues.add(String.fromCharCode(blob.getUint16(offset)));
          offset += 2;
        case BaseType.floatType:
          paramValues.add(blob.getFloat32(offset, Endian.little));
          offset += 4;
        case BaseType.doubleType:
          paramValues.add(blob.getFloat64(offset, Endian.little));
          offset += 8;
        case BaseType.int8Type:
          paramValues.add(blob.getInt8(offset));
          offset += 1;
        case BaseType.int16Type:
          paramValues.add(blob.getInt16(offset, Endian.little));
          offset += 2;
        case BaseType.int32Type:
          paramValues.add(blob.getInt32(offset, Endian.little));
          offset += 4;
        case BaseType.int64Type:
          paramValues.add(blob.getInt64(offset, Endian.little));
          offset += 8;
        case BaseType.uint8Type:
          paramValues.add(blob.getUint8(offset));
          offset += 1;
        case BaseType.uint16Type:
          paramValues.add(blob.getUint16(offset, Endian.little));
          offset += 2;
        case BaseType.uint32Type:
          paramValues.add(blob.getUint32(offset, Endian.little));
          offset += 4;
        case BaseType.uint64Type:
          paramValues.add(blob.getUint64(offset, Endian.little));
          offset += 8;
        case BaseType.intPtrType:
        case BaseType.uintPtrType:
        case BaseType.voidType:
        case BaseType.pointerTypeModifier:
        case BaseType.referenceTypeModifier:
        case BaseType.valueTypeModifier:
        case BaseType.classVariableTypeModifier:
        case BaseType.arrayTypeModifier:
        case BaseType.genericTypeModifier:
        case BaseType.typedReference:
        case BaseType.functionPointerType:
        case BaseType.objectType:
        case BaseType.simpleArrayType:
        case BaseType.methodVariableTypeModifier:
        case BaseType.cLanguageRequiredModifier:
        case BaseType.cLanguageOptionalModifier:
        case BaseType.sentinelTypeModifier:
          // In the future, we might add more exhaustive checking for esoteric
          // parameter types that are specified in ECMA-335 but don't seem to
          // occur in the Win32 or WinRT metadata (e.g. named arguments).
          throw const WinmdException(
              'Unexpected parameter type in signature blob.');
      }
    }

    return paramValues;
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
