import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../attributes.dart';
import '../../common.dart';
import '../heap/metadata_heap.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';

/// Represents a row in the `Property` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.34`.
///
/// The `Property` table has the following columns:
///  - **Flags** (2-byte bitmask of PropertyAttributes)
///  - **Name** (String Heap Index)
///  - **Type** (Blob Heap Index)
final class Property implements Row {
  const Property({
    required this.name,
    required this.type,
    this.flags = const PropertyAttributes(0),
  });

  final PropertyAttributes flags;
  final StringIndex name;
  final BlobIndex type;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeUint16(flags)
      ..writeHeapIndex(name, stream)
      ..writeHeapIndex(type, stream);
  }
}

@internal
final class PropertyCompanion extends RowCompanion<Property> {
  const PropertyCompanion();

  @override
  MetadataTableId get tableId => MetadataTableId.property;
}
