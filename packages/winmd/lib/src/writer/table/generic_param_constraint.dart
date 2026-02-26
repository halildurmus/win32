import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../common.dart';
import '../codes.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';
import 'index.dart';

/// Represents a row in the `GenericParamConstraint` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.21`.
///
/// The `GenericParamConstraint` table has the following columns:
///  - **Owner** (GenericParam Table Index)
///  - **Constraint** (TypeDefOrRef Coded Index)
final class GenericParamConstraint implements Row {
  const GenericParamConstraint({required this.owner, required this.constraint});

  final GenericParamIndex owner;
  final TypeDefOrRef constraint;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeTableIndex(owner, stream)
      ..writeCodedIndex(constraint, stream);
  }
}

@internal
final class GenericParamConstraintCompanion
    extends RowCompanion<GenericParamConstraint> {
  const GenericParamConstraintCompanion();

  @override
  MetadataTableId get tableId => MetadataTableId.genericParamConstraint;
}
