import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../common.dart';
import '../codes.dart';
import '../heap/metadata_heap.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';

/// Represents a row in the `MethodSpec` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.29`.
///
/// The `MethodSpec` table has the following columns:
///  - **Method** (MethodDefOrRef Coded Index)
///  - **Instantiation** (Blob Heap Index)
final class MethodSpec implements Row {
  const MethodSpec({required this.method, required this.instantiation});

  final MethodDefOrRef method;
  final BlobIndex instantiation;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeCodedIndex(method, stream)
      ..writeHeapIndex(instantiation, stream);
  }
}

@internal
final class MethodSpecCompanion extends RowCompanion<MethodSpec> {
  const MethodSpecCompanion();

  @override
  MetadataTableId get tableId => MetadataTableId.methodSpec;
}
