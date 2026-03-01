import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../attributes.dart';
import '../../common.dart';
import '../codes.dart';
import '../heap/metadata_heap.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';

/// Represents a row in the `ManifestResource` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.24`.
///
/// The `ManifestResource` table has the following columns:
///  - **Offset** (4-byte constant)
///  - **Flags** (4-byte bitmask of ManifestResourceAttributes)
///  - **Name** (String Heap Index)
///  - **Implementation** (Implementation Coded Index)
final class ManifestResource implements Row {
  const ManifestResource({
    required this.offset,
    required this.name,
    required this.implementation,
    this.flags = const ManifestResourceAttributes(0),
  });

  final int offset;
  final ManifestResourceAttributes flags;
  final StringIndex name;
  final Implementation implementation;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeUint32(offset)
      ..writeUint32(flags)
      ..writeHeapIndex(name, stream)
      ..writeCodedIndex(implementation, stream);
  }
}

@internal
final class ManifestResourceCompanion extends RowCompanion<ManifestResource> {
  const ManifestResourceCompanion();

  @override
  MetadataTableId get tableId => .manifestResource;
}
