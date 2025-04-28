import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';

/// The `ModuleRef` table contains a list of modules referenced by the assembly.
///
/// Each module is identified by a string that represents the name of the
/// module.
///
/// The table has the following columns:
///   Name (String Heap Index)
///
/// The table is defined in ECMA-335 `§II.22.31`.
final class ModuleRef extends Row {
  ModuleRef(super.metadataIndex, super.readerIndex, super.position);

  @override
  MetadataTable get table => MetadataTable.moduleRef;

  late final name = readString(0);

  @override
  String toString() => 'ModuleRef(name: $name)';
}

final class ModuleRefCompanion extends RowCompanion<ModuleRef> {
  const ModuleRefCompanion();

  @override
  ModuleRef Function(MetadataIndex, int, int) get constructor => ModuleRef.new;

  @override
  MetadataTable get table => MetadataTable.moduleRef;
}
