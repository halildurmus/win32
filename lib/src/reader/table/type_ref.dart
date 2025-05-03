import 'package:meta/meta.dart';

import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';

/// Represents a row in the `TypeRef` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.38`.
///
/// The `TypeRef` table has the following columns:
///  - **ResolutionScope** (ResolutionScope Coded Index)
///  - **TypeName** (String Heap Index)
///  - **TypeNamespace** (String Heap Index)
final class TypeRef extends Row with HasCustomAttributes {
  TypeRef(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.typeRef;

  /// The resolution scope of the referenced type, indicating the context or
  /// scope in which the type is defined.
  late final scope = decode<ResolutionScope>(0);

  /// The name of the referenced type.
  late final name = readString(1);

  /// The namespace of the referenced type.
  late final namespace = readString(2);

  @override
  String toString() =>
      namespace.isEmpty ? 'TypeRef($name)' : 'TypeRef($namespace.$name)';
}

@internal
final class TypeRefCompanion extends RowCompanion<TypeRef> {
  const TypeRefCompanion();

  @override
  TypeRef Function(MetadataIndex, int, int) get constructor => TypeRef.new;

  @override
  MetadataTable get table => MetadataTable.typeRef;
}
