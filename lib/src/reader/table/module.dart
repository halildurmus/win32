import 'package:meta/meta.dart';

import '../../common.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';

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
final class Module extends Row with HasCustomAttributes {
  Module(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.module;

  @override
  int get token => (MetadataTableId.module << 24) | index;

  /// The name of the module.
  late final name = readString(1);

  /// The Module Version ID (MVID), a GUID that uniquely identifies the version
  /// of the module.
  late final mvid = readGuid(2);

  @override
  String toString() => 'Module(name: $name, mvid: $mvid)';
}

@internal
final class ModuleCompanion extends RowCompanion<Module> {
  const ModuleCompanion();

  @override
  Module Function(MetadataIndex, int, int) get constructor => Module.new;

  @override
  MetadataTable get table => MetadataTable.module;
}
