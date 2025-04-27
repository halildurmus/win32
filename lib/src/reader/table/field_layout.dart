import '../metadata_index.dart';
import '../row.dart';
import '../table_index.dart';
import 'field.dart';

/// Contains the layout information for fields.
///
/// The table has the following columns:
///  - Offset (4-byte constant)
///  - Field (Field Index)
///
/// The table is defined in the section `§II.22.16` of the ECMA-335 standard.
final class FieldLayout extends Row {
  FieldLayout(super.metadataIndex, super.readerIndex, super.position);

  static const tableIndex = TableIndex.fieldLayout;

  @override
  TableIndex get table => tableIndex;

  late final offset = readUint(0);

  late final field = readRow<Field>(1);

  @override
  String toString() => 'FieldLayout(offset: $offset, field: $field)';
}

final class FieldLayoutCompanion extends RowCompanion<FieldLayout> {
  const FieldLayoutCompanion();

  @override
  FieldLayout Function(MetadataIndex, int, int) get constructor =>
      FieldLayout.new;

  @override
  TableIndex get table => FieldLayout.tableIndex;
}
