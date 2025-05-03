import 'package:meta/meta.dart';

import '../../attributes.dart';
import '../blob.dart';
import '../codes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';

/// Represents a row in the `DeclSecurity` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.11`.
///
/// The `DeclSecurity` table has the following columns:
///  - **Action** (2-byte value, SecurityAction)
///  - **Parent** (HasDeclSecurity Coded Index)
///  - **PermissionSet** (Blob Heap Index)
final class DeclSecurity extends Row {
  DeclSecurity(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.declSecurity;

  /// The security action (e.g., demand, assert, deny).
  late final action = SecurityAction.fromValue(readUint16(0));

  /// The metadata element to which this security declaration applies.
  late final parent = decode<HasDeclSecurity>(1);

  /// A blob representing the serialized permission set to be applied for the
  /// given security action.
  Blob get permissionSet => readBlob(2);

  @override
  String toString() => 'DeclSecurity(action: $action, parent: $parent)';
}

@internal
final class DeclSecurityCompanion extends RowCompanion<DeclSecurity> {
  const DeclSecurityCompanion();

  @override
  DeclSecurity Function(MetadataIndex, int, int) get constructor =>
      DeclSecurity.new;

  @override
  MetadataTable get table => MetadataTable.declSecurity;
}
