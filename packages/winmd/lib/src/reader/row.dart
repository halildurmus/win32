import 'package:meta/meta.dart';

import '../guid.dart';
import 'blob.dart';
import 'codes.dart';
import 'metadata_index.dart';
import 'metadata_reader.dart';
import 'metadata_table.dart';
import 'table/assembly.dart';
import 'table/assembly_os.dart';
import 'table/assembly_processor.dart';
import 'table/assembly_ref.dart';
import 'table/assembly_ref_os.dart';
import 'table/assembly_ref_processor.dart';
import 'table/class_layout.dart';
import 'table/constant.dart';
import 'table/custom_attribute.dart';
import 'table/decl_security.dart';
import 'table/event.dart';
import 'table/event_map.dart';
import 'table/exported_type.dart';
import 'table/field.dart';
import 'table/field_layout.dart';
import 'table/field_marshal.dart';
import 'table/field_rva.dart';
import 'table/file.dart';
import 'table/generic_param.dart';
import 'table/generic_param_constraint.dart';
import 'table/impl_map.dart';
import 'table/interface_impl.dart';
import 'table/manifest_resource.dart';
import 'table/member_ref.dart';
import 'table/method_def.dart';
import 'table/method_impl.dart';
import 'table/method_semantics.dart';
import 'table/method_spec.dart';
import 'table/module.dart';
import 'table/module_ref.dart';
import 'table/nested_class.dart';
import 'table/param.dart';
import 'table/property.dart';
import 'table/property_map.dart';
import 'table/stand_alone_sig.dart';
import 'table/type_def.dart';
import 'table/type_ref.dart';
import 'table/type_spec.dart';

/// An abstract base class representing a row in a metadata table.
///
/// This class provides the common functionality for reading and interpreting
/// metadata associated with a particular row in a table. The row is identified
/// by its index within the table and the reader index used to access the data.
abstract base class Row {
  /// Creates a new instance of [Row] with the provided metadata index, reader
  /// index, and index.
  const Row(this.metadataIndex, this.readerIndex, this.index);

  /// The metadata index for the current row.
  final MetadataIndex metadataIndex;

  /// The reader index used to access a specific metadata reader.
  final int readerIndex;

  /// The index of the row within the metadata table, starting from zero.
  final int index;

  /// The metadata table associated with this row.
  MetadataTable get table;

  /// The metadata token for this row, which is a unique identifier for the row
  /// within the metadata table.
  int get token;

  /// Retrieves the [RowCompanion] associated with the specified [T].
  @internal
  static RowCompanion<T> companion<T extends Row>() {
    final companion = _companions[T];
    if (companion == null) throw StateError('No companion found for $T.');
    return companion as RowCompanion<T>;
  }

  /// Retrieves the [MetadataReader] for the current row based on the
  /// [readerIndex].
  @pragma('vm:prefer-inline')
  MetadataReader get reader => metadataIndex.readers[readerIndex];

  /// Reads a [Blob] from the specified [column].
  ///
  /// The column represents the index in the table where the Blob data is
  /// stored.
  @pragma('vm:prefer-inline')
  Blob readBlob(int column) =>
      Blob(metadataIndex, readerIndex, reader.readBlob(index, table, column));

  /// Reads a [Guid] from the specified [column].
  ///
  /// The column represents the index in the table where the Guid is stored.
  @pragma('vm:prefer-inline')
  Guid readGuid(int column) => reader.readGuid(index, table, column);

  /// Reads a related row of type [R] from the specified [column].
  ///
  /// The [column] represents the index in the table where the row is stored.
  R readRow<R extends Row>(int column) {
    final companion = Row.companion<R>();
    return companion.constructor(
      metadataIndex,
      readerIndex,
      readUint(column) - 1,
    );
  }

  /// Reads a string from the specified [column].
  ///
  /// The column represents the index in the table where the string is stored.
  @pragma('vm:prefer-inline')
  String readString(int column) => reader.readString(index, table, column);

  /// Reads an unsigned integer from the specified [column].
  ///
  /// The column represents the index in the table where the integer data is
  /// stored.
  @pragma('vm:prefer-inline')
  int readUint(int column) => reader.readUint(index, table, column);

  /// Reads an unsigned 8-bit integer from the specified [column], with an
  /// optional [offset].
  ///
  /// The column represents the index in the table where the 8-bit integer
  /// data is stored. The [offset] is an optional parameter that allows for
  /// reading the integer starting from a different index.
  @pragma('vm:prefer-inline')
  int readUint8(int column, [int offset = 0]) =>
      reader.readUint8(index, table, column, offset);

  /// Reads an unsigned 16-bit integer from the specified [column], with an
  /// optional [offset].
  ///
  /// The column represents the index in the table where the 16-bit integer
  /// data is stored. The [offset] is an optional parameter that allows for
  /// reading the integer starting from a different index.
  @pragma('vm:prefer-inline')
  int readUint16(int column, [int offset = 0]) =>
      reader.readUint16(index, table, column, offset);

  /// Reads an unsigned 32-bit integer from the specified [column], with an
  /// optional [offset].
  ///
  /// The column represents the index in the table where the 32-bit integer
  /// data is stored. The [offset] is an optional parameter that allows for
  /// reading the integer starting from a different index.
  @pragma('vm:prefer-inline')
  int readUint32(int column, [int offset = 0]) =>
      reader.readUint32(index, table, column, offset);

  /// Reads an unsigned 64-bit integer from the specified [column], with an
  /// optional [offset].
  ///
  /// The column represents the index in the table where the 64-bit integer
  /// data is stored. The [offset] is an optional parameter that allows for
  /// reading the integer starting from a different index.
  @pragma('vm:prefer-inline')
  int readUint64(int column, [int offset = 0]) =>
      reader.readUint64(index, table, column, offset);

  /// Decodes a [CodedIndex] from the specified [column].
  ///
  /// The column represents the index in the table where the coded index is
  /// stored.
  T decode<T extends CodedIndex>(int column) {
    final companion = CodedIndex.companion<T>();
    return companion.decode(metadataIndex, readerIndex, readUint(column));
  }

  /// Retrieves rows of [L] with a matching [value] in the specified [column].
  Iterable<L> getEqualRange<L extends Row>(int column, int value) {
    final companion = Row.companion<L>();
    final rows = reader.getEqualRange(companion.table, column, value);
    return rows.map(
      (index) => companion.constructor(metadataIndex, readerIndex, index),
    );
  }

  /// Retrieves rows of [R] from the specified [column].
  Iterable<R> getList<R extends Row>(int column) {
    final companion = Row.companion<R>();
    final rows = reader.getList(index, table, column, companion.table);
    return rows.map(
      (index) => companion.constructor(metadataIndex, readerIndex, index),
    );
  }

  /// Retrieves the parent row of the current row, based on the [P] and the
  /// [column].
  P getParentRow<P extends Row>(int column) {
    final companion = Row.companion<P>();
    return companion.constructor(
      metadataIndex,
      readerIndex,
      reader.getParentRow(index, companion.table, column),
    );
  }

  @override
  String toString() =>
      '$runtimeType('
      'readerIndex: $readerIndex, index: $index, table: $table, '
      'token: 0x${token.toRadixString(16).padLeft(8, '0')}, '
      'metadataIndex: $metadataIndex)';
}

