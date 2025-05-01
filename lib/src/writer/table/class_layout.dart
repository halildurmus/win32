import 'dart:typed_data';

import '../helpers.dart';
import '../index.dart';
import '../table.dart';
import '../table_stream.dart';

/// Represents a row in the `ClassLayout` metadata table, describing layout
/// constraints for a class type.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.8`.
///
/// The `ClassLayout` table has the following columns:
///  - **PackingSize** (2-byte constant)
///  - **ClassSize** (4-byte constant)
///  - **Parent** (TypeDef Index)
final class ClassLayout implements Row {
  const ClassLayout({
    required this.packingSize,
    required this.classSize,
    required this.parent,
  });

  final int packingSize;
  final int classSize;
  final TypeDefIndex parent;

  @override
  void serialize(BytesBuilder buffer, TableStream context) {
    buffer
      ..writeUint16(packingSize)
      ..writeUint32(classSize)
      ..writeTableIndex(parent.index, context.typeDef.length);
  }
}
