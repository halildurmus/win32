import 'package:meta/meta.dart';

import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'assembly_ref.dart';

/// Represents a row in the `AssemblyRefProcessor` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.7`.
///
/// The `AssemblyRefProcessor` table has the following columns:
///  - **Processor** (4-byte value)
///  - **AssemblyRef** (AssemblyRef Table Index)
final class AssemblyRefProcessor extends Row {
  AssemblyRefProcessor(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.assemblyRefProcessor;

  /// The processor architecture targeted by the referenced assembly.
  late final processor = readUint32(0);

  /// The referenced assembly.
  late final assemblyRef = readRow<AssemblyRef>(1);

  @override
  String toString() =>
      'AssemblyRefProcessor(processor: $processor, '
      'assemblyRef: $assemblyRef)';
}

@internal
final class AssemblyRefProcessorCompanion
    extends RowCompanion<AssemblyRefProcessor> {
  const AssemblyRefProcessorCompanion();

  @override
  AssemblyRefProcessor Function(MetadataIndex, int, int) get constructor =>
      AssemblyRefProcessor.new;

  @override
  MetadataTable get table => MetadataTable.assemblyRefProcessor;
}
