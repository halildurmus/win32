/// Represents an index into a table.
sealed class TableIndex {
  const TableIndex(this.index);

  /// The index into the table.
  final int index;

  @override
  // ignore: no_runtimetype_tostring
  String toString() => '$runtimeType($index)';
}

/// Represents a row index into the `Assembly` table.
final class AssemblyIndex extends TableIndex {
  const AssemblyIndex(super.index);
}

/// Represents a row index into the `AssemblyOS` table.
final class AssemblyOSIndex extends TableIndex {
  const AssemblyOSIndex(super.index);
}

/// Represents a row index into the `AssemblyProcessor` table.
final class AssemblyProcessorIndex extends TableIndex {
  const AssemblyProcessorIndex(super.index);
}

/// Represents a row index into the `AssemblyRef` table.
final class AssemblyRefIndex extends TableIndex {
  const AssemblyRefIndex(super.index);
}

/// Represents a row index into the `AssemblyRefOS` table.
final class AssemblyRefOSIndex extends TableIndex {
  const AssemblyRefOSIndex(super.index);
}

/// Represents a row index into the `AssemblyRefProcessor` table.
final class AssemblyRefProcessorIndex extends TableIndex {
  const AssemblyRefProcessorIndex(super.index);
}

/// Represents a row index into the `ClassLayout` table.
final class ClassLayoutIndex extends TableIndex {
  const ClassLayoutIndex(super.index);
}

/// Represents a row index into the `Constant` table.
final class ConstantIndex extends TableIndex {
  const ConstantIndex(super.index);
}

/// Represents a row index into the `CustomAttribute` table.
final class CustomAttributeIndex extends TableIndex {
  const CustomAttributeIndex(super.index);
}

/// Represents a row index into the `DeclSecurity` table.
final class DeclSecurityIndex extends TableIndex {
  const DeclSecurityIndex(super.index);
}

/// Represents a row index into the `Event` table.
final class EventIndex extends TableIndex {
  const EventIndex(super.index);
}

/// Represents a row index into the `EventMap` table.
final class EventMapIndex extends TableIndex {
  const EventMapIndex(super.index);
}

/// Represents a row index into the `ExportedType` table.
final class ExportedTypeIndex extends TableIndex {
  const ExportedTypeIndex(super.index);
}

/// Represents a row index into the `Field` table.
final class FieldIndex extends TableIndex {
  const FieldIndex(super.index);
}

/// Represents a row index into the `FieldLayout` table.
final class FieldLayoutIndex extends TableIndex {
  const FieldLayoutIndex(super.index);
}

/// Represents a row index into the `FieldMarshal` table.
final class FieldMarshalIndex extends TableIndex {
  const FieldMarshalIndex(super.index);
}

/// Represents a row index into the `FieldRVA` table.
final class FieldRVAIndex extends TableIndex {
  const FieldRVAIndex(super.index);
}

/// Represents a row index into the `File` table.
final class FileIndex extends TableIndex {
  const FileIndex(super.index);
}

/// Represents a row index into the `GenericParam` table.
final class GenericParamIndex extends TableIndex {
  const GenericParamIndex(super.index);
}

/// Represents a row index into the `GenericParamConstraint` table.
final class GenericParamConstraintIndex extends TableIndex {
  const GenericParamConstraintIndex(super.index);
}

/// Represents a row index into the `ImplMap` table.
final class ImplMapIndex extends TableIndex {
  const ImplMapIndex(super.index);
}

/// Represents a row index into the `InterfaceImpl` table.
final class InterfaceImplIndex extends TableIndex {
  const InterfaceImplIndex(super.index);
}

/// Represents a row index into the `ManifestResource` table.
final class ManifestResourceIndex extends TableIndex {
  const ManifestResourceIndex(super.index);
}

/// Represents a row index into the `MemberRef` table.
final class MemberRefIndex extends TableIndex {
  const MemberRefIndex(super.index);
}

/// Represents a row index into the `MethodDef` table.
final class MethodDefIndex extends TableIndex {
  const MethodDefIndex(super.index);
}

/// Represents a row index into the `MethodImpl` table.
final class MethodImplIndex extends TableIndex {
  const MethodImplIndex(super.index);
}

/// Represents a row index into the `MethodSemantics` table.
final class MethodSemanticsIndex extends TableIndex {
  const MethodSemanticsIndex(super.index);
}

/// Represents a row index into the `MethodSpec` table.
final class MethodSpecIndex extends TableIndex {
  const MethodSpecIndex(super.index);
}

/// Represents a row index into the `Module` table.
final class ModuleIndex extends TableIndex {
  const ModuleIndex(super.index);
}

/// Represents a row index into the `ModuleRef` table.
final class ModuleRefIndex extends TableIndex {
  const ModuleRefIndex(super.index);
}

/// Represents a row index into the `NestedClass` table.
final class NestedClassIndex extends TableIndex {
  const NestedClassIndex(super.index);
}

/// Represents a row index into the `Param` table.
final class ParamIndex extends TableIndex {
  const ParamIndex(super.index);
}

/// Represents a row index into the `Property` table.
final class PropertyIndex extends TableIndex {
  const PropertyIndex(super.index);
}

/// Represents a row index into the `PropertyMap` table.
final class PropertyMapIndex extends TableIndex {
  const PropertyMapIndex(super.index);
}

/// Represents a row index into the `StandAloneSig` table.
final class StandAloneSigIndex extends TableIndex {
  const StandAloneSigIndex(super.index);
}

/// Represents a row index into the `TypeDef` table.
final class TypeDefIndex extends TableIndex {
  const TypeDefIndex(super.index);
}

/// Represents a row index into the `TypeRef` table.
final class TypeRefIndex extends TableIndex {
  const TypeRefIndex(super.index);
}

/// Represents a row index into the `TypeSpec` table.
final class TypeSpecIndex extends TableIndex {
  const TypeSpecIndex(super.index);
}
