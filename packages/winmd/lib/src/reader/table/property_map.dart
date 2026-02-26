import 'package:meta/meta.dart';

import '../../common.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'property.dart';
import 'type_def.dart';

/// Represents a row in the `PropertyMap` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.35`.
///
/// The `PropertyMap` table has the following columns:
///  - **Parent** (TypeDef Table Index)
///  - **PropertyList** (Property Table Index)
final class PropertyMap extends Row {
  PropertyMap(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.propertyMap;

  @override
  int get token => (MetadataTableId.propertyMap << 24) | index;

  /// The [TypeDef] that owns the [properties].
  late final TypeDef parent = readRow<TypeDef>(0);

  /// A list of [Property]s that belong to the type defined in [parent].
  late final List<Property> properties = getList<Property>(
    1,
  ).toList(growable: false);

  @override
  String toString() => 'PropertyMap(parent: $parent, properties: $properties)';
}

@internal
final class PropertyMapCompanion extends RowCompanion<PropertyMap> {
  const PropertyMapCompanion();

  @override
  PropertyMap Function(MetadataIndex, int, int) get constructor =>
      PropertyMap.new;

  @override
  MetadataTable get table => MetadataTable.propertyMap;
}
