import 'dart:typed_data';

import '../codes.dart';
import '../helpers.dart';
import '../index.dart';
import '../table.dart';
import '../table_stream.dart';

/// Represents a row in the `CustomAttribute` metadata table, describing a
/// custom attribute applied to a type.
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
  void serialize(BytesBuilder buffer, TableStream context) {
    buffer
      ..writeCodedIndex(parent.encode(), context.hasCustomAttribute)
      ..writeCodedIndex(type.encode(), context.customAttributeType)
      ..writeHeapIndex(value.index, context.blobHeapSize);
  }
}
