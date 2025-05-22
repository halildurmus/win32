import 'package:meta/meta.dart';

import '../../common.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'field.dart';

/// Represents a row in the `FieldRVA` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.18`.
///
/// The `FieldRVA` table has the following columns:
///  - **RVA** (4-byte constant)
///  - **Field** (Field Table Index)
final class FieldRVA extends Row {
  FieldRVA(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.fieldRVA;

  @override
  int get token => (MetadataTableId.fieldRVA << 24) | index;

  /// The relative virtual address (RVA) within the image file where the field's
  /// data is stored.
  late final int rva = readUint32(0);

  /// The associated field that has an explicit RVA.
  late final Field field = readRow<Field>(1);

  @override
  String toString() => 'FieldRVA(rva: $rva, field: $field)';
}

@internal
final class FieldRVACompanion extends RowCompanion<FieldRVA> {
  const FieldRVACompanion();

  @override
  FieldRVA Function(MetadataIndex, int, int) get constructor => FieldRVA.new;

  @override
  MetadataTable get table => MetadataTable.fieldRVA;
}
