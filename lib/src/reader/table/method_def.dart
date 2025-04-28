import 'package:meta/meta.dart';

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
final class MethodDef extends Row with HasCustomAttributes {
  MethodDef(super.metadataIndex, super.readerIndex, super.position);

  @override
  MetadataTable get table => MetadataTable.methodDef;

  /// The relative virtual address (RVA) of the method's implementation.
  late final rva = readUint(0);

  /// Implementation flags that provide details about the method's
  /// implementation.
  late final implFlags = MethodImplAttributes(readUint(1));

  /// The code type associated with the method.
  late final codeType =
      CodeType.values[implFlags & MethodImplAttributes.codeTypeMask];

  /// Indicates whether the method is managed (`true`) or unmanaged (`false`).
  late final isManaged = switch (implFlags & MethodImplAttributes.managedMask) {
    MethodImplAttributes.unmanaged => false,
    _ => true,
  };

  /// The method's attributes, describing its access level, static state, and
  /// other characteristics.
  late final flags = MethodAttributes(readUint(2));

  /// The access level of the method (e.g., public, private, etc.).
  late final memberAccess =
      MemberAccess.values[flags & MethodAttributes.memberAccessMask];

  /// The vtable layout of the method.
  late final vTableLayout = switch (flags & MethodAttributes.vtableLayoutMask) {
    MethodAttributes.reuseSlot => VTableLayout.reuseSlot,
    MethodAttributes.newSlot => VTableLayout.newSlot,
    _ => throw WinmdException(
      'Unknown vtable layout: ${flags & MethodAttributes.vtableLayoutMask}',
    ),
  };

  /// The name of the method.
  late final name = readString(3);

  /// The method's signature, which defines the method's return type and
  /// parameters.
  ///
  /// Optionally, [generics] can be provided to substitute any generic
  /// parameters in the method signature.
  MethodSignature signature([List<MetadataType> generics = const []]) =>
      readBlob(4).readMethodSignature(generics);

  /// The list of parameters for the method.
  late final params = getList<Param>(5);

  /// The type that owns this method.
  late final parent = MemberRefParent.typeDef(getParentRow(5));

  /// The implementation map for the method, if it exists.
  late final implMap = getEqualRange<ImplMap>(
    1,
    MemberForwarded.methodDef(this).encode(),
  ).firstOrNull;

  @override
  String toString() => 'MethodDef(name: $name, params: $params)';
}

@internal
final class MethodDefCompanion extends RowCompanion<MethodDef> {
  const MethodDefCompanion();

  @override
  MethodDef Function(MetadataIndex, int, int) get constructor => MethodDef.new;

  @override
  MetadataTable get table => MetadataTable.methodDef;
}
