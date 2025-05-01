import 'dart:typed_data';

import '../../attributes.dart';
import '../helpers.dart';
import '../index.dart';
import '../table.dart';
import '../table_stream.dart';

/// Represents a row in the `Field` metadata table, describing a field within a
/// type.
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
  void serialize(BytesBuilder buffer, TableStream context) {
    buffer
      ..writeUint16(flags)
      ..writeHeapIndex(name.index, context.stringHeapSize)
      ..writeHeapIndex(signature.index, context.blobHeapSize);
  }
}
