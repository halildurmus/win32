import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';

/// Contains the definitions of all types referenced in the assembly.
///
/// The table has the following columns:
///  - ResolutionScope (ResolutionScope Coded Index)
///  - TypeName (String Heap Index)
///  - TypeNamespace (String Heap Index)
///
/// The table is defined in the section `§II.22.38` of the ECMA-335 standard.
final class TypeRef extends Row with HasCustomAttributes {
  TypeRef(super.metadataIndex, super.readerIndex, super.position);

  static const metadataTable = MetadataTable.typeRef;

  @override
  MetadataTable get table => metadataTable;

  late final scope = decode<ResolutionScope>(0);

  late final name = readString(1);

  late final namespace = readString(2);

  @override
  String toString() =>
      namespace.isEmpty ? 'TypeRef($name)' : 'TypeRef($namespace.$name)';
}

final class TypeRefCompanion extends RowCompanion<TypeRef> {
  const TypeRefCompanion();

  @override
  TypeRef Function(MetadataIndex, int, int) get constructor => TypeRef.new;

  @override
  MetadataTable get table => TypeRef.metadataTable;
}
