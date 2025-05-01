import 'dart:typed_data';

import '../../bindings.dart';
import '../codes.dart';
import '../helpers.dart';
import '../index.dart';
import '../table.dart';
import '../table_stream.dart';

/// Represents a row in the `Constant` metadata table, describing a compile-time
/// constant value associated with a field, parameter, or property.
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
  void serialize(BytesBuilder buffer, TableStream context) {
    buffer
      ..addByte(type)
      ..addByte(0)
      ..writeCodedIndex(parent.encode(), context.hasConstant)
      ..writeHeapIndex(value.index, context.blobHeapSize);
  }
}
