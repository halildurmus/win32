import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'type_def.dart';

/// Records which Type definitions are nested within which other Type
/// definition.
///
/// The table has the following columns:
///  - NestedClass (TypeDef Index)
///  - EnclosingClass (TypeDef Index)
///
/// The table is defined in the section `§II.22.32` of the ECMA-335 standard.
final class NestedClass extends Row {
  NestedClass(super.metadataIndex, super.readerIndex, super.position);

  static const metadataTable = MetadataTable.nestedClass;

  @override
  MetadataTable get table => metadataTable;

  late final inner = readRow<TypeDef>(0);

  late final outer = readRow<TypeDef>(1);

  @override
  String toString() => 'NestedClass(inner: $inner, outer: $outer)';
}

final class NestedClassCompanion extends RowCompanion<NestedClass> {
  const NestedClassCompanion();

  @override
  NestedClass Function(MetadataIndex, int, int) get constructor =>
      NestedClass.new;

  @override
  MetadataTable get table => NestedClass.metadataTable;
}
