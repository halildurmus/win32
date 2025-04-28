import '../../attributes.dart';
import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'constant.dart';
import 'field_layout.dart';
import 'type_def.dart';

/// Represents a row in the `Field` metadata table, describing a field within a
/// type.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.15`.
///
/// The `Field` table has the following columns:
///  - **Flags** (2-byte bitmask of FieldAttributes)
///  - **Name** (String Heap Index)
///  - **Signature** (Blob Heap Index)
final class Field extends Row with HasCustomAttributes {
  Field(super.metadataIndex, super.readerIndex, super.position);

  @override
  MetadataTable get table => MetadataTable.field;

  /// Field attributes describing visibility, special semantics, and other
  /// modifiers.
  late final flags = FieldAttributes(readUint(0));

  /// The access level (visibility) of the field.
  late final fieldAccess =
      FieldAccess.values[flags & FieldAttributes.fieldAccessMask];

  /// The name of the field.
  late final name = readString(1);

  /// The metadata type of the field.
  late final type = () {
    final blob = readBlob(2);
    final prolog = blob.readUint8();
    assert(prolog == 0x6, 'Expected prolog 0x6, got $prolog.');
    return blob.readTypeSignature();
  }();

  /// The constant value associated with the field, if any.
  late final constant = getEqualRange<Constant>(
    1,
    HasConstantField(this).encode(),
  ).firstOrNull;

  /// The layout information for the field, if any.
  late final layout = getEqualRange<FieldLayout>(1, position + 1).firstOrNull;

  /// The [TypeDef] that owns this field.
  late final parent = parentRow<TypeDef>(4);

  @override
  String toString() =>
      'Field(name: $name, type: $type'
      '${constant != null ? ', constant: $constant' : ''})';
}

final class FieldCompanion extends RowCompanion<Field> {
  const FieldCompanion();

  @override
  Field Function(MetadataIndex, int, int) get constructor => Field.new;

  @override
  MetadataTable get table => MetadataTable.field;
}
