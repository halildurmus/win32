import 'dart:typed_data';

import '../helpers.dart';
import '../index.dart';
import '../table.dart';
import '../table_stream.dart';

/// Represents a row in the `ModuleRef` metadata table, describing a module
/// referenced by the assembly.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.31`.
///
/// The `ModuleRef` table has the following columns:
///  - **Name** (String Heap Index)
final class ModuleRef implements Row {
  const ModuleRef(this.name);

  final StringIndex name;

  @override
  void serialize(BytesBuilder buffer, TableStream context) {
    buffer.writeHeapIndex(name.index, context.stringHeapSize);
  }
}
