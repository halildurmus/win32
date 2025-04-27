import '../../metadata_type.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../row.dart';
import '../table_index.dart';

/// Contains the definitions of all types in the assembly.
///
/// The table has the following columns:
///  - Signature (Blob Heap Index)
///
/// The table is defined in the section `§II.22.39` of the ECMA-335 standard.
final class TypeSpec extends Row with HasCustomAttributes {
  TypeSpec(super.metadataIndex, super.readerIndex, super.position);

  static const tableIndex = TableIndex.typeSpec;

  @override
  TableIndex get table => tableIndex;

  MetadataType type([List<MetadataType> generics = const []]) =>
      readBlob(0).readTypeCode(generics);

  @override
  String toString() =>
      'TypeSpec(file: $readerIndex, pos: $position, table: $table)';
}

final class TypeSpecCompanion extends RowCompanion<TypeSpec> {
  const TypeSpecCompanion();

  @override
  TypeSpec Function(MetadataIndex, int, int) get constructor => TypeSpec.new;

  @override
  TableIndex get table => TypeSpec.tableIndex;
}
