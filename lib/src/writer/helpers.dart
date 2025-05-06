import 'dart:convert';
import 'dart:typed_data';

import '../common.dart';
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

/// Extension methods for writing little-endian primitive types to a
/// [BytesBuilder].
extension BytesBuilderExtension on BytesBuilder {
  /// Writess a signed 16-bit integer in little-endian format.
  void writeInt16(int value) =>
      _write((b) => b.setInt16(0, value, Endian.little), 2);

  /// Writes an unsigned 16-bit integer in little-endian format.
  void writeUint16(int value) =>
      _write((b) => b.setUint16(0, value, Endian.little), 2);

  /// Writes a signed 32-bit integer in little-endian format.
  void writeInt32(int value) =>
      _write((b) => b.setInt32(0, value, Endian.little), 4);

  /// Writes an unsigned 32-bit integer in little-endian format.
  void writeUint32(int value) =>
      _write((b) => b.setUint32(0, value, Endian.little), 4);

  /// Writes a signed 64-bit integer in little-endian format.
  void writeInt64(int value) =>
      _write((b) => b.setInt64(0, value, Endian.little), 8);

  /// Writes an unsigned 64-bit integer in little-endian format.
  void writeUint64(int value) =>
      _write((b) => b.setUint64(0, value, Endian.little), 8);

  /// Writes a 32-bit floating-point number in little-endian format.
  void writeFloat32(double value) =>
      _write((b) => b.setFloat32(0, value, Endian.little), 4);

  /// Writes a 64-bit floating-point number in little-endian format.
  void writeFloat64(double value) =>
      _write((b) => b.setFloat64(0, value, Endian.little), 8);

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

  int _getTableSize<T extends TableIndex>(
    T index,
    TableStream tableStream,
  ) => switch (index) {
    AssemblyIndex() => tableStream[MetadataTableId.assembly].length,
    AssemblyOSIndex() => tableStream[MetadataTableId.assemblyOS].length,
    AssemblyProcessorIndex() =>
      tableStream[MetadataTableId.assemblyProcessor].length,
    AssemblyRefIndex() => tableStream[MetadataTableId.assemblyRef].length,
    AssemblyRefOSIndex() => tableStream[MetadataTableId.assemblyRefOS].length,
    AssemblyRefProcessorIndex() =>
      tableStream[MetadataTableId.assemblyRefProcessor].length,
    ClassLayoutIndex() => tableStream[MetadataTableId.classLayout].length,
    ConstantIndex() => tableStream[MetadataTableId.constant].length,
    CustomAttributeIndex() =>
      tableStream[MetadataTableId.customAttribute].length,
    DeclSecurityIndex() => tableStream[MetadataTableId.declSecurity].length,
    EventIndex() => tableStream[MetadataTableId.event].length,
    EventMapIndex() => tableStream[MetadataTableId.eventMap].length,
    ExportedTypeIndex() => tableStream[MetadataTableId.exportedType].length,
    FieldIndex() => tableStream[MetadataTableId.field].length,
    FieldLayoutIndex() => tableStream[MetadataTableId.fieldLayout].length,
    FieldMarshalIndex() => tableStream[MetadataTableId.fieldMarshal].length,
    FieldRVAIndex() => tableStream[MetadataTableId.fieldRVA].length,
    FileIndex() => tableStream[MetadataTableId.file].length,
    GenericParamIndex() => tableStream[MetadataTableId.genericParam].length,
    GenericParamConstraintIndex() =>
      tableStream[MetadataTableId.genericParamConstraint].length,
    ImplMapIndex() => tableStream[MetadataTableId.implMap].length,
    InterfaceImplIndex() => tableStream[MetadataTableId.interfaceImpl].length,
    ManifestResourceIndex() =>
      tableStream[MetadataTableId.manifestResource].length,
    MemberRefIndex() => tableStream[MetadataTableId.memberRef].length,
    MethodDefIndex() => tableStream[MetadataTableId.methodDef].length,
    MethodImplIndex() => tableStream[MetadataTableId.methodImpl].length,
    MethodSemanticsIndex() =>
      tableStream[MetadataTableId.methodSemantics].length,
    MethodSpecIndex() => tableStream[MetadataTableId.methodSpec].length,
    ModuleIndex() => tableStream[MetadataTableId.module].length,
    ModuleRefIndex() => tableStream[MetadataTableId.moduleRef].length,
    NestedClassIndex() => tableStream[MetadataTableId.nestedClass].length,
    ParamIndex() => tableStream[MetadataTableId.param].length,
    PropertyIndex() => tableStream[MetadataTableId.property].length,
    PropertyMapIndex() => tableStream[MetadataTableId.propertyMap].length,
    StandAloneSigIndex() => tableStream[MetadataTableId.standAloneSig].length,
    TypeDefIndex() => tableStream[MetadataTableId.typeDef].length,
    TypeRefIndex() => tableStream[MetadataTableId.typeRef].length,
    TypeSpecIndex() => tableStream[MetadataTableId.typeSpec].length,
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
