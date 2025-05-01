import 'dart:typed_data';

import '../codes.dart';
import '../helpers.dart';
import '../index.dart';
import '../table.dart';
import '../table_stream.dart';

/// Represents a row in the `MemberRef` metadata table, describing a reference
/// to a field or method of a type.
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
  void serialize(BytesBuilder buffer, TableStream context) {
    buffer
      ..writeCodedIndex(parent.encode(), context.memberRefParent)
      ..writeHeapIndex(name.index, context.stringHeapSize)
      ..writeHeapIndex(signature.index, context.blobHeapSize);
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
