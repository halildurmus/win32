import 'dart:collection';
import 'dart:convert';
import 'dart:typed_data';

import '../bindings.dart';
import '../compressed_integer.dart';
import '../exception.dart';
import '../marshalling_descriptor.dart';
import '../member_ref_signature.dart';
import '../metadata_type.dart';
import '../method_signature.dart';
import '../property_sig.dart';
import '../stand_alone_signature.dart';
import '../writer/helpers.dart';
import 'codes.dart';
import 'metadata_index.dart';

/// Represents a raw data block (blob) that can be read sequentially.
///
/// This class provides functionality to read a byte slice ([slice])
/// sequentially, decode values, and process metadata related to the blob's
/// contents. It includes utilities for reading various data types from the
/// byte slice and tracking the current reading index.
final class Blob {
  /// Constructs a [Blob] with the specified [metadataIndex], [readerIndex],
  /// and byte [slice].
  Blob(this.metadataIndex, this.readerIndex, this.slice);

  /// The metadata index that provides contextual information for interpreting
  /// the blob.
  final MetadataIndex metadataIndex;

  /// The index of the reader in the [metadataIndex].
  final int readerIndex;

  /// The slice of raw byte data that represents the contents of the blob.
  Uint8List slice;

  /// Whether the blob is fully read (i.e., the [slice] is empty).
  @pragma('vm:prefer-inline')
  bool get isEmpty => slice.isEmpty;

  /// The current length of the [slice], i.e., the number of remaining bytes to
  /// read.
  @pragma('vm:prefer-inline')
  int get length => slice.length;

  /// Allows direct access to the elements in the [slice] by index, similar to
  /// a list.
  @pragma('vm:prefer-inline')
  int operator [](int index) => slice[index];

  /// Decodes a value of type [T] using the provided decoder function.
  T decode<T extends CodedIndex>() {
    final companion = CodedIndex.companion<T>();
    final code = readCompressed();
    return companion.decode(metadataIndex, readerIndex, code);
  }

  /// Attempts to read an expected value from the blob.
  ///
  /// If the [expected] value matches, it advances the [slice] and returns
  /// `true`.
  /// Otherwise, it returns `false` and leaves the [slice] unchanged.
  bool tryRead(int expected) {
    final CompressedInteger(:value, :bytesRead) = .decode(slice);
    if (value == expected) {
      _offset(bytesRead);
      return true;
    }
    return false;
  }

  /// Reads a `FieldSig` from the blob as specified in ECMA-335 `§II.23.2.4`.
  MetadataType readFieldSig() {
    final firstByte = readUint8();
    assert(firstByte == CallingConvention.FIELD, 'Blob is not a FieldSig');
    return readTypeSignature();
  }

  /// Reads a [MarshallingDescriptor] from the blob as specified in ECMA-335
  /// `§II.23.4`.
  ///
  /// Returns a [SimpleMarshallingDescriptor] for intrinsic types,
  /// or an [ArrayMarshallingDescriptor] when the native type is
  /// [NATIVE_TYPE_ARRAY].
  MarshallingDescriptor readMarshallingDescriptor() {
    final nativeType = NativeType(readUint8());
    if (nativeType.isIntrinsic) return SimpleMarshallingDescriptor(nativeType);

    if (nativeType == NATIVE_TYPE_ARRAY) {
      final arrayElementType = NativeType(readUint8());
      assert(
        arrayElementType.isIntrinsic || arrayElementType == NATIVE_TYPE_MAX,
        'Array element type must be intrinsic or NATIVE_TYPE_MAX.',
      );
      if (slice.isEmpty) {
        // No size info; only element type is specified.
        return ArrayMarshallingDescriptor(elementType: arrayElementType);
      }

      final sizeParameterIndex = readCompressed();
      assert(
        sizeParameterIndex >= 0,
        'Array size parameter index must be >= 0.',
      );
      if (slice.isEmpty) {
        return ArrayMarshallingDescriptor(
          elementType: arrayElementType,
          sizeParameterIndex: sizeParameterIndex,
        );
      }

      final numElements = readCompressed();
      assert(numElements >= 1, 'Array number of elements must be >= 1.');
      return ArrayMarshallingDescriptor(
        elementType: arrayElementType,
        sizeParameterIndex: sizeParameterIndex,
        numElements: numElements,
      );
    }

    throw WinmdException(
      'Invalid native type in marshalling descriptor: $nativeType',
    );
  }

  /// Reads either a `FieldSig` or a `MethodRefSig` from the blob.
  MemberRefSignature readMemberRefSignature() {
    if (slice[0] == CallingConvention.FIELD) return FieldSig(readFieldSig());
    return readMethodRefSig();
  }

