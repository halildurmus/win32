import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../bindings.dart';
import '../../common.dart';
import '../codes.dart';
import '../heap/metadata_heap.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';

/// Represents a row in the `Constant` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.9`.
///
/// The `Constant` table has the following columns:
///  - **Type** (1-byte, 1-byte padding zero)
///  - **Parent** (HasConstant Coded Index)
///  - **Value** (Blob Heap Index)
final class Constant implements Row {
  const Constant({
    required this.type,
    required this.parent,
    required this.value,
  });

  final ElementType type;
  final HasConstant parent;
  final BlobIndex value;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..addByte(type)
      ..addByte(0)
      ..writeCodedIndex(parent, stream)
      ..writeHeapIndex(value, stream);
  }
}

@internal
final class ConstantCompanion extends RowCompanion<Constant> {
  const ConstantCompanion();

  @override
  MetadataTableId get tableId => .constant;
}
