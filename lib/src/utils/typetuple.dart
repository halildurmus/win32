import 'dart:typed_data';

import '../constants.dart';
import '../scope.dart';
import '../typedef.dart';
import '../typeidentifier.dart';
import 'blob.dart';

class TypeTuple {
  /// Returns the second item of the tuple
  final int offsetLength;

  /// Returns the first item of the tuple
  final TypeIdentifier typeIdentifier;

  /// Creates a new tuple value with the specified items.
  const TypeTuple(this.typeIdentifier, this.offsetLength);

  @override
  int get hashCode => typeIdentifier.hashCode * offsetLength.hashCode;

  static int _unencodeDefRefSpecToken(int encoded) {
    final token = encoded >> 2;

    if (encoded & 0x03 == 0x00) {
      // typedef
      return CorTokenType.mdtTypeDef | token;
    }
    if (encoded & 0x03 == 0x01) {
      // typeref
      return CorTokenType.mdtTypeRef | token;
    }
    if (encoded & 0x03 == 0x02) {
      // typespec
      return CorTokenType.mdtTypeSpec | token;
    } else {
      return 0;
    }
  }

  @override
  bool operator ==(Object other) =>
      other is TypeTuple &&
      other.typeIdentifier == typeIdentifier &&
      other.offsetLength == offsetLength;

  @override
  String toString() => 'TypeTuple: [$typeIdentifier, $offsetLength]';

  /// Parse a single type from the signature blob.
  ///
  /// Returns a [TypeTuple] containing the runtime type and the number of bytes
  /// consumed.
  ///
  /// Details on the blob format can be found at §II.23.1.16 and §II.23.2 of
  /// ECMA-335.
  factory TypeTuple.fromSignature(Uint8List signatureBlob, Scope scope) {
    final paramType = signatureBlob.first;
    final runtimeType = TypeIdentifier.fromValue(paramType);
    var dataLength = 0;

    switch (runtimeType.corType) {
      case CorElementType.ELEMENT_TYPE_VALUETYPE:
      case CorElementType.ELEMENT_TYPE_CLASS:
        final uncompressed =
            UncompressedData.fromBlob(signatureBlob.sublist(1));
        final token = _unencodeDefRefSpecToken(uncompressed.data);
        final tokenAsType = TypeDef.fromToken(scope, token);

        dataLength = uncompressed.dataLength + 1;
        runtimeType.name = tokenAsType.name;
        runtimeType.type = tokenAsType;
        break;

      case CorElementType.ELEMENT_TYPE_BYREF:
        if (signatureBlob[1] == 0x1D) {
          // array
          runtimeType.corType = CorElementType.ELEMENT_TYPE_ARRAY;
        }
        break;

      case CorElementType.ELEMENT_TYPE_PTR:
        final ptrTuple =
            TypeTuple.fromSignature(signatureBlob.sublist(1), scope);
        dataLength = 1 + ptrTuple.offsetLength;
        runtimeType.typeArg = ptrTuple.typeIdentifier;
        // flattenTypeArgs(runtimeType);
        break;

      case CorElementType.ELEMENT_TYPE_GENERICINST:
        final classTuple =
            TypeTuple.fromSignature(signatureBlob.sublist(1), scope);
        runtimeType.name = classTuple.typeIdentifier.name;
        final argsCount =
            signatureBlob[1 + classTuple.offsetLength]; // GENERICINST + class
        dataLength =
            classTuple.offsetLength + 2; // GENERICINST + class + argsCount

        var argPtr = runtimeType;
        for (var idx = 0; idx < argsCount; idx++) {
          final arg =
              TypeTuple.fromSignature(signatureBlob.sublist(dataLength), scope);
          dataLength += arg.offsetLength;
          argPtr.typeArg = arg.typeIdentifier;
          argPtr = argPtr.typeArg!;
        }
        break;

      case CorElementType.ELEMENT_TYPE_ARRAY:
        // Format is [Type ArrayShape] (see §II.23.2.13)
        final arrayTuple =
            TypeTuple.fromSignature(signatureBlob.sublist(1), scope);
        dataLength = 1 + arrayTuple.offsetLength;
        runtimeType.typeArg = arrayTuple.typeIdentifier;
        final dimensionsCount = signatureBlob[dataLength++]; // rank
        final dimensionUpperBounds = List<int>.filled(dimensionsCount, 0);
        final numSizes = signatureBlob[dataLength++];
        for (var i = 0; i < numSizes; i++) {
          final uncompressed =
              UncompressedData.fromBlob(signatureBlob.sublist(dataLength));
          dataLength += uncompressed.dataLength;
          dimensionUpperBounds[i] = uncompressed.data;
        }
        runtimeType.arrayDimensions = dimensionUpperBounds;
        break;

      case CorElementType.ELEMENT_TYPE_VAR:
      case CorElementType.ELEMENT_TYPE_MVAR:
        // Element is a generic parameter of a type or a method
        final uncompressed =
            UncompressedData.fromBlob(signatureBlob.sublist(1));
        runtimeType.genericParameterSequence = uncompressed.data;
        dataLength = 1;
        runtimeType.name = runtimeType.toString();
        break;

      default:
        dataLength = 1;
    }

    return TypeTuple(runtimeType, dataLength);
  }
}
