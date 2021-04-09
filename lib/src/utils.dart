// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Useful shared utility methods.

import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'com/IMetaDataImport2.dart';
import 'constants.dart';
import 'typedef.dart';
import 'typeidentifier.dart';

class WinmdException implements Exception {
  final String message;

  WinmdException(this.message);

  @override
  String toString() => 'WinmdException: $message';
}

class TypeTuple {
  /// Returns the first item of the tuple
  final TypeIdentifier typeIdentifier;

  /// Returns the second item of the tuple
  final int offsetLength;

  /// Creates a new tuple value with the specified items.
  const TypeTuple(this.typeIdentifier, this.offsetLength);

  @override
  String toString() => 'TypeTuple: [$typeIdentifier, $offsetLength]';

  @override
  bool operator ==(Object other) =>
      other is TypeTuple &&
      other.typeIdentifier == typeIdentifier &&
      other.offsetLength == offsetLength;

  @override
  int get hashCode => typeIdentifier.hashCode * offsetLength.hashCode;
}

extension CamelCaseConversion on String {
  String toCamelCase() =>
      length >= 2 ? substring(0, 1).toLowerCase() + substring(1) : this;
}

/// Takes a typename (e.g. `Windows.Globalization.Calendar`) and returns the
/// metadata file that contains the type.
File metadataFileContainingType(String typeName) {
  File path;

  final hstrTypeName = convertToHString(typeName);

  final hstrMetaDataFilePath = calloc<IntPtr>();
  final spMetaDataImport = calloc<Pointer>();
  final typeDef = calloc<Uint32>();

  try {
    // RoGetMetaDataFile can only be used for Windows Runtime classes (i.e. not
    // third-party types) in an app that is not a Windows Store app.
    final hr = RoGetMetaDataFile(hstrTypeName.value, nullptr,
        hstrMetaDataFilePath, spMetaDataImport, typeDef);
    if (SUCCEEDED(hr)) {
      path = File(convertFromHString(hstrMetaDataFilePath));
    } else {
      throw WindowsException(hr);
    }
  } finally {
    WindowsDeleteString(hstrTypeName.value);
    WindowsDeleteString(hstrMetaDataFilePath.value);

    free(hstrTypeName);
    free(hstrMetaDataFilePath);
  }

  return path;
}

class UncompressedData {
  int data;
  int dataLength;

  UncompressedData(this.data, this.dataLength);
}

UncompressedData corSigUncompressData(List<int> pBytes) {
  // Smallest -- one byte
  if ((pBytes[0] & 0x80) == 0x00) // 0??? ????
  {
    return UncompressedData(pBytes[0], 1);
  }
  // Medium -- two bytes
  else if ((pBytes[0] & 0xC0) == 0x80) // 10?? ????
  {
    if (pBytes.length < 2) {
      throw WinmdException('Bad signature');
    } else {
      return UncompressedData((pBytes[0] & 0x3f) << 8 | pBytes[1], 2);
    }
  }
  // Large -- four bytes
  else if ((pBytes[0] & 0xE0) == 0xC0) // 110? ????
  {
    if (pBytes.length < 4) {
      throw WinmdException('Bad signature');
    } else {
      return UncompressedData(
          (pBytes[0] & 0x1f) << 24 |
              (pBytes[1]) << 16 |
              (pBytes[2]) << 8 |
              (pBytes[3]),
          4);
    }
  } else // We don't recognize this encoding
  {
    throw WinmdException('Bad signature');
  }
}