@internal
abstract class RowCompanion<T extends Row> {
  const RowCompanion();

  T Function(MetadataIndex metadataIndex, int readerIndex, int index)
  get constructor;

  MetadataTable get table;
}

const _companions = <Type, RowCompanion>{
  Assembly: AssemblyCompanion(),
  AssemblyOS: AssemblyOSCompanion(),
  AssemblyProcessor: AssemblyProcessorCompanion(),
  AssemblyRef: AssemblyRefCompanion(),
  AssemblyRefOS: AssemblyRefOSCompanion(),
  AssemblyRefProcessor: AssemblyRefProcessorCompanion(),
  ClassLayout: ClassLayoutCompanion(),
  Constant: ConstantCompanion(),
  CustomAttribute: CustomAttributeCompanion(),
  DeclSecurity: DeclSecurityCompanion(),
  Event: EventCompanion(),
  EventMap: EventMapCompanion(),
  ExportedType: ExportedTypeCompanion(),
  Field: FieldCompanion(),
  FieldLayout: FieldLayoutCompanion(),
  FieldMarshal: FieldMarshalCompanion(),
  FieldRVA: FieldRVACompanion(),
  File: FileCompanion(),
  GenericParam: GenericParamCompanion(),
  GenericParamConstraint: GenericParamConstraintCompanion(),
  ImplMap: ImplMapCompanion(),
  InterfaceImpl: InterfaceImplCompanion(),
  ManifestResource: ManifestResourceCompanion(),
  MemberRef: MemberRefCompanion(),
  MethodDef: MethodDefCompanion(),
  MethodImpl: MethodImplCompanion(),
  MethodSemantics: MethodSemanticsCompanion(),
  MethodSpec: MethodSpecCompanion(),
  Module: ModuleCompanion(),
  ModuleRef: ModuleRefCompanion(),
  NestedClass: NestedClassCompanion(),
  Param: ParamCompanion(),
  Property: PropertyCompanion(),
  PropertyMap: PropertyMapCompanion(),
  StandAloneSig: StandAloneSigCompanion(),
  TypeDef: TypeDefCompanion(),
  TypeRef: TypeRefCompanion(),
  TypeSpec: TypeSpecCompanion(),
};
