import 'dart:typed_data';

import '../helpers.dart';
import '../index.dart';
import '../table.dart';
import '../table_stream.dart';

/// Represents a row in the `Module` metadata table, describing a module
/// associated with the assembly.
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
final class ModuleRecord implements Row {
  const ModuleRecord({
    this.name = const StringIndex(0),
    this.mvid = const GuidIndex(0),
  }) : generation = 0,
       encId = const GuidIndex(0),
       encBaseId = const GuidIndex(0);

  final int generation;
  final StringIndex name;
  final GuidIndex mvid;
  final GuidIndex encId;
  final GuidIndex encBaseId;

  @override
  void serialize(BytesBuilder buffer, TableStream context) {
    buffer
      ..writeUint16(generation)
      ..writeHeapIndex(name.index, context.stringHeapSize)
      ..writeHeapIndex(mvid.index, context.guidHeapSize)
      ..writeHeapIndex(encId.index, context.guidHeapSize)
      ..writeHeapIndex(encBaseId.index, context.guidHeapSize);
  }
}
