import '../../metadata_type.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';

/// Contains the definitions of all types in the assembly.
///
/// The table has the following columns:
///  - Signature (Blob Heap Index)
///
/// The table is defined in ECMA-335 `§II.22.39`.
final class TypeSpec extends Row with HasCustomAttributes {
  TypeSpec(super.metadataIndex, super.readerIndex, super.position);

  @override
  MetadataTable get table => MetadataTable.typeSpec;

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
  MetadataTable get table => MetadataTable.typeSpec;
}
