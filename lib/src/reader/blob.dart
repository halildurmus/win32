import 'dart:collection';
import 'dart:convert';
import 'dart:typed_data';

import '../attributes.dart';
import '../bindings.dart';
import '../compressed_integer.dart';
import '../exception.dart';
import '../metadata_type.dart';
import '../method_signature.dart';
import '../type_name.dart';
import 'codes.dart';
import 'metadata_index.dart';

final class Blob {
  Blob(this.metadataIndex, this.readerIndex, this.slice);

  final MetadataIndex metadataIndex;
  final int readerIndex;
  Uint8List slice;

  /// When the slice is empty, it indicates that the blob has been fully read.
  @pragma('vm:prefer-inline')
  bool get isEmpty => slice.isEmpty;

  /// Returns the current length of the byte slice.
  @pragma('vm:prefer-inline')
  int get length => slice.length;

  /// Allows Blob to be indexed like a list.
  @pragma('vm:prefer-inline')
  int operator [](int index) => slice[index];

  /// Decodes a value of type [T] using the provided decoder function.
  T decode<T extends CodedIndex>() {
    final companion = CodedIndex.companion<T>();
    final code = readCompressed();
    return companion.decode(metadataIndex, readerIndex, code);
  }

  /// Attempts to read an expected value.
  ///
  /// If it matches, advances the slice.
  bool tryRead(int expected) {
    final CompressedInteger(:value, :bytesRead) = CompressedInteger.decode(
      slice,
    );
    if (value == expected) {
      _offset(bytesRead);
      return true;
    }
    return false;
  }

  /// Reads a method signature from the blob.
  MethodSignature readMethodSignature([
    List<MetadataType> generics = const [],
  ]) {
    final flags = MethodCallFlags(readUint8());
    final paramCount = readCompressed();
    final returnType = readTypeSignature(generics);
    final types = <MetadataType>[];
    for (var i = 0; i < paramCount; i++) {
      types.add(readTypeSignature(generics));
    }
    return MethodSignature(flags: flags, returnType: returnType, types: types);
  }

  /// Reads modifier tokens and decodes them into a list of [TypeDefOrRef].
  List<TypeDefOrRef> readModifiers() {
    final mods = <TypeDefOrRef>[];
    while (true) {
      final CompressedInteger(:value, :bytesRead) = CompressedInteger.decode(
        slice,
      );
      if (value != ELEMENT_TYPE_CMOD_OPT && value != ELEMENT_TYPE_CMOD_REQD) {
        break;
      } else {
        _offset(bytesRead);
        mods.add(
          TypeDefOrRef.decode(metadataIndex, readerIndex, readCompressed()),
        );
      }
    }
    return UnmodifiableListView(mods);
  }

  /// Reads a type code and returns a corresponding [MetadataType].
  MetadataType readTypeCode([List<MetadataType> generics = const []]) {
    final typeCode = readUint8();
    return switch (typeCode) {
      ELEMENT_TYPE_VOID => const VoidType(),
      ELEMENT_TYPE_BOOLEAN => const BoolType(),
      ELEMENT_TYPE_CHAR => const CharType(),
      ELEMENT_TYPE_I1 => const Int8Type(),
      ELEMENT_TYPE_U1 => const Uint8Type(),
      ELEMENT_TYPE_I2 => const Int16Type(),
      ELEMENT_TYPE_U2 => const Uint16Type(),
      ELEMENT_TYPE_I4 => const Int32Type(),
      ELEMENT_TYPE_U4 => const Uint32Type(),
      ELEMENT_TYPE_I8 => const Int64Type(),
      ELEMENT_TYPE_U8 => const Uint64Type(),
      ELEMENT_TYPE_R4 => const Float32Type(),
      ELEMENT_TYPE_R8 => const Float64Type(),
      ELEMENT_TYPE_I => const IntPtrType(),
      ELEMENT_TYPE_U => const UintPtrType(),
      ELEMENT_TYPE_STRING => const StringType(),
      ELEMENT_TYPE_OBJECT => const ObjectType(),
      ELEMENT_TYPE_CLASS ||
      ELEMENT_TYPE_VALUETYPE => decode<TypeDefOrRef>().type(generics),
      ELEMENT_TYPE_VAR => generics[readCompressed()],
      ELEMENT_TYPE_ARRAY => _readArray(generics),
      ELEMENT_TYPE_GENERICINST => _readGenericInst(generics),
      ELEMENT_TYPE_ENUM => const AttributeEnumType(),
      _ => throw WinmdException('Unknown type code: $typeCode'),
    };
  }

  MetadataType _readArray(List<MetadataType> generics) {
    // See §II.23.2.13 ArrayShape
    final type = readTypeSignature(generics);
    final rank = readCompressed();
    assert(rank == 1, 'Array rank must be 1, but got $rank.');
    final numSizes = readCompressed();
    assert(numSizes == 1, 'Array numSizes must be 1, but got $numSizes.');
    final size = readCompressed();
    final numLoBounds = readCompressed();
    assert(
      numLoBounds == 0 || numLoBounds == 1,
      'Array numLoBounds must be 0 or 1, but got $numLoBounds.',
    );
    for (var i = 0; i < numLoBounds; i++) {
      final loBounds = readCompressed();
      assert(loBounds == 0, 'Array loBounds must be 0, but got $loBounds.');
    }
    return FixedArrayType(type, size);
  }

