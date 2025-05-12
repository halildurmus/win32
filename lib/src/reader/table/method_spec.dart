import 'package:meta/meta.dart';

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

  /// The list of instantiated types for a generic method.
  late final instantiation = readBlob(1).readMethodSpecBlob();
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
