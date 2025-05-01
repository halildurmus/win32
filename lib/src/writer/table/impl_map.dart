import 'dart:typed_data';

import '../../attributes.dart';
import '../codes.dart';
import '../helpers.dart';
import '../index.dart';
import '../table.dart';
import '../table_stream.dart';

/// Represents a row in the `ImplMap` metadata table, describing a mapping
/// between a managed method and an unmanaged function implementation, typically
/// used in P/Invoke scenarios.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.22`.
///
/// The `ImplMap` table has the following columns:
///  - **MappingFlags** (2-byte bitmask of PInvokeAttributes)
///  - **MemberForwarded** (MemberForwarded Coded Index)
///  - **ImportName** (String Heap Index)
///  - **ImportScope** (ModuleRef Index)
final class ImplMap implements Row {
  const ImplMap({
    required this.mappingFlags,
    required this.memberForwarded,
    required this.importName,
    required this.importScope,
  });

  final PInvokeAttributes mappingFlags;
  final MemberForwarded memberForwarded;
  final StringIndex importName;
  final ModuleRefIndex importScope;

  @override
  void serialize(BytesBuilder buffer, TableStream context) {
    buffer
      ..writeUint16(mappingFlags)
      ..writeCodedIndex(memberForwarded.encode(), context.memberForwarded)
      ..writeHeapIndex(importName.index, context.stringHeapSize)
      ..writeTableIndex(importScope.index, context.moduleRef.length);
  }
}
