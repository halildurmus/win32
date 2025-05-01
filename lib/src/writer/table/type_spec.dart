import 'dart:typed_data';

import '../helpers.dart';
import '../index.dart';
import '../table.dart';
import '../table_stream.dart';

/// Represents a row in the `TypeSpec` metadata table, describing a type
/// specification.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.39`.
///
/// The `TypeSpec` table has the following columns:
///  - **Signature** (Blob Heap Index)
final class TypeSpec implements Row {
  const TypeSpec({required this.signature});

  final BlobIndex signature;

  @override
  void serialize(BytesBuilder buffer, TableStream context) {
    buffer.writeHeapIndex(signature.index, context.blobHeapSize);
  }
}
