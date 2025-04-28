import '../../attributes.dart';
import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'generic_param_constraint.dart';

/// A generic parameter.
///
/// The table has the following columns:
///  - Number (2-byte index)
///  - Flags (2-byte bitmask of GenericParamAttributes)
///  - Owner (TypeOrMethodDef Coded Index)
///  - Name (String Heap Index)
///
/// The table is defined in ECMA-335 `§II.22.20`.
final class GenericParam extends Row with HasCustomAttributes {
  GenericParam(super.metadataIndex, super.readerIndex, super.position);

  @override
  MetadataTable get table => MetadataTable.genericParam;

  /// The index of the generic parameter, numbered left-to-right, from zero.
  late final sequence = readUint(0);

  late final flags = GenericParamAttributes(readUint(1));

  late final variance =
      Variance.values[flags & GenericParamAttributes.varianceMask];

  late final specialConstraint = switch (flags &
      GenericParamAttributes.specialConstraintMask) {
    GenericParamAttributes.referenceTypeConstraint =>
      SpecialConstraint.referenceType,
    GenericParamAttributes.notNullableValueTypeConstraint =>
      SpecialConstraint.notNullableValueType,
    GenericParamAttributes.defaultConstructorConstraint =>
      SpecialConstraint.defaultConstructor,
    _ => SpecialConstraint.none,
  };

  late final owner = decode<TypeOrMethodDef>(2);

  late final name = readString(3);

  late final constraints = getEqualRange<GenericParamConstraint>(
    0,
    position + 1,
  );

  @override
  String toString() => constraints.isEmpty
      ? 'GenericParam(name: $name)'
      : 'GenericParam(name: $name, constraints: $constraints)';
}

final class GenericParamCompanion extends RowCompanion<GenericParam> {
  const GenericParamCompanion();

  @override
  GenericParam Function(MetadataIndex, int, int) get constructor =>
      GenericParam.new;

  @override
  MetadataTable get table => MetadataTable.genericParam;
}
