import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'generic_param.dart';

/// Represents a row in the `GenericParamConstraint` metadata table, describing
/// a constraint on a generic parameter.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.21`.
///
/// The `GenericParamConstraint` table has the following columns:
///  - **Owner** (GenericParam Index)
///  - **Constraint** (TypeDefOrRef Coded Index)
final class GenericParamConstraint extends Row with HasCustomAttributes {
  GenericParamConstraint(
    super.metadataIndex,
    super.readerIndex,
    super.position,
  );

  @override
  MetadataTable get table => MetadataTable.genericParamConstraint;

  /// The generic parameter to which this constraint applies.
  late final owner = readRow<GenericParam>(0);

  /// The type that constrains the generic parameter.
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
  MetadataTable get table => MetadataTable.genericParamConstraint;
}
