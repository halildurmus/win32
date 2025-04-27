import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'generic_param.dart';

/// A constraint on a generic parameter.
///
/// The table has the following columns:
///  - Owner (GenericParam Index)
///  - Constraint (TypeDefOrRef Coded Index)
///
/// The table is defined in the section `§II.22.21` of the ECMA-335 standard.
final class GenericParamConstraint extends Row with HasCustomAttributes {
  GenericParamConstraint(
    super.metadataIndex,
    super.readerIndex,
    super.position,
  );

  static const metadataTable = MetadataTable.genericParamConstraint;

  @override
  MetadataTable get table => metadataTable;

  late final owner = readRow<GenericParam>(0);

  late final constraint = decode<TypeDefOrRef>(1);

  @override
  String toString() => 'GenericParamConstraint(constraint: $constraint)';
}

final class GenericParamConstraintCompanion
    extends RowCompanion<GenericParamConstraint> {
  const GenericParamConstraintCompanion();

  @override
  GenericParamConstraint Function(MetadataIndex, int, int) get constructor =>
      GenericParamConstraint.new;

  @override
  MetadataTable get table => GenericParamConstraint.metadataTable;
}
