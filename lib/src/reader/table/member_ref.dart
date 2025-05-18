import 'package:meta/meta.dart';

import '../../common.dart';
import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';

/// Represents a row in the `MemberRef` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.25`.
///
/// The `MemberRef` table has the following columns:
///  - **Class** (MemberRefParent Coded Index)
///  - **Name** (String Heap Index)
///  - **Signature** (Blob Heap Index)
final class MemberRef extends Row with HasCustomAttributes {
  MemberRef(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.memberRef;

  @override
  int get token => (MetadataTableId.memberRef << 24) | index;

  /// The type that contains the referenced member.
  late final parent = decode<MemberRefParent>(0);

  /// The name of the referenced member.
  late final name = readString(1);

  /// The signature for the referenced member.
  late final signature = readBlob(2).readMemberRefSignature();

  @override
  String toString() => 'MemberRef(name: $name)';
}

@internal
final class MemberRefCompanion extends RowCompanion<MemberRef> {
  const MemberRefCompanion();

  @override
  MemberRef Function(MetadataIndex, int, int) get constructor => MemberRef.new;

  @override
  MetadataTable get table => MetadataTable.memberRef;
}
