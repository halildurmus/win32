import 'dart:typed_data';

import '../../attributes.dart';
import '../helpers.dart';
import '../index.dart';
import '../table.dart';
import '../table_stream.dart';

/// Represents a row in the `Param` metadata table, describing a parameter of a
/// method or property.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.33`.
///
/// The `Param` table has the following columns:
///  - **Flags** (2-byte bitmask of ParamAttributes)
///  - **Sequence** (2-byte constant)
///  - **Name** (String Heap Index)
final class Param implements Row {
  const Param({
    required this.flags,
    required this.sequence,
    required this.name,
  });

  final ParamAttributes flags;
  final int sequence;
  final StringIndex name;

  @override
  void serialize(BytesBuilder buffer, TableStream context) {
    buffer
      ..writeUint16(flags)
      ..writeUint16(sequence)
      ..writeHeapIndex(name.index, context.stringHeapSize);
  }
}
