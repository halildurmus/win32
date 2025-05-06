import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../common.dart';
import '../codes.dart';
import '../heap/metadata_heap.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';

/// Represents a row in the `MemberRef` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.25`.
///
/// The `MemberRef` table has the following columns:
///  - **Class** (MemberRefParent Coded Index)
///  - **Name** (String Heap Index)
///  - **Signature** (Blob Heap Index)
final class MemberRef implements Row {
  const MemberRef({
    required this.parent,
    required this.name,
    required this.signature,
  });

  final MemberRefParent parent;
  final StringIndex name;
  final BlobIndex signature;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeCodedIndex(parent, stream)
      ..writeHeapIndex(name, stream)
      ..writeHeapIndex(signature, stream);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MemberRef &&
          parent == other.parent &&
          name == other.name &&
          signature == other.signature;

  @override
  int get hashCode => Object.hash(parent, name, signature);
}

@internal
final class MemberRefCompanion extends RowCompanion<MemberRef> {
  const MemberRefCompanion();

  @override
  MetadataTableId get tableId => MetadataTableId.memberRef;
}
