import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../common.dart';
import '../heap/metadata_heap.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';

/// Represents a row in the `StandAloneSig` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.36`.
///
/// The `StandAloneSig` table has the following columns:
///  - **Signature** (Blob Heap Index)
final class StandAloneSig implements Row {
  const StandAloneSig({required this.signature});

  final BlobIndex signature;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer.writeHeapIndex(signature, stream);
  }
}

@internal
final class StandAloneSigCompanion extends RowCompanion<StandAloneSig> {
  const StandAloneSigCompanion();

  @override
  MetadataTableId get tableId => MetadataTableId.standAloneSig;
}
