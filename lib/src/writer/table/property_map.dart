import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../common.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';
import 'index.dart';

/// Represents a row in the `PropertyMap` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.35`.
///
/// The `PropertyMap` table has the following columns:
///  - **Parent** (TypeDef Table Index)
///  - **PropertyList** (Property Table Index)
final class PropertyMap implements Row {
  const PropertyMap({required this.parent, required this.propertyList});

  final TypeDefIndex parent;
  final PropertyIndex propertyList;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeTableIndex(parent, stream)
      ..writeTableIndex(propertyList, stream);
  }
}

@internal
final class PropertyMapCompanion extends RowCompanion<PropertyMap> {
  const PropertyMapCompanion();

  @override
  MetadataTableId get tableId => MetadataTableId.propertyMap;
}
