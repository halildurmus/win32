import 'package:meta/meta.dart';

import '../../attributes.dart';
import '../../common.dart';
import '../codes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'method_def.dart';

/// Represents a row in the `MethodSemantics` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.28`.
///
/// The `MethodSemantics` table has the following columns:
///  - **Semantics** (2-byte bitmask of MethodSemanticsAttributes)
///  - **Method** (MethodDef Table Index)
///  - **Association** (HasSemantics Coded Index)
final class MethodSemantics extends Row {
  MethodSemantics(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.methodSemantics;

  @override
  int get token => (MetadataTableId.methodSemantics << 24) | index;

  /// The semantics of the method.
  late final semantics = MethodSemanticsAttributes(readUint16(0));

  /// The method definition that is associated with these semantics.
  late final method = readRow<MethodDef>(1);

  /// The entity that is associated with the method.
  late final association = decode<HasSemantics>(2);

  @override
  String toString() => 'MethodSemantics(method: $method)';
}

@internal
final class MethodSemanticsCompanion extends RowCompanion<MethodSemantics> {
  const MethodSemanticsCompanion();

  @override
  MethodSemantics Function(MetadataIndex, int, int) get constructor =>
      MethodSemantics.new;

  @override
  MetadataTable get table => MetadataTable.methodSemantics;
}
