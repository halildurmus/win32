import '../../attributes.dart';
import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'constant.dart';

/// Records the parameters of a method or property.
///
/// The table has the following columns:
///  - Flags (2-byte bitmask of ParamAttributes)
///  - Sequence (2-byte constant)
///  - Name (String Heap Index)
///
/// The table is defined in the section `§II.22.33` of the ECMA-335 standard.
final class Param extends Row with HasCustomAttributes {
  Param(super.metadataIndex, super.readerIndex, super.position);

  static const metadataTable = MetadataTable.param;

  @override
  MetadataTable get table => metadataTable;

  late final flags = ParamAttributes(readUint(0));

  late final sequence = readUint(1);

  late final name = readString(2);

  late final constant = getEqualRange<Constant>(
    1,
    HasConstantParam(this).encode(),
  ).firstOrNull;

  @override
  String toString() => 'Param(name: $name)';
}

final class ParamCompanion extends RowCompanion<Param> {
  const ParamCompanion();

  @override
  Param Function(MetadataIndex, int, int) get constructor => Param.new;

  @override
  MetadataTable get table => Param.metadataTable;
}
