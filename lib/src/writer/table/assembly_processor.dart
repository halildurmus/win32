import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../common.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';

/// Represents a row in the `AssemblyProcessor` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.4`.
///
/// The `AssemblyProcessor` table has the following columns:
///  - **Processor** (4-byte value)
final class AssemblyProcessor implements Row {
  const AssemblyProcessor({required this.processor});

  final int processor;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer.writeUint32(processor);
  }
}

@internal
final class AssemblyProcessorCompanion extends RowCompanion<AssemblyProcessor> {
  const AssemblyProcessorCompanion();

  @override
  MetadataTableId get tableId => MetadataTableId.assemblyProcessor;
}
