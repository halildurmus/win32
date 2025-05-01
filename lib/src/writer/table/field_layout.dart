import 'dart:typed_data';

import '../helpers.dart';
import '../index.dart';
import '../table.dart';
import '../table_stream.dart';
import 'field.dart';

/// Represents a row in the `FieldLayout` metadata table, describing the
/// physical layout information of a [Field] within a type.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.16`.
///
/// The `FieldLayout` table has the following columns:
///  - **Offset** (4-byte constant)
///  - **Field** (Field Index)
final class FieldLayout implements Row {
  const FieldLayout({required this.offset, required this.field});

  final int offset;
  final FieldIndex field;

  @override
  void serialize(BytesBuilder buffer, TableStream context) {
    buffer
      ..writeUint32(offset)
      ..writeTableIndex(field.index, context.fieldLayout.length);
  }
}