  /// Reads a `MethodDefSig` from the blob as specified in ECMA-335
  /// `§II.23.2.1`.
  MethodSignature readMethodDefSig() {
    final callingConvention = CallingConvention(readUint8());
    final paramCount = readCompressed();
    final returnType = readTypeSignature();
    final types = <MetadataType>[];
    for (var i = 0; i < paramCount; i++) {
      types.add(readTypeSignature());
    }
    return .new(
      callingConvention: callingConvention,
      returnType: returnType,
      types: types,
    );
  }

  /// Reads a `MethodRefSig` from the blob as specified in ECMA-335
  /// `§II.23.2.2`.
  MethodRefSig readMethodRefSig() {
    final callingConvention = CallingConvention(readUint8());
    final paramCount = readCompressed();
    final returnType = readTypeSignature();
    final types = <MetadataType>[];
    for (var i = 0; i < paramCount; i++) {
      types.add(readTypeSignature());
    }
    return .new(
      callingConvention: callingConvention,
      returnType: returnType,
      types: types,
    );
  }

  /// Reads a `MethodSpecBlob` from the blob as specified in ECMA-335
  /// `§II.23.2.15`.
  List<MetadataType> readMethodSpecBlob() {
    final firstByte = readUint8();
    assert(
      firstByte == CallingConvention.GENERICINST,
      'Blob is not a MethodSpecBlob',
    );
    final genArgCount = readCompressed();
    assert(
      genArgCount >= 1,
      'MethodSpecBlob generic argument count must be >= 1.',
    );
    final types = <MetadataType>[];
    for (var i = 0; i < genArgCount; i++) {
      types.add(readTypeSignature());
    }
    return types;
  }

  /// Reads modifier tokens and decodes them into a list of [TypeDefOrRef].
  List<TypeDefOrRef> readModifiers() {
    final mods = <TypeDefOrRef>[];
    while (true) {
      final CompressedInteger(:value, :bytesRead) = .decode(slice);
      if (value != ELEMENT_TYPE_CMOD_OPT && value != ELEMENT_TYPE_CMOD_REQD) {
        break;
      } else {
        _offset(bytesRead);
        mods.add(.decode(metadataIndex, readerIndex, readCompressed()));
      }
    }
    return UnmodifiableListView(mods);
  }

  /// Reads a `PropertySig` from the blob as specified in ECMA-335 `§II.23.2.5`.
  PropertySig readPropertySig() {
    final firstByte = readUint8();
    assert(
      firstByte & CallingConvention.PROPERTY != 0,
      'Blob is not a PropertySig',
    );
    final hasThis = firstByte & CallingConvention.HASTHIS != 0;
    final paramCount = readCompressed();
    final returnType = readTypeSignature();
    final types = <MetadataType>[];
    for (var i = 0; i < paramCount; i++) {
      types.add(readTypeSignature());
    }
    return .new(
      callingConvention: hasThis ? .HASTHIS : .DEFAULT,
      returnType: returnType,
      types: types,
    );
  }

  /// Reads either a `LocalVarSig` or a `StandAloneMethodSig` from the blob.
  StandAloneSignature readStandAloneSignature() {
    if (slice[0] == CallingConvention.LOCAL_SIG) {
      final prolog = readUint8();
      assert(
        prolog == CallingConvention.LOCAL_SIG,
        'Blob is not a LocalVarSig',
      );
      final count = readCompressed();
      final locals = <MetadataType>[];
      for (var i = 0; i < count; i++) {
        locals.add(readTypeSignature());
      }
      return LocalVarSig(locals);
    }

    final callingConvention = CallingConvention(readUint8());
    final paramCount = readCompressed();
    final returnType = readTypeSignature();
    final types = <MetadataType>[];
    for (var i = 0; i < paramCount; i++) {
      types.add(readTypeSignature());
    }
    return StandAloneMethodSig(
      callingConvention: callingConvention,
      returnType: returnType,
      types: types,
    );
  }

