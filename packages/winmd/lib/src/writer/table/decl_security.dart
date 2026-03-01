import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../attributes.dart';
import '../../common.dart';
import '../codes.dart';
import '../heap/metadata_heap.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';

/// Represents a row in the `DeclSecurity` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.11`.
///
/// The `DeclSecurity` table has the following columns:
///  - **Action** (2-byte value, SecurityAction)
///  - **Parent** (HasDeclSecurity Coded Index)
///  - **PermissionSet** (Blob Heap Index)
final class DeclSecurity implements Row {
  const DeclSecurity({
    required this.action,
    required this.parent,
    required this.permissionSet,
  });

  final SecurityAction action;
  final HasDeclSecurity parent;
  final BlobIndex permissionSet;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeUint16(action.value)
      ..writeCodedIndex(parent, stream)
      ..writeHeapIndex(permissionSet, stream);
  }
}

@internal
final class DeclSecurityCompanion extends RowCompanion<DeclSecurity> {
  const DeclSecurityCompanion();

  @override
  MetadataTableId get tableId => .declSecurity;
}
