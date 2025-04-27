import '../guid.dart';
import 'blob.dart';
import 'codes.dart';
import 'metadata_index.dart';
import 'metadata_reader.dart';
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
import 'table_index.dart';

abstract base class Row {
  const Row(this.metadataIndex, this.readerIndex, this.position);

  final MetadataIndex metadataIndex;

  final int readerIndex;

  final int position;

  TableIndex get table;

  static RowCompanion<T> companion<T extends Row>() {
    final companion = _companions[T];
    if (companion == null) throw StateError('No companion found for $T.');
    return companion as RowCompanion<T>;
  }

  @pragma('vm:prefer-inline')
  MetadataReader get _reader => metadataIndex.readers[readerIndex];

  @pragma('vm:prefer-inline')
  Blob readBlob(int column) => Blob(
    metadataIndex,
    readerIndex,
    _reader.readBlob(position, table, column),
  );

  @pragma('vm:prefer-inline')
  Guid readGuid(int column) => _reader.readGuid(position, table, column);

  R readRow<R extends Row>(int column) {
    final companion = Row.companion<R>();
    return companion.constructor(
      metadataIndex,
      readerIndex,
      readUint(column) - 1,
    );
  }

  @pragma('vm:prefer-inline')
  String readString(int column) => _reader.readString(position, table, column);

  @pragma('vm:prefer-inline')
  String readUserString(int column) =>
      _reader.readUserString(position, table, column);

  @pragma('vm:prefer-inline')
  int readUint(int column) => _reader.readUint(position, table, column);

  @pragma('vm:prefer-inline')
  int readUint8(int column, [int offset = 0]) =>
      _reader.readUint8(position, table, column, offset);

  @pragma('vm:prefer-inline')
  int readUint16(int column, [int offset = 0]) =>
      _reader.readUint16(position, table, column, offset);

  @pragma('vm:prefer-inline')
  int readUint32(int column, [int offset = 0]) =>
      _reader.readUint32(position, table, column, offset);

  @pragma('vm:prefer-inline')
  int readUint64(int column, [int offset = 0]) =>
      _reader.readUint64(position, table, column, offset);

  T decode<T extends CodedIndex>(int column) {
    final companion = CodedIndex.companion<T>();
    return companion.decode(metadataIndex, readerIndex, readUint(column));
  }

  Iterable<R> getList<R extends Row>(int column) {
    final companion = Row.companion<R>();
    final rows = _reader.getList(position, table, column, companion.table);
    return rows.map(
      (position) => companion.constructor(metadataIndex, readerIndex, position),
    );
  }

  Iterable<L> getEqualRange<L extends Row>(int column, int value) {
    final companion = Row.companion<L>();
    final rows = _reader.getEqualRange(companion.table, column, value);
    return rows.map(
      (position) => companion.constructor(metadataIndex, readerIndex, position),
    );
  }

  P parentRow<P extends Row>(int column) {
    final companion = Row.companion<P>();
    return companion.constructor(
      metadataIndex,
      readerIndex,
      _reader.getParentRow(position, companion.table, column),
    );
  }

  @override
  bool operator ==(Object other) =>
      other is Row &&
      readerIndex == other.readerIndex &&
      position == other.position;

  @override
  int get hashCode => Object.hash(readerIndex, position);

  @override
  String toString() =>
      '$runtimeType(readerIndex: $readerIndex, position: $position, '
      'table: $table)';
}

abstract class RowCompanion<T extends Row> {
  const RowCompanion();

  T Function(MetadataIndex metadataIndex, int readerIndex, int position)
  get constructor;

  TableIndex get table;
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
