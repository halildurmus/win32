import '../../metadata_type.dart';
import '../../method_signature.dart';
import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';

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
final class MemberRef extends Row with HasCustomAttributes {
  MemberRef(super.metadataIndex, super.readerIndex, super.position);

  @override
  MetadataTable get table => MetadataTable.memberRef;

  /// The type that contains the referenced member.
  late final parent = decode<MemberRefParent>(0);

  /// The name of the referenced member.
  late final name = readString(1);

  /// The method signature for the referenced member, if it is a method.
  ///
  /// Optionally, [generics] can be passed to substitute any generic parameters
  /// in the method signature.
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
  MetadataTable get table => MetadataTable.memberRef;
}
