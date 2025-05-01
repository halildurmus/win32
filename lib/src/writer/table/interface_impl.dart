import 'dart:typed_data';

import '../codes.dart';
import '../helpers.dart';
import '../index.dart';
import '../table.dart';
import '../table_stream.dart';

/// Represents a row in the `InterfaceImpl` metadata table, describing an
/// interface that a type explicitly implements.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.23`.
///
/// The `InterfaceImpl` table has the following columns:
///  - **Class** (TypeDef Index)
///  - **Interface** (TypeDefOrRef Coded Index)
final class InterfaceImpl implements Row {
  const InterfaceImpl({required this.class$, required this.interface});

  final TypeDefIndex class$;
  final TypeDefOrRef interface;

  @override
  void serialize(BytesBuilder buffer, TableStream context) {
    buffer
      ..writeTableIndex(class$.index, context.typeDef.length)
      ..writeCodedIndex(interface.encode(), context.typeDefOrRef);
  }
}
