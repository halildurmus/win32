import '../../attributes.dart';
import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../row.dart';
import '../table_index.dart';
import 'constant.dart';
import 'field_layout.dart';
import 'type_def.dart';

/// A field.
///
/// Fields are typed memory locations that store the data of a program.
///
/// The table has the following columns:
///  - Flags (2-byte bitmask of FieldAttributes)
///  - Name (String Heap Index)
///  - Signature (Blob Heap Index)
///
/// The table is defined in the section `§II.22.15` of the ECMA-335 standard.
final class Field extends Row with HasCustomAttributes {
  Field(super.metadataIndex, super.readerIndex, super.position);

  static const tableIndex = TableIndex.field;

  @override
  TableIndex get table => tableIndex;

  late final flags = FieldAttributes(readUint(0));

  /// Returns the visibility of the field (public, private, etc.).
  late final fieldAccess =
      FieldAccess.values[flags & FieldAttributes.fieldAccessMask];

  late final name = readString(1);

  late final type = () {
    final blob = readBlob(2);
    final prolog = blob.readUint8();
    assert(prolog == 0x6, 'Expected prolog 0x6, got $prolog.');
    return blob.readTypeSignature();
  }();

  late final constant = getEqualRange<Constant>(
    1,
    HasConstantField(this).encode(),
  ).firstOrNull;

  late final layout = getEqualRange<FieldLayout>(1, position + 1).firstOrNull;

  late final parent = parentRow<TypeDef>(4);

  @override
  String toString() =>
      'Field(name: $name, signature: $type'
      '${constant != null ? ', constant: $constant' : ''})';
}

final class FieldCompanion extends RowCompanion<Field> {
  const FieldCompanion();

  @override
  Field Function(MetadataIndex, int, int) get constructor => Field.new;

  @override
  TableIndex get table => Field.tableIndex;
}
