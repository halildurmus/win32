import 'package:meta/meta.dart';

import '../../common.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';

/// Represents a row in the `ModuleRef` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.31`.
///
/// The `ModuleRef` table has the following columns:
///  - **Name** (String Heap Index)
final class ModuleRef extends Row with HasCustomAttributes {
  ModuleRef(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => .moduleRef;

  @override
  int get token => (MetadataTableId.moduleRef << 24) | index;

  /// The name of the module referenced by the assembly.
  late final String name = readString(0);

  @override
  String toString() => 'ModuleRef(name: $name)';
}

@internal
final class ModuleRefCompanion extends RowCompanion<ModuleRef> {
  const ModuleRefCompanion();

  @override
  ModuleRef Function(MetadataIndex, int, int) get constructor => ModuleRef.new;

  @override
  MetadataTable get table => .moduleRef;
}
