import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../common.dart';
import '../codes.dart';
import '../heap/metadata_heap.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';

/// Represents a row in the `FieldMarshal` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.17`.
///
/// The `FieldMarshal` table has the following columns:
///  - **Parent** (HasFieldMarshal Coded Index)
///  - **NativeType** (Blob Heap Index)
final class FieldMarshal implements Row {
  const FieldMarshal({
    required this.parent,
    this.nativeType = const BlobIndex(0),
  });

  final HasFieldMarshal parent;
  final BlobIndex nativeType;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeCodedIndex(parent, stream)
      ..writeHeapIndex(nativeType, stream);
  }
}

@internal
final class FieldMarshalCompanion extends RowCompanion<FieldMarshal> {
  const FieldMarshalCompanion();

  @override
  MetadataTableId get tableId => MetadataTableId.fieldMarshal;
}
