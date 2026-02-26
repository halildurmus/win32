import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../common.dart';
import '../heap/metadata_heap.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';

/// Represents a row in the `ModuleRef` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.31`.
///
/// The `ModuleRef` table has the following columns:
///  - **Name** (String Heap Index)
final class ModuleRef implements Row {
  const ModuleRef({required this.name});

  final StringIndex name;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer.writeHeapIndex(name, stream);
  }
}

@internal
final class ModuleRefCompanion extends RowCompanion<ModuleRef> {
  const ModuleRefCompanion();

  @override
  MetadataTableId get tableId => MetadataTableId.moduleRef;
}
