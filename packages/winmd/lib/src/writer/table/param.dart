import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../attributes.dart';
import '../../common.dart';
import '../heap/metadata_heap.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';

/// Represents a row in the `Param` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.33`.
///
/// The `Param` table has the following columns:
///  - **Flags** (2-byte bitmask of ParamAttributes)
///  - **Sequence** (2-byte constant)
///  - **Name** (String Heap Index)
final class Param implements Row {
  const Param({
    required this.sequence,
    required this.name,
    this.flags = const ParamAttributes(0),
  });

  final ParamAttributes flags;
  final int sequence;
  final StringIndex name;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeUint16(flags)
      ..writeUint16(sequence)
      ..writeHeapIndex(name, stream);
  }
}

@internal
final class ParamCompanion extends RowCompanion<Param> {
  const ParamCompanion();

  @override
  MetadataTableId get tableId => .param;
}
