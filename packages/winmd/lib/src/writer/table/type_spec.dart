import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../common.dart';
import '../heap/metadata_heap.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';

/// Represents a row in the `TypeSpec` metadata table.
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
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer.writeHeapIndex(signature, stream);
  }
}

@internal
final class TypeSpecCompanion extends RowCompanion<TypeSpec> {
  const TypeSpecCompanion();

  @override
  MetadataTableId get tableId => .typeSpec;
}
