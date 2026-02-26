import 'package:meta/meta.dart';

import '../../attributes.dart';
import '../../common.dart';
import '../../metadata_type.dart';
import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'constant.dart';
import 'field_layout.dart';
import 'field_marshal.dart';
import 'type_def.dart';

/// Represents a row in the `Field` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.15`.
///
/// The `Field` table has the following columns:
///  - **Flags** (2-byte bitmask of FieldAttributes)
///  - **Name** (String Heap Index)
///  - **Signature** (Blob Heap Index)
final class Field extends Row with HasCustomAttributes {
  Field(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.field;

  @override
  int get token => (MetadataTableId.field << 24) | index;

  /// Field attributes describing visibility, special semantics, and other
  /// modifiers.
  late final flags = FieldAttributes(readUint16(0));

  /// The access level (visibility) of the field.
  late final FieldAccess fieldAccess =
      FieldAccess.values[flags & FieldAttributes.fieldAccessMask];

  /// The name of the field.
  late final String name = readString(1);

  /// The signature of the field.
  late final MetadataType signature = readBlob(2).readFieldSig();

  /// The constant value associated with the field, if any.
  late final Constant? constant = getEqualRange<Constant>(
    1,
    HasConstant.field(this).encode(),
  ).firstOrNull;

  /// The marshal information for the field, if any.
  late final FieldMarshal? fieldMarshal = getEqualRange<FieldMarshal>(
    0,
    HasFieldMarshal.field(this).encode(),
  ).firstOrNull;

  /// The layout information for the field, if any.
  late final FieldLayout? layout = getEqualRange<FieldLayout>(
    1,
    index + 1,
  ).firstOrNull;

  /// The [TypeDef] that owns this field.
  late final TypeDef parent = getParentRow<TypeDef>(4);

  @override
  String toString() =>
      'Field(name: $name, signature: $signature'
      '${constant != null ? ', constant: $constant' : ''})';
}

@internal
final class FieldCompanion extends RowCompanion<Field> {
  const FieldCompanion();

  @override
  Field Function(MetadataIndex, int, int) get constructor => Field.new;

  @override
  MetadataTable get table => MetadataTable.field;
}
