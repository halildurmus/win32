import 'package:meta/meta.dart';

import '../../common.dart';
import '../../marshalling_descriptor.dart';
import '../codes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';

/// Represents a row in the `FieldMarshal` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.17`.
///
/// The `FieldMarshal` table has the following columns:
///  - **Parent** (HasFieldMarshal Coded Index)
///  - **NativeType** (Blob Heap Index)
final class FieldMarshal extends Row {
  FieldMarshal(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.fieldMarshal;

  @override
  int get token => (MetadataTableId.fieldMarshal << 24) | index;

  /// The entity being marshaled.
  late final HasFieldMarshal parent = decode<HasFieldMarshal>(0);

  /// The native marshaling rules for the associated [parent].
  late final MarshallingDescriptor nativeType = readBlob(
    1,
  ).readMarshallingDescriptor();

  @override
  String toString() => 'FieldMarshal(parent: $parent)';
}

@internal
final class FieldMarshalCompanion extends RowCompanion<FieldMarshal> {
  const FieldMarshalCompanion();

  @override
  FieldMarshal Function(MetadataIndex, int, int) get constructor =>
      FieldMarshal.new;

  @override
  MetadataTable get table => MetadataTable.fieldMarshal;
}
