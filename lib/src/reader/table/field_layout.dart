import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
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

  static const metadataTable = MetadataTable.fieldLayout;

  @override
  MetadataTable get table => metadataTable;

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
  MetadataTable get table => FieldLayout.metadataTable;
}