  MetadataType _readGenericInst(List<MetadataType> generics) {
    final typeCode = readUint8();
    assert(
      typeCode == ELEMENT_TYPE_CLASS || typeCode == ELEMENT_TYPE_VALUETYPE,
      'GenericInst type code must be ELEMENT_TYPE_CLASS or '
      'ELEMENT_TYPE_VALUETYPE, but got $typeCode.',
    );
    final typeDefOrRef = decode<TypeDefOrRef>();
    final typeDefOrRefGenerics = <MetadataType>[];
    final count = readCompressed();
    for (var i = 0; i < count; i++) {
      typeDefOrRefGenerics.add(readTypeCode(generics));
    }
    return NamedType(
      TypeName(
        typeDefOrRef.namespace,
        typeDefOrRef.name,
        generics: typeDefOrRefGenerics,
      ),
    );
  }

  /// Reads a field or method type signature.
  MetadataType readTypeSignature([List<MetadataType> generics = const []]) {
    final isConst = readModifiers().any(
      (def) =>
          def.namespace == 'System.Runtime.CompilerServices' &&
          def.name == 'IsConst',
    );
    final isRef = tryRead(ELEMENT_TYPE_BYREF);

    if (tryRead(ELEMENT_TYPE_VOID)) return const VoidType();

    final isArray = tryRead(ELEMENT_TYPE_SZARRAY);

    var pointers = 0;
    while (tryRead(ELEMENT_TYPE_PTR)) {
      pointers++;
    }

    final type = readTypeCode(generics);

    if (pointers > 0) return MutablePointerType(type, pointers);
    if (isConst) return ConstReferenceType(type);
    if (isArray) return isRef ? ArrayReferenceType(type) : ArrayType(type);

    return type;
  }

  /// Reads a compressed integer from the blob.
  int readCompressed() {
    final CompressedInteger(:value, :bytesRead) = CompressedInteger.decode(
      slice,
    );
    _offset(bytesRead);
    return value;
  }

  /// Reads a boolean value (0 = false, 1 = true).
  bool readBool() => switch (readUint8()) {
    0 => false,
    1 => true,
    _ => throw const WinmdException('Invalid bool value'),
  };

  /// Reads a signed 8-bit integer.
  int readInt8() {
    final value = slice.buffer.asByteData().getInt8(slice.offsetInBytes);
    _offset(1);
    return value;
  }

  /// Reads an unsigned 8-bit integer.
  int readUint8() {
    final value = slice[0];
    _offset(1);
    return value;
  }

  /// Reads a signed 16-bit integer.
  int readInt16() {
    final value = slice.buffer.asByteData().getInt16(
      slice.offsetInBytes,
      Endian.little,
    );
    _offset(2);
    return value;
  }

  /// Reads an unsigned 16-bit integer.
  int readUint16() {
    final value = slice.buffer.asByteData().getUint16(
      slice.offsetInBytes,
      Endian.little,
    );
    _offset(2);
    return value;
  }

  /// Reads a signed 32-bit integer.
  int readInt32() {
    final value = slice.buffer.asByteData().getInt32(
      slice.offsetInBytes,
      Endian.little,
    );
    _offset(4);
    return value;
  }

  /// Reads an unsigned 32-bit integer.
  int readUint32() {
    final value = slice.buffer.asByteData().getUint32(
      slice.offsetInBytes,
      Endian.little,
    );
    _offset(4);
    return value;
  }

  /// Reads a signed 64-bit integer.
  int readInt64() {
    final value = slice.buffer.asByteData().getInt64(
      slice.offsetInBytes,
      Endian.little,
    );
    _offset(8);
    return value;
  }

  /// Reads an unsigned 64-bit integer.
  int readUint64() {
    final value = slice.buffer.asByteData().getUint64(
      slice.offsetInBytes,
      Endian.little,
    );
    _offset(8);
    return value;
  }

  /// Reads a 32-bit floating point number.
  double readFloat32() {
    final value = slice.buffer.asByteData().getFloat32(
      slice.offsetInBytes,
      Endian.little,
    );
    _offset(4);
    return value;
  }

  /// Reads a 64-bit floating point number.
  double readFloat64() {
    final value = slice.buffer.asByteData().getFloat64(
      slice.offsetInBytes,
      Endian.little,
    );
    _offset(8);
    return value;
  }

  /// Reads a UTF-8 encoded string.
  ///
  /// The first value indicates the length.
  String readUtf8() {
    final length = readCompressed();
    final stringBytes = Uint8List.sublistView(slice, 0, length);
    final value = utf8.decode(stringBytes);
    _offset(length);
    return value;
  }

  /// Reads a UTF-16 encoded string.
  String readUtf16() {
    final stringLength = length ~/ 2;

    final Uint16List stringBytes;

    if (slice.offsetInBytes.isEven) {
      // If aligned, directly use asUint16List for efficiency.
      stringBytes = slice.buffer.asUint16List(
        slice.offsetInBytes,
        stringLength,
      );
    } else {
      // If unaligned, manually decode UTF-16.
      stringBytes = Uint16List(stringLength);
      for (var i = 0; i < stringLength; i++) {
        final low = slice[i * 2];
        final high = slice[i * 2 + 1];
        stringBytes[i] = low | (high << 8);
      }
    }

    _offset(length);
    return String.fromCharCodes(stringBytes);
  }

  /// Updates the slice to a view that skips the first [offset] bytes.
  @pragma('vm:prefer-inline')
  void _offset(int offset) => slice = Uint8List.sublistView(slice, offset);

  @override
  String toString() => slice.toString();
}
