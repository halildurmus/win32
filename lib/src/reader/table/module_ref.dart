import '../metadata_index.dart';
import '../row.dart';
import '../table_index.dart';

/// The `ModuleRef` table contains a list of modules referenced by the assembly.
///
/// Each module is identified by a string that represents the name of the
/// module.
///
/// The table has the following columns:
///   Name (String Heap Index)
///
/// The table is defined in the section `§II.22.31` of the ECMA-335 standard.
final class ModuleRef extends Row {
  ModuleRef(super.metadataIndex, super.readerIndex, super.position);

  static const tableIndex = TableIndex.moduleRef;

  @override
  TableIndex get table => tableIndex;

  late final name = readString(0);

  @override
  String toString() => 'ModuleRef(name: $name)';
}

final class ModuleRefCompanion extends RowCompanion<ModuleRef> {
  const ModuleRefCompanion();

  @override
  ModuleRef Function(MetadataIndex, int, int) get constructor => ModuleRef.new;

  @override
  TableIndex get table => ModuleRef.tableIndex;
}
