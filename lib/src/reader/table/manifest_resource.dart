import 'package:meta/meta.dart';

import '../../attributes.dart';
import '../../exception.dart';
import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';

/// Represents a row in the `ManifestResource` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.24`.
///
/// The `ManifestResource` table has the following columns:
///  - **Offset** (4-byte constant)
///  - **Flags** (4-byte bitmask of ManifestResourceAttributes)
///  - **Name** (String Heap Index)
///  - **Implementation** (Implementation Coded Index)
final class ManifestResource extends Row with HasCustomAttributes {
  ManifestResource(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.manifestResource;

  /// The offset within the manifest stream that points to the resource data.
  late final offset = readUint32(0);

  /// The attributes of the resource.
  late final flags = ManifestResourceAttributes(readUint32(1));

  /// The visibility of the resource.
  late final resourceVisibility = switch (flags &
      ManifestResourceAttributes.visibilityMask) {
    ManifestResourceAttributes.public => ManifestResourceVisibility.public,
    ManifestResourceAttributes.private => ManifestResourceVisibility.private,
    _ => throw WinmdException(
      'Unknown resource visibility: '
      '${flags & ManifestResourceAttributes.visibilityMask}',
    ),
  };

  /// The name of the resource.
  late final name = readString(2);

  /// The source of the resource.
  late final implementation = () {
    if (readUint(3) == 0) return null;
    return decode<Implementation>(3);
  }();

  @override
  String toString() => 'ManifestResource(name: $name, offset: $offset)';
}

@internal
final class ManifestResourceCompanion extends RowCompanion<ManifestResource> {
  const ManifestResourceCompanion();

  @override
  ManifestResource Function(MetadataIndex, int, int) get constructor =>
      ManifestResource.new;

  @override
  MetadataTable get table => MetadataTable.manifestResource;
}
