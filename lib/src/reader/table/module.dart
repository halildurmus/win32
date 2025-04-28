import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';

/// Contains a list of modules that are part of the assembly.
///
/// The table has the following columns:
///  - Generation (2-byte value, reserved, MBZ)
///  - Name (String Heap Index)
///  - Mvid (Module Version ID) (GUID Heap Index)
///  - EncId (GUID Heap Index, reserved, MBZ)
///  - EncBaseId (GUID Heap Index, reserved, MBZ)
///
/// The table is defined in ECMA-335 `§II.22.30`.
final class Module extends Row {
  Module(super.metadataIndex, super.readerIndex, super.position);

  @override
  MetadataTable get table => MetadataTable.module;

  late final name = readString(1);

  late final mvid = readGuid(2);

  @override
  String toString() => 'Module(name: $name, mvid: $mvid)';
}

final class ModuleCompanion extends RowCompanion<Module> {
  const ModuleCompanion();

  @override
  Module Function(MetadataIndex, int, int) get constructor => Module.new;

  @override
  MetadataTable get table => MetadataTable.module;
}
