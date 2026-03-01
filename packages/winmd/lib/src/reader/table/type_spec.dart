import 'package:meta/meta.dart';

import '../../common.dart';
import '../../metadata_type.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';

/// Represents a row in the `TypeSpec` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.39`.
///
/// The `TypeSpec` table has the following columns:
///  - **Signature** (Blob Heap Index)
final class TypeSpec extends Row with HasCustomAttributes {
  TypeSpec(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => .typeSpec;

  @override
  int get token => (MetadataTableId.typeSpec << 24) | index;

  /// The signature of the type specification.
  late final MetadataType signature = readBlob(0).readTypeCode();
}

@internal
final class TypeSpecCompanion extends RowCompanion<TypeSpec> {
  const TypeSpecCompanion();

  @override
  TypeSpec Function(MetadataIndex, int, int) get constructor => TypeSpec.new;

  @override
  MetadataTable get table => .typeSpec;
}
