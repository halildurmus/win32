import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../attributes.dart';
import '../../common.dart';
import '../codes.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';
import 'index.dart';

/// Represents a row in the `MethodSemantics` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.28`.
///
/// The `MethodSemantics` table has the following columns:
///  - **Semantics** (2-byte bitmask of MethodSemanticsAttributes)
///  - **Method** (MethodDef Table Index)
///  - **Association** (HasSemantics Coded Index)
final class MethodSemantics implements Row {
  const MethodSemantics({
    required this.semantics,
    required this.method,
    required this.association,
  });

  final MethodSemanticsAttributes semantics;
  final MethodDefIndex method;
  final HasSemantics association;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeUint16(semantics)
      ..writeTableIndex(method, stream)
      ..writeCodedIndex(association, stream);
  }
}

@internal
final class MethodSemanticsCompanion extends RowCompanion<MethodSemantics> {
  const MethodSemanticsCompanion();

  @override
  MetadataTableId get tableId => MetadataTableId.methodSemantics;
}
