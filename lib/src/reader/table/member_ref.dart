import '../../metadata_type.dart';
import '../../method_signature.dart';
import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../row.dart';
import '../table_index.dart';

/// The MemberRef table contains a reference to a member (field or method) of a
/// type.
///
/// It is used to resolve references to members in the metadata.
///
/// The table has the following columns:
///  - Class (MemberRefParent Coded Index)
///  - Name (String Heap Index)
///  - Signature (Blob Heap Index)
///
/// The table is defined in the section `§II.22.25` of the ECMA-335 standard.
final class MemberRef extends Row with HasCustomAttributes {
  MemberRef(super.metadataIndex, super.readerIndex, super.position);

  static const tableIndex = TableIndex.memberRef;

  @override
  TableIndex get table => tableIndex;

  late final parent = decode<MemberRefParent>(0);

  late final name = readString(1);

  MethodSignature signature([List<MetadataType> generics = const []]) =>
      readBlob(2).readMethodSignature(generics);

  @override
  String toString() => 'MemberRef(name: $name)';
}

final class MemberRefCompanion extends RowCompanion<MemberRef> {
  const MemberRefCompanion();

  @override
  MemberRef Function(MetadataIndex, int, int) get constructor => MemberRef.new;

  @override
  TableIndex get table => MemberRef.tableIndex;
}
