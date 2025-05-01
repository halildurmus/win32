import 'dart:typed_data';

import '../helpers.dart';
import '../index.dart';
import '../table.dart';
import '../table_stream.dart';

/// Represents a row in the `NestedClass` metadata table, describing a nested
/// type definition.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.32`.
///
/// The `NestedClass` table has the following columns:
///  - **NestedClass** (TypeDef Index)
///  - **EnclosingClass** (TypeDef Index)
final class NestedClass implements Row {
  const NestedClass({required this.nestedClass, required this.enclosingClass});

  final TypeDefIndex nestedClass;
  final TypeDefIndex enclosingClass;

  @override
  void serialize(BytesBuilder buffer, TableStream context) {
    buffer
      ..writeTableIndex(nestedClass.index, context.typeDef.length)
      ..writeTableIndex(enclosingClass.index, context.typeDef.length);
  }
}