int unencodeDefRefSpecToken(int encoded) {
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

int byteListToInteger(Uint8List list) {
  final data = ByteData.sublistView(list);
  print('${list.length} ${data.lengthInBytes}');
  if (data.lengthInBytes == 8) return data.getUint64(0);
  if (data.lengthInBytes == 4) return data.getUint32(0);
  if (data.lengthInBytes == 2) return data.getUint16(0);
  if (data.lengthInBytes == 1) return data.getUint8(0);
  return 0;
}

void flattenTypeArgs(TypeIdentifier type) {
  // TODO: Need to walk deeper in case of triple dereference
  if (type.typeArgs.first.typeArgs.isNotEmpty) {
    type.typeArgs.add(type.typeArgs.first.typeArgs.first);
    type.typeArgs.first.typeArgs.remove(0);
  }
}

/// Parse a single type from the signature blob.
///
/// Returns a [TypeTuple] containing the runtime type and the number of bytes
/// consumed.
///
/// Details on the blob format can be found at §II.23.1.16 and §II.23.2 of
/// ECMA-335.
TypeTuple parseTypeFromSignature(
    Uint8List signatureBlob, IMetaDataImport2 reader) {
  final paramType = signatureBlob.first;
  final runtimeType = TypeIdentifier.fromValue(paramType);
  var dataLength = 0;

  switch (runtimeType.corType) {
    case CorElementType.ELEMENT_TYPE_VALUETYPE:
    case CorElementType.ELEMENT_TYPE_CLASS:
      final uncompressed = corSigUncompressData(signatureBlob.sublist(1));
      final token = unencodeDefRefSpecToken(uncompressed.data);
      final tokenAsType = TypeDef.fromToken(reader, token);

      dataLength = uncompressed.dataLength + 1;
      runtimeType.name = tokenAsType.typeName;
      runtimeType.type = tokenAsType;
      break;

    case CorElementType.ELEMENT_TYPE_BYREF:
      if (signatureBlob[1] == 0x1D) {
        // array
        runtimeType.corType = CorElementType.ELEMENT_TYPE_ARRAY;
      }
      break;

    case CorElementType.ELEMENT_TYPE_PTR:
      final ptrTuple = parseTypeFromSignature(signatureBlob.sublist(1), reader);
      dataLength = 1 + ptrTuple.offsetLength;
      runtimeType.typeArgs.add(ptrTuple.typeIdentifier);
      flattenTypeArgs(runtimeType);
      break;

    case CorElementType.ELEMENT_TYPE_GENERICINST:
      final classTuple =
          parseTypeFromSignature(signatureBlob.sublist(1), reader);
      runtimeType.name = classTuple.typeIdentifier.name;
      final argsCount =
          signatureBlob[1 + classTuple.offsetLength]; // GENERICINST + class
      dataLength =
          classTuple.offsetLength + 2; // GENERICINST + class + argsCount
      for (var idx = 0; idx < argsCount; idx++) {
        final arg =
            parseTypeFromSignature(signatureBlob.sublist(dataLength), reader);
        dataLength += arg.offsetLength;
        runtimeType.typeArgs.add(arg.typeIdentifier);
      }
      break;

    case CorElementType.ELEMENT_TYPE_ARRAY:
      // Format is [Type ArrayShape] (see §II.23.2.13)
      final arrayTuple =
          parseTypeFromSignature(signatureBlob.sublist(1), reader);
      dataLength = 1 + arrayTuple.offsetLength;
      runtimeType.typeArgs.add(arrayTuple.typeIdentifier);
      final dimensionsCount = signatureBlob[dataLength++]; // rank
      final dimensionUpperBounds = List<int>.filled(dimensionsCount, 0);
      final numSizes = signatureBlob[dataLength++];
      for (var i = 0; i < numSizes; i++) {
        dimensionUpperBounds[i] = signatureBlob[dataLength++];
      }
      runtimeType.arrayDimensions = dimensionUpperBounds;
      break;

    case CorElementType.ELEMENT_TYPE_VAR:
    case CorElementType.ELEMENT_TYPE_MVAR:
      // Element is a generic parameter of a type or a method
      final uncompressed = corSigUncompressData(signatureBlob.sublist(1));
      runtimeType.genericParameter = uncompressed.data;
      dataLength = 1;
      runtimeType.name = runtimeType.toString();
      break;

    default:
      dataLength = 1;
      runtimeType.name = runtimeType.toString();
  }

  return TypeTuple(runtimeType, dataLength);
}
