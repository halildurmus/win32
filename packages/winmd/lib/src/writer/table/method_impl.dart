import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../common.dart';
import '../codes.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';
import 'index.dart';

/// Represents a row in the `MethodImpl` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.27`.
///
/// The `MethodImpl` table has the following columns:
///  - **Class** (TypeDef Table Index)
///  - **MethodBody** (MethodDefOrRef Coded Index)
///  - **MethodDeclaration** (MethodDefOrRef Coded Index)
final class MethodImpl implements Row {
  const MethodImpl({
    required this.class$,
    required this.methodBody,
    required this.methodDeclaration,
  });

  final TypeDefIndex class$;
  final MethodDefOrRef methodBody;
  final MethodDefOrRef methodDeclaration;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeTableIndex(class$, stream)
      ..writeCodedIndex(methodBody, stream)
      ..writeCodedIndex(methodDeclaration, stream);
  }
}

@internal
final class MethodImplCompanion extends RowCompanion<MethodImpl> {
  const MethodImplCompanion();

  @override
  MetadataTableId get tableId => .methodImpl;
}
