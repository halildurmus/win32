import 'package:meta/meta.dart';

import '../blob.dart';
import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';

/// Represents a row in the `MethodSpec` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.29`.
///
/// The `MethodSpec` table has the following columns:
///  - **Method** (MethodDefOrRef Coded Index)
///  - **Instantiation** (Blob Heap Index)
final class MethodSpec extends Row with HasCustomAttributes {
  MethodSpec(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.methodSpec;

  /// The method that is being specialized.
  late final method = decode<MethodDefOrRef>(0);

  /// The type instantiation data for a generic method.
  Blob get instantiation => readBlob(1);
}

@internal
final class MethodSpecCompanion extends RowCompanion<MethodSpec> {
  const MethodSpecCompanion();

  @override
  MethodSpec Function(MetadataIndex, int, int) get constructor =>
      MethodSpec.new;

  @override
  MetadataTable get table => MetadataTable.methodSpec;
}
