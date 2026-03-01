import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../common.dart';
import '../heap/metadata_heap.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';

/// Represents a row in the `Module` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.30`.
///
/// The `Module` table has the following columns:
///  - **Generation** (2-byte value, reserved, MBZ)
///  - **Name** (String Heap Index)
///  - **Mvid** (Module Version ID) (GUID Heap Index)
///  - **EncId** (GUID Heap Index, reserved, MBZ)
///  - **EncBaseId** (GUID Heap Index, reserved, MBZ)
final class Module implements Row {
  const Module({required this.name, required this.mvid})
    : generation = 0,
      encId = const GuidIndex(0),
      encBaseId = const GuidIndex(0);

  final int generation;
  final StringIndex name;
  final GuidIndex mvid;
  final GuidIndex encId;
  final GuidIndex encBaseId;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeUint16(generation)
      ..writeHeapIndex(name, stream)
      ..writeHeapIndex(mvid, stream)
      ..writeHeapIndex(encId, stream)
      ..writeHeapIndex(encBaseId, stream);
  }
}

@internal
final class ModuleCompanion extends RowCompanion<Module> {
  const ModuleCompanion();

  @override
  MetadataTableId get tableId => .module;
}
