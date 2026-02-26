import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../common.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';
import 'index.dart';

/// Represents a row in the `NestedClass` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.32`.
///
/// The `NestedClass` table has the following columns:
///  - **NestedClass** (TypeDef Table Index)
///  - **EnclosingClass** (TypeDef Table Index)
final class NestedClass implements Row {
  const NestedClass({required this.nestedClass, required this.enclosingClass});

  final TypeDefIndex nestedClass;
  final TypeDefIndex enclosingClass;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeTableIndex(nestedClass, stream)
      ..writeTableIndex(enclosingClass, stream);
  }
}

@internal
final class NestedClassCompanion extends RowCompanion<NestedClass> {
  const NestedClassCompanion();

  @override
  MetadataTableId get tableId => MetadataTableId.nestedClass;
}
