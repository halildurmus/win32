import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../common.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';
import 'index.dart';

/// Represents a row in the `ClassLayout` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.8`.
///
/// The `ClassLayout` table has the following columns:
///  - **PackingSize** (2-byte constant)
///  - **ClassSize** (4-byte constant)
///  - **Parent** (TypeDef Table Index)
final class ClassLayout implements Row {
  const ClassLayout({
    required this.parent,
    this.packingSize = 0,
    this.classSize = 0,
  });

  final int packingSize;
  final int classSize;
  final TypeDefIndex parent;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeUint16(packingSize)
      ..writeUint32(classSize)
      ..writeTableIndex(parent, stream);
  }
}

@internal
final class ClassLayoutCompanion extends RowCompanion<ClassLayout> {
  const ClassLayoutCompanion();

  @override
  MetadataTableId get tableId => MetadataTableId.classLayout;
}
