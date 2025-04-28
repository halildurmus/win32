import '../../metadata_type.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';

/// Represents a row in the `TypeSpec` metadata table, describing a type
/// specification.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.39`.
///
/// The `TypeSpec` table has the following columns:
///  - **Signature** (Blob Heap Index)
final class TypeSpec extends Row with HasCustomAttributes {
  TypeSpec(super.metadataIndex, super.readerIndex, super.position);

  @override
  MetadataTable get table => MetadataTable.typeSpec;

  /// The metadata type that corresponds to the type specified in the
  ///  `Signature` blob.
  ///
  /// Optionally, [generics] can be passed to substitute any generic parameters.
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
