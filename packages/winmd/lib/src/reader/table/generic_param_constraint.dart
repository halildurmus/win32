import 'package:meta/meta.dart';

import '../../common.dart';
import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'generic_param.dart';

/// Represents a row in the `GenericParamConstraint` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.21`.
///
/// The `GenericParamConstraint` table has the following columns:
///  - **Owner** (GenericParam Table Index)
///  - **Constraint** (TypeDefOrRef Coded Index)
final class GenericParamConstraint extends Row with HasCustomAttributes {
  GenericParamConstraint(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => .genericParamConstraint;

  @override
  int get token => (MetadataTableId.genericParamConstraint << 24) | index;

  /// The generic parameter to which this constraint applies.
  late final GenericParam owner = readRow<GenericParam>(0);

  /// The type that constrains the generic parameter.
  late final TypeDefOrRef constraint = decode<TypeDefOrRef>(1);
}

@internal
final class GenericParamConstraintCompanion
    extends RowCompanion<GenericParamConstraint> {
  const GenericParamConstraintCompanion();

  @override
  GenericParamConstraint Function(MetadataIndex, int, int) get constructor =>
      GenericParamConstraint.new;

  @override
  MetadataTable get table => .genericParamConstraint;
}
