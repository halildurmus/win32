import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../common.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';
import 'index.dart';

/// Represents a row in the `FieldLayout` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.16`.
///
/// The `FieldLayout` table has the following columns:
///  - **Offset** (4-byte constant)
///  - **Field** (Field Table Index)
final class FieldLayout implements Row {
  const FieldLayout({required this.offset, required this.field});

  final int offset;
  final FieldIndex field;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeUint32(offset)
      ..writeTableIndex(field, stream);
  }
}

@internal
final class FieldLayoutCompanion extends RowCompanion<FieldLayout> {
  const FieldLayoutCompanion();

  @override
  MetadataTableId get tableId => .fieldLayout;
}
