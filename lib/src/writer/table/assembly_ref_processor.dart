import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../common.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';
import 'index.dart';

/// Represents a row in the `AssemblyRefProcessor` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.7`.
///
/// The `AssemblyRefProcessor` table has the following columns:
///  - **Processor** (4-byte value)
///  - **AssemblyRef** (AssemblyRef Table Index)
final class AssemblyRefProcessor implements Row {
  const AssemblyRefProcessor({
    required this.processor,
    required this.assemblyRef,
  });

  final int processor;
  final AssemblyRefIndex assemblyRef;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeUint32(processor)
      ..writeTableIndex(assemblyRef, stream);
  }
}

@internal
final class AssemblyRefProcessorCompanion
    extends RowCompanion<AssemblyRefProcessor> {
  const AssemblyRefProcessorCompanion();

  @override
  MetadataTableId get tableId => MetadataTableId.assemblyRefProcessor;
}
