import 'package:meta/meta.dart';

import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'type_def.dart';

/// Represents a row in the `NestedClass` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.32`.
///
/// The `NestedClass` table has the following columns:
///  - **NestedClass** (TypeDef Table Index)
///  - **EnclosingClass** (TypeDef Table Index)
final class NestedClass extends Row {
  NestedClass(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.nestedClass;

  /// The [TypeDef] that is contained.
  late final inner = readRow<TypeDef>(0);

  /// The [TypeDef] that contains the nested type.
  late final outer = readRow<TypeDef>(1);

  @override
  String toString() => 'NestedClass(inner: $inner, outer: $outer)';
}

@internal
final class NestedClassCompanion extends RowCompanion<NestedClass> {
  const NestedClassCompanion();

  @override
  NestedClass Function(MetadataIndex, int, int) get constructor =>
      NestedClass.new;

  @override
  MetadataTable get table => MetadataTable.nestedClass;
}
