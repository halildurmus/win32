import 'package:meta/meta.dart';

import '../../attributes.dart';
import '../../common.dart';
import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'generic_param_constraint.dart';

/// Represents a row in the `GenericParam` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.20`.
///
/// The `GenericParam` table has the following columns:
///  - **Number** (2-byte value)
///  - **Flags** (2-byte bitmask of GenericParamAttributes)
///  - **Owner** (TypeOrMethodDef Coded Index)
///  - **Name** (String Heap Index)
final class GenericParam extends Row with HasCustomAttributes {
  GenericParam(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => .genericParam;

  @override
  int get token => (MetadataTableId.genericParam << 24) | index;

  /// The index of the generic parameter in the parameter list.
  ///
  /// Parameters are numbered sequentially from left to right, starting at zero.
  late final int sequence = readUint16(0);

  /// The attribute flags describing characteristics of the parameter.
  late final flags = GenericParamAttributes(readUint16(1));

  /// The declared variance of the generic parameter.
  late final Variance variance =
      Variance.values[flags & GenericParamAttributes.varianceMask];

  /// Special constraints applied to the generic parameter.
  late final SpecialConstraint specialConstraint = switch (flags &
      GenericParamAttributes.specialConstraintMask) {
    GenericParamAttributes.referenceTypeConstraint =>
      SpecialConstraint.referenceType,
    GenericParamAttributes.notNullableValueTypeConstraint =>
      SpecialConstraint.notNullableValueType,
    GenericParamAttributes.defaultConstructorConstraint =>
      SpecialConstraint.defaultConstructor,
    _ => SpecialConstraint.none,
  };

  /// The owner that declares this generic parameter.
  late final TypeOrMethodDef owner = decode<TypeOrMethodDef>(2);

  /// The name of the generic parameter.
  late final String name = readString(3);

  /// The additional constraints placed on the generic parameter, if any.
  late final List<GenericParamConstraint> constraints =
      getEqualRange<GenericParamConstraint>(
        0,
        index + 1,
      ).toList(growable: false);

  @override
  String toString() => constraints.isEmpty
      ? 'GenericParam(name: $name)'
      : 'GenericParam(name: $name, constraints: $constraints)';
}

@internal
final class GenericParamCompanion extends RowCompanion<GenericParam> {
  const GenericParamCompanion();

  @override
  GenericParam Function(MetadataIndex, int, int) get constructor =>
      GenericParam.new;

  @override
  MetadataTable get table => .genericParam;
}
