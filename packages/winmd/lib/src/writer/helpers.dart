import 'dart:convert';
import 'dart:typed_data';

import '../bindings.dart';
import '../compressed_integer.dart';
import '../metadata_value.dart';
import 'codes.dart';
import 'heap/metadata_heap.dart';
import 'table/index.dart';
import 'table_stream.dart';

/// Returns the smallest multiple of [alignment] greater than or equal to
/// [size].
int alignTo(int size, int alignment) {
  final mask = alignment - 1;
  return (size + mask) & ~mask;
}

bool isSorted(Iterable<int> iterable) {
  final list = iterable.toList();
  for (var i = 1; i < list.length; i++) {
    if (list[i - 1] > list[i]) return false;
  }
  return true;
}

/// Extension methods for writing little-endian primitive types to a
/// [BytesBuilder].
extension BytesBuilderExtension on BytesBuilder {
  /// Writess a signed 16-bit integer in little-endian format.
  void writeInt16(int value) => _write((b) => b.setInt16(0, value, .little), 2);

  /// Writes an unsigned 16-bit integer in little-endian format.
  void writeUint16(int value) =>
      _write((b) => b.setUint16(0, value, .little), 2);

  /// Writes a signed 32-bit integer in little-endian format.
  void writeInt32(int value) => _write((b) => b.setInt32(0, value, .little), 4);

  /// Writes an unsigned 32-bit integer in little-endian format.
  void writeUint32(int value) =>
      _write((b) => b.setUint32(0, value, .little), 4);

  /// Writes a signed 64-bit integer in little-endian format.
  void writeInt64(int value) => _write((b) => b.setInt64(0, value, .little), 8);

  /// Writes an unsigned 64-bit integer in little-endian format.
  void writeUint64(int value) =>
      _write((b) => b.setUint64(0, value, .little), 8);

  /// Writes a 32-bit floating-point number in little-endian format.
  void writeFloat32(double value) =>
      _write((b) => b.setFloat32(0, value, .little), 4);

  /// Writes a 64-bit floating-point number in little-endian format.
  void writeFloat64(double value) =>
      _write((b) => b.setFloat64(0, value, .little), 8);

  /// Writes a coded index using either 16 or 32 bits, depending on the size of
  /// the coded index.
  ///
  /// If coded index size is 2, writes as a 16-bit unsigned integer; otherwise,
  /// writes as a 32-bit unsigned integer.
  void writeCodedIndex<T extends CodedIndex>(T index, TableStream tableStream) {
    final codedIndexSize = _getCodedIndexSize(index, tableStream);
    if (codedIndexSize == 2) {
      writeUint16(index.encode());
    } else {
      writeUint32(index.encode());
    }
  }

  int _getCodedIndexSize<T extends CodedIndex>(
    T index,
    TableStream tableStream,
  ) => switch (index) {
    CustomAttributeType() => tableStream.codedIndexSizes.customAttributeType,
    HasConstant() => tableStream.codedIndexSizes.hasConstant,
    HasCustomAttribute() => tableStream.codedIndexSizes.hasCustomAttribute,
    HasDeclSecurity() => tableStream.codedIndexSizes.hasDeclSecurity,
    HasFieldMarshal() => tableStream.codedIndexSizes.hasFieldMarshal,
    HasSemantics() => tableStream.codedIndexSizes.hasSemantics,
    Implementation() => tableStream.codedIndexSizes.implementation,
    MemberForwarded() => tableStream.codedIndexSizes.memberForwarded,
    MemberRefParent() => tableStream.codedIndexSizes.memberRefParent,
    MethodDefOrRef() => tableStream.codedIndexSizes.methodDefOrRef,
    ResolutionScope() => tableStream.codedIndexSizes.resolutionScope,
    TypeOrMethodDef() => tableStream.codedIndexSizes.typeOrMethodDef,
    TypeDefOrRef() => tableStream.codedIndexSizes.typeDefOrRef,
  };

  /// Writes a heap index using 16 or 32 bits, depending on the size of the
  /// heap.
  ///
  /// If heap size is less than 2^16, writes as a 16-bit unsigned integer;
  /// otherwise, writes as a 32-bit unsigned integer.
  void writeHeapIndex<T extends HeapIndex>(T index, TableStream tableStream) {
    final heapSize = _getHeapSize(index, tableStream);
    if (heapSize < 0x10000) {
      writeUint16(index.index);
    } else {
      writeUint32(index.index);
    }
  }

  int _getHeapSize<T extends HeapIndex>(T index, TableStream tableStream) =>
      switch (index) {
        StringIndex() => tableStream.stringHeapSize,
        BlobIndex() => tableStream.blobHeapSize,
        GuidIndex() => tableStream.guidHeapSize,
        UserStringIndex() => tableStream.userStringHeapSize,
      };

  /// Writes a table index (offset by +1) using 16 or 32 bits, depending on
  /// the size of the table.
  ///
  /// If table size is less than 2^16, writes ([index] + 1) as a 16-bit
  /// unsigned integer; otherwise, writes it as a 32-bit unsigned integer.
  void writeTableIndex<T extends TableIndex>(T index, TableStream tableStream) {
    final tableSize = _getTableSize(index, tableStream);
    final adjustedIndex = index.index + 1;
    if (tableSize < 0x10000) {
      writeUint16(adjustedIndex);
    } else {
      writeUint32(adjustedIndex);
    }
  }

