import 'dart:typed_data';

import '../../attributes.dart';
import '../codes.dart';
import '../helpers.dart';
import '../index.dart';
import '../table.dart';
import '../table_stream.dart';

/// Represents a row in the `GenericParam` metadata table, describing a generic
/// type or method parameter.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.20`.
///
/// The `GenericParam` table has the following columns:
///  - **Number** (2-byte index)
///  - **Flags** (2-byte bitmask of GenericParamAttributes)
///  - **Owner** (TypeOrMethodDef Coded Index)
///  - **Name** (String Heap Index)
final class GenericParam implements Row {
  const GenericParam({
    required this.number,
    required this.flags,
    required this.owner,
    required this.name,
  });

  final int number;
  final GenericParamAttributes flags;
  final TypeOrMethodDef owner;
  final StringIndex name;

  @override
  void serialize(BytesBuilder buffer, TableStream context) {
    buffer
      ..writeUint16(number)
      ..writeUint16(flags)
      ..writeCodedIndex(owner.encode(), context.typeOrMethodDef)
      ..writeHeapIndex(name.index, context.stringHeapSize);
  }
}
