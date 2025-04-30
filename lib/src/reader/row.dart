import 'package:meta/meta.dart';

import '../guid.dart';
import 'blob.dart';
import 'codes.dart';
import 'metadata_index.dart';
import 'metadata_reader.dart';
import 'metadata_table.dart';
import 'table/assembly_ref.dart';
import 'table/class_layout.dart';
import 'table/constant.dart';
import 'table/custom_attribute.dart';
import 'table/field.dart';
import 'table/field_layout.dart';
import 'table/generic_param.dart';
import 'table/generic_param_constraint.dart';
import 'table/impl_map.dart';
import 'table/interface_impl.dart';
import 'table/member_ref.dart';
import 'table/method_def.dart';
import 'table/module.dart';
import 'table/module_ref.dart';
import 'table/nested_class.dart';
import 'table/param.dart';
import 'table/type_def.dart';
import 'table/type_ref.dart';
import 'table/type_spec.dart';

/// Abstract base class representing a row of data in a metadata table.
///
/// This class provides the common functionality for reading and interpreting
/// metadata associated with a particular row in a table. The row is identified
/// by its position within the table and the reader index used to access the
/// data.
abstract base class Row {
  /// Creates a new instance of [Row] with the provided metadata index, reader
  /// index, and position.
  const Row(this.metadataIndex, this.readerIndex, this.position);

  /// The metadata index for the current row.
  final MetadataIndex metadataIndex;

  /// The reader index used to access a specific metadata reader.
  final int readerIndex;

  /// The position of the row within the metadata table, starting from zero.
  final int position;

  /// The metadata table associated with this row.
  MetadataTable get table;

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
  MetadataReader get _reader => metadataIndex.readers[readerIndex];

  /// Reads a [Blob] from the specified [column].
  ///
  /// The column represents the position in the table where the Blob data is
  /// stored.
  @pragma('vm:prefer-inline')
  Blob readBlob(int column) => Blob(
    metadataIndex,
    readerIndex,
    _reader.readBlob(position, table, column),
  );

  /// Reads a [Guid] from the specified [column].
  ///
  /// The column represents the position in the table where the Guid is stored.
  @pragma('vm:prefer-inline')
  Guid readGuid(int column) => _reader.readGuid(position, table, column);

  /// Reads a related row of type [R] from the specified [column].
  ///
  /// The [column] represents the position in the table where the row is stored.
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
  /// The column represents the position in the table where the string is
  /// stored.
  @pragma('vm:prefer-inline')
  String readString(int column) => _reader.readString(position, table, column);

  /// Reads an unsigned integer from the specified [column].
  ///
  /// The column represents the position in the table where the integer data is
  /// stored.
  @pragma('vm:prefer-inline')
  int readUint(int column) => _reader.readUint(position, table, column);

  /// Reads an unsigned 8-bit integer from the specified [column], with an
  /// optional [offset].
  ///
  /// The column represents the position in the table where the 8-bit integer
  /// data is stored. The [offset] is an optional parameter that allows for
  /// reading the integer starting from a different position.
  @pragma('vm:prefer-inline')
  int readUint8(int column, [int offset = 0]) =>
      _reader.readUint8(position, table, column, offset);

  /// Reads an unsigned 16-bit integer from the specified [column], with an
  /// optional [offset].
  ///
  /// The column represents the position in the table where the 16-bit integer
  /// data is stored. The [offset] is an optional parameter that allows for
  /// reading the integer starting from a different position.
  @pragma('vm:prefer-inline')
  int readUint16(int column, [int offset = 0]) =>
      _reader.readUint16(position, table, column, offset);

  /// Reads an unsigned 32-bit integer from the specified [column], with an
  /// optional [offset].
  ///
  /// The column represents the position in the table where the 32-bit integer
  /// data is stored. The [offset] is an optional parameter that allows for
  /// reading the integer starting from a different position.
  @pragma('vm:prefer-inline')
  int readUint32(int column, [int offset = 0]) =>
      _reader.readUint32(position, table, column, offset);

  /// Reads an unsigned 64-bit integer from the specified [column], with an
  /// optional [offset].
  ///
  /// The column represents the position in the table where the 64-bit integer
  /// data is stored. The [offset] is an optional parameter that allows for
  /// reading the integer starting from a different position.
  @pragma('vm:prefer-inline')
  int readUint64(int column, [int offset = 0]) =>
      _reader.readUint64(position, table, column, offset);

  /// Decodes a [CodedIndex] from the specified [column].
  ///
  /// The column represents the position in the table where the coded index is
  /// stored.
  T decode<T extends CodedIndex>(int column) {
    final companion = CodedIndex.companion<T>();
    return companion.decode(metadataIndex, readerIndex, readUint(column));
  }

  /// Retrieves rows of [L] with a matching [value] in the specified [column].
  Iterable<L> getEqualRange<L extends Row>(int column, int value) {
    final companion = Row.companion<L>();
    final rows = _reader.getEqualRange(companion.table, column, value);
    return rows.map(
      (position) => companion.constructor(metadataIndex, readerIndex, position),
    );
  }

  /// Retrieves rows of [R] from the specified [column].
  Iterable<R> getList<R extends Row>(int column) {
    final companion = Row.companion<R>();
    final rows = _reader.getList(position, table, column, companion.table);
    return rows.map(
      (position) => companion.constructor(metadataIndex, readerIndex, position),
    );
  }

  /// Retrieves the parent row of the current row, based on the [P] and the
  /// [column].
  P getParentRow<P extends Row>(int column) {
    final companion = Row.companion<P>();
    return companion.constructor(
      metadataIndex,
      readerIndex,
      _reader.getParentRow(position, companion.table, column),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Row &&
          readerIndex == other.readerIndex &&
          position == other.position;

  @override
  int get hashCode => Object.hash(readerIndex, position);

  @override
  String toString() =>
      '$runtimeType(readerIndex: $readerIndex, position: $position, '
      'table: $table, metadata: $metadataIndex)';
}

@internal
abstract class RowCompanion<T extends Row> {
  const RowCompanion();

  T Function(MetadataIndex metadataIndex, int readerIndex, int position)
  get constructor;

  MetadataTable get table;
}

const _companions = <Type, RowCompanion>{
  AssemblyRef: AssemblyRefCompanion(),
  ClassLayout: ClassLayoutCompanion(),
  Constant: ConstantCompanion(),
  CustomAttribute: CustomAttributeCompanion(),
  Field: FieldCompanion(),
  FieldLayout: FieldLayoutCompanion(),
  GenericParam: GenericParamCompanion(),
  GenericParamConstraint: GenericParamConstraintCompanion(),
  ImplMap: ImplMapCompanion(),
  InterfaceImpl: InterfaceImplCompanion(),
  MemberRef: MemberRefCompanion(),
  MethodDef: MethodDefCompanion(),
  Module: ModuleCompanion(),
  ModuleRef: ModuleRefCompanion(),
  NestedClass: NestedClassCompanion(),
  Param: ParamCompanion(),
  TypeDef: TypeDefCompanion(),
  TypeRef: TypeRefCompanion(),
  TypeSpec: TypeSpecCompanion(),
};
