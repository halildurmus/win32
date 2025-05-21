import 'package:meta/meta.dart';

import '../../attributes.dart';
import '../../common.dart';
import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'constant.dart';
import 'field_marshal.dart';
import 'method_def.dart';

/// Represents a row in the `Param` metadata table.
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

  @override
  int get token => (MetadataTableId.param << 24) | index;

  /// Param attributes that indicates various attributes of the parameter,
  /// such as whether it is optional, has a default value, etc.
  late final flags = ParamAttributes(readUint16(0));

  /// The zero-based index (sequence number) of the parameter in the method or
  /// property.
  late final int sequence = readUint16(1);

  /// The name of the parameter.
  late final String name = readString(2);

  /// The constant associated with the parameter, if any.
  late final Constant? constant = getEqualRange<Constant>(
    1,
    HasConstant.param(this).encode(),
  ).firstOrNull;

  /// The marshal information for the parameter, if any.
  late final FieldMarshal? fieldMarshal = getEqualRange<FieldMarshal>(
    0,
    HasFieldMarshal.param(this).encode(),
  ).firstOrNull;

  /// The [MethodDef] that owns this parameter.
  late final MethodDef parent = getParentRow<MethodDef>(5);

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
