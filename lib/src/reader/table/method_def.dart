import '../../attributes.dart';
import '../../exception.dart';
import '../../metadata_type.dart';
import '../../method_signature.dart';
import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'impl_map.dart';
import 'param.dart';

/// Represents a method definition in the metadata.
///
/// The table has the following columns:
///  - RVA (4-byte constant)
///  - ImplFlags (2-byte bitmask of MethodImplAtttributes)
///  - Flags (2-byte bitmask of MethodAttributes)
///  - Name (String Heap Index)
///  - Signature (Blob Heap Index)
///  - ParamList (Param Index)
///
/// The table is defined in ECMA-335 `§II.22.26`.
final class MethodDef extends Row with HasCustomAttributes {
  MethodDef(super.metadataIndex, super.readerIndex, super.position);

  @override
  MetadataTable get table => MetadataTable.methodDef;

  late final rva = readUint(0);

  late final implFlags = MethodImplAttributes(readUint(1));

  late final codeType =
      CodeType.values[implFlags & MethodImplAttributes.codeTypeMask];

  late final isManaged = switch (implFlags & MethodImplAttributes.managedMask) {
    MethodImplAttributes.unmanaged => false,
    _ => true,
  };

  late final flags = MethodAttributes(readUint(2));

  late final memberAccess =
      MemberAccess.values[flags & MethodAttributes.memberAccessMask];

  late final vTableLayout = switch (flags & MethodAttributes.vtableLayoutMask) {
    MethodAttributes.reuseSlot => VTableLayout.reuseSlot,
    MethodAttributes.newSlot => VTableLayout.newSlot,
    _ => throw WinmdException(
      'Unknown vtable layout: ${flags & MethodAttributes.vtableLayoutMask}',
    ),
  };

  late final name = readString(3);

  MethodSignature signature([List<MetadataType> generics = const []]) =>
      readBlob(4).readMethodSignature(generics);

  late final params = getList<Param>(5);

  late final parent = MemberRefParent.typeDef(parentRow(5));

  late final implMap = getEqualRange<ImplMap>(
    1,
    MemberForwarded.methodDef(this).encode(),
  ).firstOrNull;

  @override
  String toString() => 'MethodDef(name: $name, params: $params)';
}

final class MethodDefCompanion extends RowCompanion<MethodDef> {
  const MethodDefCompanion();

  @override
  MethodDef Function(MetadataIndex, int, int) get constructor => MethodDef.new;

  @override
  MetadataTable get table => MetadataTable.methodDef;
}