  /// Reads a type code and returns a corresponding [MetadataType].
  MetadataType readTypeCode() {
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
      ELEMENT_TYPE_CLASS => switch (decode<TypeDefOrRef>()) {
        TypeDefOrRefTypeDef(:final value) => NamedClassType(
          .new(value.namespace, value.name),
        ),
        TypeDefOrRefTypeRef(:final value) => NamedClassType(
          .new(value.namespace, value.name),
        ),
        TypeDefOrRefTypeSpec(:final value) => value.signature,
      },
      ELEMENT_TYPE_VALUETYPE => switch (decode<TypeDefOrRef>()) {
        TypeDefOrRefTypeDef(:final value) => NamedValueType(
          .new(value.namespace, value.name),
        ),
        TypeDefOrRefTypeRef(:final value) => NamedValueType(
          .new(value.namespace, value.name),
        ),
        TypeDefOrRefTypeSpec(:final value) => value.signature,
      },
      ELEMENT_TYPE_VAR => GenericParameterType(readCompressed()),
      ELEMENT_TYPE_ARRAY => _readArray(),
      ELEMENT_TYPE_GENERICINST => _readGenericInst(),
      ELEMENT_TYPE_ENUM => const AttributeEnumType(),
      _ => throw WinmdException('Unknown type code: $typeCode'),
    };
  }

  MetadataType _readArray() {
    // See §II.23.2.13 ArrayShape
    final type = readTypeSignature();
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

  MetadataType _readGenericInst() {
    final typeCode = readUint8();
    assert(
      typeCode == ELEMENT_TYPE_CLASS || typeCode == ELEMENT_TYPE_VALUETYPE,
      'GENERICINST type must be ELEMENT_TYPE_CLASS or '
      'ELEMENT_TYPE_VALUETYPE, but got $typeCode.',
    );
    final typeDefOrRef = decode<TypeDefOrRef>();
    final typeDefOrRefGenerics = <MetadataType>[];
    final count = readCompressed();
    for (var i = 0; i < count; i++) {
      typeDefOrRefGenerics.add(readTypeCode());
    }

    if (typeCode == ELEMENT_TYPE_CLASS) {
      return NamedClassType(
        .new(
          typeDefOrRef.namespace,
          typeDefOrRef.name,
          generics: typeDefOrRefGenerics,
        ),
      );
    }

    return NamedValueType(
      .new(
        typeDefOrRef.namespace,
        typeDefOrRef.name,
        generics: typeDefOrRefGenerics,
      ),
    );
  }

  /// Reads a field or method type signature.
  MetadataType readTypeSignature() {
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

    final type = readTypeCode();

    if (pointers > 0) return MutablePointerType(type, pointers);
    if (isConst) return ConstReferenceType(type);
    if (isArray) return isRef ? ArrayReferenceType(type) : ArrayType(type);

    return type;
  }

  /// Reads a compressed integer from the blob.
  int readCompressed() {
    final CompressedInteger(:value, :bytesRead) = .decode(slice);
    _offset(bytesRead);
    return value;
  }

  /// Reads a boolean value (0 = `false`, 1 = `true`).
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
      .little,
    );
    _offset(2);
    return value;
  }

  /// Reads an unsigned 16-bit integer.
  int readUint16() {
    final value = slice.buffer.asByteData().getUint16(
      slice.offsetInBytes,
      .little,
    );
    _offset(2);
    return value;
  }

  /// Reads a signed 32-bit integer.
  int readInt32() {
    final value = slice.buffer.asByteData().getInt32(
      slice.offsetInBytes,
      .little,
    );
    _offset(4);
    return value;
  }

  /// Reads an unsigned 32-bit integer.
  int readUint32() {
    final value = slice.buffer.asByteData().getUint32(
      slice.offsetInBytes,
      .little,
    );
    _offset(4);
    return value;
  }

  /// Reads a signed 64-bit integer.
  int readInt64() {
    final value = slice.buffer.asByteData().getInt64(
      slice.offsetInBytes,
      .little,
    );
    _offset(8);
    return value;
  }

  /// Reads an unsigned 64-bit integer.
  int readUint64() {
    final value = slice.buffer.asByteData().getUint64(
      slice.offsetInBytes,
      .little,
    );
    _offset(8);
    return value;
  }

  /// Reads a 32-bit floating point number.
  double readFloat32() {
    final value = slice.buffer.asByteData().getFloat32(
      slice.offsetInBytes,
      .little,
    );
    _offset(4);
    return value;
  }

  /// Reads a 64-bit floating point number.
  double readFloat64() {
    final value = slice.buffer.asByteData().getFloat64(
      slice.offsetInBytes,
      .little,
    );
    _offset(8);
    return value;
  }

  /// Reads a UTF-8 encoded string.
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
      stringBytes = .new(stringLength);
      for (var i = 0; i < stringLength; i++) {
        final low = slice[i * 2];
        final high = slice[i * 2 + 1];
        stringBytes[i] = low | (high << 8);
      }
    }
    _offset(length);
    return .fromCharCodes(stringBytes);
  }

  /// Updates the slice to a view that skips the first [offset] bytes.
  @pragma('vm:prefer-inline')
  void _offset(int offset) => slice = .sublistView(slice, offset);

  @override
  String toString() => slice.toString();
}
