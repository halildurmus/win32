import 'package:meta/meta.dart';

import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';

/// Represents a row in the `StandAloneSig` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.36`.
///
/// The `StandAloneSig` table has the following columns:
///  - **Signature** (Blob Heap Index)
final class StandAloneSig extends Row with HasCustomAttributes {
  StandAloneSig(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.standAloneSig;

  /// The signature of a standalone method or local variable.
  late final signature = readBlob(0).readStandAloneSignature();
}

@internal
final class StandAloneSigCompanion extends RowCompanion<StandAloneSig> {
  const StandAloneSigCompanion();

  @override
  StandAloneSig Function(MetadataIndex, int, int) get constructor =>
      StandAloneSig.new;

  @override
  MetadataTable get table => MetadataTable.standAloneSig;
}
