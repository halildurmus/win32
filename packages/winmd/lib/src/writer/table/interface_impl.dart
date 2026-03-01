import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../common.dart';
import '../codes.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';
import 'index.dart';

/// Represents a row in the `InterfaceImpl` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.23`.
///
/// The `InterfaceImpl` table has the following columns:
///  - **Class** (TypeDef Table Index)
///  - **Interface** (TypeDefOrRef Coded Index)
final class InterfaceImpl implements Row {
  const InterfaceImpl({required this.class$, required this.interface});

  final TypeDefIndex class$;
  final TypeDefOrRef interface;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeTableIndex(class$, stream)
      ..writeCodedIndex(interface, stream);
  }
}

@internal
final class InterfaceImplCompanion extends RowCompanion<InterfaceImpl> {
  const InterfaceImplCompanion();

  @override
  MetadataTableId get tableId => .interfaceImpl;
}
