import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../common.dart';
import '../codes.dart';
import '../heap/metadata_heap.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';

/// Represents a row in the `CustomAttribute` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.10`.
///
/// The `CustomAttribute` table has the following columns:
///  - **Parent** (HasCustomAttribute Coded Index)
///  - **Type** (CustomAttributeType Coded Index)
///  - **Value** (Blob Heap Index)
final class CustomAttribute implements Row {
  const CustomAttribute({
    required this.parent,
    required this.type,
    required this.value,
  });

  final HasCustomAttribute parent;
  final CustomAttributeType type;
  final BlobIndex value;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeCodedIndex(parent, stream)
      ..writeCodedIndex(type, stream)
      ..writeHeapIndex(value, stream);
  }
}

@internal
final class CustomAttributeCompanion extends RowCompanion<CustomAttribute> {
  const CustomAttributeCompanion();

  @override
  MetadataTableId get tableId => MetadataTableId.customAttribute;
}
