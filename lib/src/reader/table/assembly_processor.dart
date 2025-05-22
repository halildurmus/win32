import 'package:meta/meta.dart';

import '../../common.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';

/// Represents a row in the `AssemblyProcessor` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.4`.
///
/// The `AssemblyProcessor` table has the following columns:
///  - **Processor** (4-byte value)
final class AssemblyProcessor extends Row {
  AssemblyProcessor(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.assemblyProcessor;

  @override
  int get token => (MetadataTableId.assemblyProcessor << 24) | index;

  /// Always returns zero, per ECMA-335 `§II.22.4`.
  int get processor => 0;

  @override
  String toString() => 'AssemblyProcessor(processor: $processor)';
}

@internal
final class AssemblyProcessorCompanion extends RowCompanion<AssemblyProcessor> {
  const AssemblyProcessorCompanion();

  @override
  AssemblyProcessor Function(MetadataIndex, int, int) get constructor =>
      AssemblyProcessor.new;

  @override
  MetadataTable get table => MetadataTable.assemblyProcessor;
}