  int _getTableSize<T extends TableIndex>(T index, TableStream tableStream) =>
      switch (index) {
        AssemblyIndex() => tableStream[.assembly].length,
        AssemblyOSIndex() => tableStream[.assemblyOS].length,
        AssemblyProcessorIndex() => tableStream[.assemblyProcessor].length,
        AssemblyRefIndex() => tableStream[.assemblyRef].length,
        AssemblyRefOSIndex() => tableStream[.assemblyRefOS].length,
        AssemblyRefProcessorIndex() =>
          tableStream[.assemblyRefProcessor].length,
        ClassLayoutIndex() => tableStream[.classLayout].length,
        ConstantIndex() => tableStream[.constant].length,
        CustomAttributeIndex() => tableStream[.customAttribute].length,
        DeclSecurityIndex() => tableStream[.declSecurity].length,
        EventIndex() => tableStream[.event].length,
        EventMapIndex() => tableStream[.eventMap].length,
        ExportedTypeIndex() => tableStream[.exportedType].length,
        FieldIndex() => tableStream[.field].length,
        FieldLayoutIndex() => tableStream[.fieldLayout].length,
        FieldMarshalIndex() => tableStream[.fieldMarshal].length,
        FieldRVAIndex() => tableStream[.fieldRVA].length,
        FileIndex() => tableStream[.file].length,
        GenericParamIndex() => tableStream[.genericParam].length,
        GenericParamConstraintIndex() =>
          tableStream[.genericParamConstraint].length,
        ImplMapIndex() => tableStream[.implMap].length,
        InterfaceImplIndex() => tableStream[.interfaceImpl].length,
        ManifestResourceIndex() => tableStream[.manifestResource].length,
        MemberRefIndex() => tableStream[.memberRef].length,
        MethodDefIndex() => tableStream[.methodDef].length,
        MethodImplIndex() => tableStream[.methodImpl].length,
        MethodSemanticsIndex() => tableStream[.methodSemantics].length,
        MethodSpecIndex() => tableStream[.methodSpec].length,
        ModuleIndex() => tableStream[.module].length,
        ModuleRefIndex() => tableStream[.moduleRef].length,
        NestedClassIndex() => tableStream[.nestedClass].length,
        ParamIndex() => tableStream[.param].length,
        PropertyIndex() => tableStream[.property].length,
        PropertyMapIndex() => tableStream[.propertyMap].length,
        StandAloneSigIndex() => tableStream[.standAloneSig].length,
        TypeDefIndex() => tableStream[.typeDef].length,
        TypeRefIndex() => tableStream[.typeRef].length,
        TypeSpecIndex() => tableStream[.typeSpec].length,
      };

  /// Writes the appropriate binary representation of a [MetadataValue].
  void writeValue(MetadataValue value) => switch (value) {
    BoolValue(:final value) => addByte(value ? 1 : 0),
    CharValue(:final value) => writeUint16(value),
    Int8Value(:final value) => addByte(value),
    Uint8Value(:final value) => addByte(value),
    Int16Value(:final value) => writeInt16(value),
    Uint16Value(:final value) => writeUint16(value),
    Int32Value(:final value) => writeInt32(value),
    Uint32Value(:final value) => writeUint32(value),
    Int64Value(:final value) => writeInt64(value),
    Uint64Value(:final value) => writeInt64(value),
    Float32Value(:final value) => writeFloat32(value),
    Float64Value(:final value) => writeFloat64(value),
    AttributeEnumValue(:final value) => writeInt32(value),
    Utf8StringValue(:final value) => () {
      final bytes = utf8.encode(value);
      add(CompressedInteger.encode(bytes.length));
      add(bytes);
    }(),
    Utf16StringValue(:final value) => add(value.codeUnits),
  };

  /// Internal helper to write a value using a [ByteData] writer.
  void _write(void Function(ByteData) writer, int byteCount) {
    final buffer = ByteData(byteCount);
    writer(buffer);
    add(buffer.buffer.asUint8List());
  }
}

/// Extension on [NativeType] providing convenience methods for classification.
extension NativeTypeExtension on NativeType {
  /// Whether this [NativeType] is considered a native intrinsic type as defined
  /// in ECMA-335 `§II.23.4`.
  ///
  /// Intrinsic types include primitive scalars, platform-native strings,
  /// and function pointers.
  ///
  /// This excludes composite types like [NATIVE_TYPE_ARRAY], and sentinel
  /// values such as [NATIVE_TYPE_MAX].
  bool get isIntrinsic => switch (this) {
    NATIVE_TYPE_BOOLEAN ||
    NATIVE_TYPE_I1 ||
    NATIVE_TYPE_U1 ||
    NATIVE_TYPE_I2 ||
    NATIVE_TYPE_U2 ||
    NATIVE_TYPE_I4 ||
    NATIVE_TYPE_U4 ||
    NATIVE_TYPE_I8 ||
    NATIVE_TYPE_U8 ||
    NATIVE_TYPE_R4 ||
    NATIVE_TYPE_R8 ||
    NATIVE_TYPE_LPSTR ||
    NATIVE_TYPE_LPWSTR ||
    NATIVE_TYPE_INT ||
    NATIVE_TYPE_UINT ||
    NATIVE_TYPE_FUNC => true,
    _ => false,
  };
}

/// Extension to pad a [Uint8List] to a multiple of 4 bytes.
extension Uint8ListExtension on Uint8List {
  /// Pads the byte list to the next 4-byte boundary using zero bytes.
  Uint8List toBytesPadded() {
    final newLength = alignTo(length, 4);
    if (newLength == length) return this;
    final padded = Uint8List(newLength)..setRange(0, length, this);
    return padded;
  }
}
