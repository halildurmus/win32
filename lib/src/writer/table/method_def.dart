import 'dart:typed_data';

import '../../attributes.dart';
import '../helpers.dart';
import '../index.dart';
import '../table.dart';
import '../table_stream.dart';

/// Represents a row in the `MethodDef` metadata table, describing a method
/// defined in a type.
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
///  - **ParamList** (Param Index)
final class MethodDef implements Row {
  const MethodDef({
    required this.rva,
    required this.implFlags,
    required this.flags,
    required this.name,
    required this.signature,
    required this.paramList,
  });

  final int rva;
  final MethodImplAttributes implFlags;
  final MethodAttributes flags;
  final StringIndex name;
  final BlobIndex signature;
  final ParamIndex paramList;

  @override
  void serialize(BytesBuilder buffer, TableStream context) {
    buffer
      ..writeUint32(rva)
      ..writeUint16(implFlags)
      ..writeUint16(flags)
      ..writeHeapIndex(name.index, context.stringHeapSize)
      ..writeHeapIndex(signature.index, context.blobHeapSize)
      ..writeTableIndex(paramList.index, context.param.length);
  }
}
