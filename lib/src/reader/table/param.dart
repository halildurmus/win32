import 'package:meta/meta.dart';

import '../../attributes.dart';
import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'constant.dart';

/// Represents a row in the `Param` metadata table, describing a parameter of a
/// method or property.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.33`.
///
/// The `Param` table has the following columns:
///  - **Flags** (2-byte bitmask of ParamAttributes)
///  - **Sequence** (2-byte constant)
///  - **Name** (String Heap Index)
final class Param extends Row with HasCustomAttributes {
  Param(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.param;

  /// Param attributes that indicates various attributes of the parameter,
  /// such as whether it is optional, has a default value, etc.
  late final flags = ParamAttributes(readUint(0));

  /// The zero-based index (sequence number) of the parameter in the method or
  /// property.
  late final sequence = readUint(1);

  /// The name of the parameter.
  late final name = readString(2);

  /// The constant associated with the parameter, if any.
  late final constant = getEqualRange<Constant>(
    1,
    HasConstantParam(this).encode(),
  ).firstOrNull;

  @override
  String toString() => name.isEmpty
      ? 'Param(sequence: $sequence)'
      : 'Param(sequence: $sequence, name: $name)';
}

@internal
final class ParamCompanion extends RowCompanion<Param> {
  const ParamCompanion();

  @override
  Param Function(MetadataIndex, int, int) get constructor => Param.new;

  @override
  MetadataTable get table => MetadataTable.param;
}
