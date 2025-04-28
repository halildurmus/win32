import 'package:meta/meta.dart';

import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';

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
final class Module extends Row {
  Module(super.metadataIndex, super.readerIndex, super.position);

  @override
  MetadataTable get table => MetadataTable.module;

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
