import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../attributes.dart';
import '../../common.dart';
import '../heap/metadata_heap.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';
import 'index.dart';

/// Represents a row in the `MethodDef` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.26`.
///
/// The `MethodDef` table has the following columns:
///  - **RVA** (4-byte constant)
///  - **ImplFlags** (2-byte bitmask of MethodImplAtttributes)
///  - **Flags** (2-byte bitmask of MethodAttributes)
///  - **Name** (String Heap Index)
///  - **Signature** (Blob Heap Index)
///  - **ParamList** (Param Table Index)
final class MethodDef implements Row {
  const MethodDef({
    required this.rva,
    required this.name,
    required this.signature,
    required this.paramList,
    this.implFlags = const MethodImplAttributes(0),
    this.flags = const MethodAttributes(0),
  });

  final int rva;
  final MethodImplAttributes implFlags;
  final MethodAttributes flags;
  final StringIndex name;
  final BlobIndex signature;
  final ParamIndex paramList;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeUint32(rva)
      ..writeUint16(implFlags)
      ..writeUint16(flags)
      ..writeHeapIndex(name, stream)
      ..writeHeapIndex(signature, stream)
      ..writeTableIndex(paramList, stream);
  }
}

@internal
final class MethodDefCompanion extends RowCompanion<MethodDef> {
  const MethodDefCompanion();

  @override
  MetadataTableId get tableId => MetadataTableId.methodDef;
}
