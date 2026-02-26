import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../attributes.dart';
import '../../common.dart';
import '../heap/metadata_heap.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';

/// Represents a row in the `Field` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.15`.
///
/// The `Field` table has the following columns:
///  - **Flags** (2-byte bitmask of FieldAttributes)
///  - **Name** (String Heap Index)
///  - **Signature** (Blob Heap Index)
final class Field implements Row {
  const Field({
    required this.flags,
    required this.name,
    required this.signature,
  });

  final FieldAttributes flags;
  final StringIndex name;
  final BlobIndex signature;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeUint16(flags)
      ..writeHeapIndex(name, stream)
      ..writeHeapIndex(signature, stream);
  }
}

@internal
final class FieldCompanion extends RowCompanion<Field> {
  const FieldCompanion();

  @override
  MetadataTableId get tableId => MetadataTableId.field;
}
