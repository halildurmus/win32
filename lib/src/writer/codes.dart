import 'table/index.dart';

/// Base class for all coded indices used in metadata tables.
///
/// A coded index is a compressed reference that combines multiple possible
/// table types into a single value, using a tag to distinguish them.
sealed class CodedIndex {
  /// Encodes the coded index into its compressed integer representation.
  int encode();
}

/// Represents a coded index into either a `MethodDef` or a `MemberRef`.
sealed class CustomAttributeType implements CodedIndex {
  /// Constructs a [CustomAttributeType] referencing a `MethodDef`.
  const factory CustomAttributeType.methodDef(MethodDefIndex value) =
      CustomAttributeTypeMethodDef;

  /// Constructs a [CustomAttributeType] referencing a `MemberRef`.
  const factory CustomAttributeType.memberRef(MemberRefIndex value) =
      CustomAttributeTypeMemberRef;

  const CustomAttributeType._();
}

/// A [CustomAttributeType] representing a `MethodDef`.
final class CustomAttributeTypeMethodDef extends CustomAttributeType {
  const CustomAttributeTypeMethodDef(this.value) : super._();

  /// The index of the `MethodDef`.
  final MethodDefIndex value;

  @override
  int encode() => ((value.index + 1) << 3) | 2;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomAttributeTypeMethodDef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [CustomAttributeType] representing a `MemberRef`.
final class CustomAttributeTypeMemberRef extends CustomAttributeType {
  const CustomAttributeTypeMemberRef(this.value) : super._();

  /// The index of the `MemberRef`.
  final MemberRefIndex value;

  @override
  int encode() => ((value.index + 1) << 3) | 3;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomAttributeTypeMemberRef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// Represents a coded index for entities that can have constant values.
sealed class HasConstant implements CodedIndex {
  /// Constructs a [HasConstant] referencing a `Field`.
  const factory HasConstant.field(FieldIndex value) = HasConstantField;

  /// Constructs a [HasConstant] referencing a `Param`.
  const factory HasConstant.param(ParamIndex value) = HasConstantParam;

  /// Constructs a [HasConstant] referencing a `Property`.
  const factory HasConstant.property(PropertyIndex value) = HasConstantProperty;

  const HasConstant._();
}

/// A [HasConstant] representing a `Field`.
final class HasConstantField extends HasConstant {
  const HasConstantField(this.value) : super._();

  /// The index of the `Field`.
  final FieldIndex value;

  @override
  int encode() => ((value.index + 1) << 2) | 0;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasConstantField && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasConstant] representing a `Param`.
final class HasConstantParam extends HasConstant {
  const HasConstantParam(this.value) : super._();

  /// The index of the `Param`.
  final ParamIndex value;

  @override
  int encode() => ((value.index + 1) << 2) | 1;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasConstantParam && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasConstant] representing a `Property`.
final class HasConstantProperty extends HasConstant {
  const HasConstantProperty(this.value) : super._();

  /// The index of the `Property`.
  final PropertyIndex value;

  @override
  int encode() => ((value.index + 1) << 2) | 2;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasConstantProperty && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// Represents a coded index for entities that can have custom attributes.
sealed class HasCustomAttribute implements CodedIndex {
  /// Constructs a [HasCustomAttribute] referencing a `MethodDef`.
  const factory HasCustomAttribute.methodDef(MethodDefIndex value) =
      HasCustomAttributeMethodDef;

  /// Constructs a [HasCustomAttribute] referencing a `Field`.
  const factory HasCustomAttribute.field(FieldIndex value) =
      HasCustomAttributeField;

  /// Constructs a [HasCustomAttribute] referencing a `TypeRef`.
  const factory HasCustomAttribute.typeRef(TypeRefIndex value) =
      HasCustomAttributeTypeRef;

  /// Constructs a [HasCustomAttribute] referencing a `TypeDef`.
  const factory HasCustomAttribute.typeDef(TypeDefIndex value) =
      HasCustomAttributeTypeDef;

  /// Constructs a [HasCustomAttribute] referencing a `Param`.
  const factory HasCustomAttribute.param(ParamIndex value) =
      HasCustomAttributeParam;

  /// Constructs a [HasCustomAttribute] referencing an `InterfaceImpl`.
  const factory HasCustomAttribute.interfaceImpl(InterfaceImplIndex value) =
      HasCustomAttributeInterfaceImpl;

  /// Constructs a [HasCustomAttribute] referencing a `MemberRef`.
  const factory HasCustomAttribute.memberRef(MemberRefIndex value) =
      HasCustomAttributeMemberRef;

  /// Constructs a [HasCustomAttribute] referencing a `Module`.
  const factory HasCustomAttribute.module(ModuleIndex value) =
      HasCustomAttributeModule;

  /// Constructs a [HasCustomAttribute] referencing a `Property`.
  const factory HasCustomAttribute.property(PropertyIndex value) =
      HasCustomAttributeProperty;

  /// Constructs a [HasCustomAttribute] referencing an `Event`.
  const factory HasCustomAttribute.event(EventIndex value) =
      HasCustomAttributeEvent;

  /// Constructs a [HasCustomAttribute] referencing a `StandAloneSig`.
  const factory HasCustomAttribute.standAloneSig(StandAloneSigIndex value) =
      HasCustomAttributeStandaloneSig;

  /// Constructs a [HasCustomAttribute] referencing a `ModuleRef`.
  const factory HasCustomAttribute.moduleRef(ModuleRefIndex value) =
      HasCustomAttributeModuleRef;

  /// Constructs a [HasCustomAttribute] referencing a `TypeSpec`.
  const factory HasCustomAttribute.typeSpec(TypeSpecIndex value) =
      HasCustomAttributeTypeSpec;

  /// Constructs a [HasCustomAttribute] referencing an `Assembly`.
  const factory HasCustomAttribute.assembly(AssemblyIndex value) =
      HasCustomAttributeAssembly;

  /// Constructs a [HasCustomAttribute] referencing an `AssemblyRef`.
  const factory HasCustomAttribute.assemblyRef(AssemblyRefIndex value) =
      HasCustomAttributeAssemblyRef;

  /// Constructs a [HasCustomAttribute] referencing an `File`.
  const factory HasCustomAttribute.file(FileIndex value) =
      HasCustomAttributeFile;

  /// Constructs a [HasCustomAttribute] referencing an `ExportedType`.
  const factory HasCustomAttribute.exportedType(ExportedTypeIndex value) =
      HasCustomAttributeExportedType;

  /// Constructs a [HasCustomAttribute] referencing a `ManifestResource`.
  const factory HasCustomAttribute.manifestResource(
    ManifestResourceIndex value,
  ) = HasCustomAttributeManifestResource;

  /// Constructs a [HasCustomAttribute] referencing a `GenericParam`.
  const factory HasCustomAttribute.genericParam(GenericParamIndex value) =
      HasCustomAttributeGenericParam;

  /// Constructs a [HasCustomAttribute] referencing a `GenericParamConstraint`.
  const factory HasCustomAttribute.genericParamConstraint(
    GenericParamConstraintIndex value,
  ) = HasCustomAttributeGenericParamConstraint;

  /// Constructs a [HasCustomAttribute] referencing a `MethodSpec`.
  const factory HasCustomAttribute.methodSpec(MethodSpecIndex value) =
      HasCustomAttributeMethodSpec;

  const HasCustomAttribute._();
}

/// A [HasCustomAttribute] representing a `MethodDef`.
final class HasCustomAttributeMethodDef extends HasCustomAttribute {
  const HasCustomAttributeMethodDef(this.value) : super._();

  /// The index of the `MethodDef`.
  final MethodDefIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 0;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasCustomAttributeMethodDef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasCustomAttribute] representing a `Field`.
final class HasCustomAttributeField extends HasCustomAttribute {
  const HasCustomAttributeField(this.value) : super._();

  /// The index of the `Field`.
  final FieldIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 1;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasCustomAttributeField && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasCustomAttribute] representing a `TypeRef`.
final class HasCustomAttributeTypeRef extends HasCustomAttribute {
  const HasCustomAttributeTypeRef(this.value) : super._();

  /// The index of the `TypeRef`.
  final TypeRefIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 2;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasCustomAttributeTypeRef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasCustomAttribute] representing a `TypeDef`.
final class HasCustomAttributeTypeDef extends HasCustomAttribute {
  const HasCustomAttributeTypeDef(this.value) : super._();

  /// The index of the `TypeDef`.
  final TypeDefIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 3;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasCustomAttributeTypeDef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasCustomAttribute] representing a `Param`.
final class HasCustomAttributeParam extends HasCustomAttribute {
  const HasCustomAttributeParam(this.value) : super._();

  /// The index of the `Param`.
  final ParamIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 4;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasCustomAttributeParam && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasCustomAttribute] representing an `InterfaceImpl`.
final class HasCustomAttributeInterfaceImpl extends HasCustomAttribute {
  const HasCustomAttributeInterfaceImpl(this.value) : super._();

  /// The index of the `InterfaceImpl`.
  final InterfaceImplIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 5;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasCustomAttributeInterfaceImpl && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasCustomAttribute] representing a `MemberRef`.
final class HasCustomAttributeMemberRef extends HasCustomAttribute {
  const HasCustomAttributeMemberRef(this.value) : super._();

  /// The index of the `MemberRef`.
  final MemberRefIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 6;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasCustomAttributeMemberRef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasCustomAttribute] representing a `Module`.
final class HasCustomAttributeModule extends HasCustomAttribute {
  const HasCustomAttributeModule(this.value) : super._();

  /// The index of the `Module`.
  final ModuleIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 7;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasCustomAttributeModule && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasCustomAttribute] representing a `Property`.
final class HasCustomAttributeProperty extends HasCustomAttribute {
  const HasCustomAttributeProperty(this.value) : super._();

  /// The index of the `Property`.
  final PropertyIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 9;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasCustomAttributeProperty && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasCustomAttribute] representing an `Event`.
final class HasCustomAttributeEvent extends HasCustomAttribute {
  const HasCustomAttributeEvent(this.value) : super._();

  /// The index of the `Event`.
  final EventIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 10;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasCustomAttributeEvent && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasCustomAttribute] representing a `StandAloneSig`.
final class HasCustomAttributeStandaloneSig extends HasCustomAttribute {
  const HasCustomAttributeStandaloneSig(this.value) : super._();

  /// The index of the `StandAloneSig`.
  final StandAloneSigIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 11;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasCustomAttributeStandaloneSig && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasCustomAttribute] representing a `ModuleRef`.
final class HasCustomAttributeModuleRef extends HasCustomAttribute {
  const HasCustomAttributeModuleRef(this.value) : super._();

  /// The index of the `ModuleRef`.
  final ModuleRefIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 12;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasCustomAttributeModuleRef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasCustomAttribute] representing a `TypeSpec`.
final class HasCustomAttributeTypeSpec extends HasCustomAttribute {
  const HasCustomAttributeTypeSpec(this.value) : super._();

  /// The index of the `TypeSpec`.
  final TypeSpecIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 13;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasCustomAttributeTypeSpec && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasCustomAttribute] representing a `Assembly`.
final class HasCustomAttributeAssembly extends HasCustomAttribute {
  const HasCustomAttributeAssembly(this.value) : super._();

  /// The index of the `Assembly`.
  final AssemblyIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 14;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasCustomAttributeAssembly && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasCustomAttribute] representing an `AssemblyRef`.
final class HasCustomAttributeAssemblyRef extends HasCustomAttribute {
  const HasCustomAttributeAssemblyRef(this.value) : super._();

  /// The index of the `AssemblyRef`.
  final AssemblyRefIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 15;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasCustomAttributeAssemblyRef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasCustomAttribute] representing a `File`.
final class HasCustomAttributeFile extends HasCustomAttribute {
  const HasCustomAttributeFile(this.value) : super._();

  /// The index of the `File`.
  final FileIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 16;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasCustomAttributeFile && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasCustomAttribute] representing an `ExportedType`.
final class HasCustomAttributeExportedType extends HasCustomAttribute {
  const HasCustomAttributeExportedType(this.value) : super._();

  /// The index of the `ExportedType`.
  final ExportedTypeIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 17;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasCustomAttributeExportedType && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasCustomAttribute] representing a `ManifestResource`.
final class HasCustomAttributeManifestResource extends HasCustomAttribute {
  const HasCustomAttributeManifestResource(this.value) : super._();

  /// The index of the `ManifestResource`.
  final ManifestResourceIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 18;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasCustomAttributeManifestResource && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasCustomAttribute] representing a `GenericParam`.
final class HasCustomAttributeGenericParam extends HasCustomAttribute {
  const HasCustomAttributeGenericParam(this.value) : super._();

  /// The index of the `GenericParam`.
  final GenericParamIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 19;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasCustomAttributeGenericParam && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasCustomAttribute] representing a `GenericParamConstraint`.
final class HasCustomAttributeGenericParamConstraint
    extends HasCustomAttribute {
  const HasCustomAttributeGenericParamConstraint(this.value) : super._();

  /// The index of the `GenericParamConstraint`.
  final GenericParamConstraintIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 20;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasCustomAttributeGenericParamConstraint && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasCustomAttribute] representing a `MethodSpec`.
final class HasCustomAttributeMethodSpec extends HasCustomAttribute {
  const HasCustomAttributeMethodSpec(this.value) : super._();

  /// The index of the `MethodSpec`.
  final MethodSpecIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 21;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasCustomAttributeMethodSpec && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// Represents a coded index for entities that can have declarative security
/// attributes.
sealed class HasDeclSecurity implements CodedIndex {
  /// Constructs a [HasDeclSecurity] referencing a `TypeDef`.
  const factory HasDeclSecurity.typeDef(TypeDefIndex value) =
      HasDeclSecurityTypeDef;

  /// Constructs a [HasDeclSecurity] referencing a `MethodDef`.
  const factory HasDeclSecurity.methodDef(MethodDefIndex value) =
      HasDeclSecurityMethodDef;

  /// Constructs a [HasDeclSecurity] referencing an `Assembly`.
  const factory HasDeclSecurity.assembly(AssemblyIndex value) =
      HasDeclSecurityAssembly;

  const HasDeclSecurity._();
}

/// A [HasDeclSecurity] representing a `TypeDef`.
final class HasDeclSecurityTypeDef extends HasDeclSecurity {
  const HasDeclSecurityTypeDef(this.value) : super._();

  /// The underlying type definition.
  final TypeDefIndex value;

  @override
  int encode() => ((value.index + 1) << 2) | 0;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasDeclSecurityTypeDef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasDeclSecurity] representing a `MethodDef`.
final class HasDeclSecurityMethodDef extends HasDeclSecurity {
  const HasDeclSecurityMethodDef(this.value) : super._();

  /// The underlying method definition.
  final MethodDefIndex value;

  @override
  int encode() => ((value.index + 1) << 2) | 1;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasDeclSecurityMethodDef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasDeclSecurity] representing an `Assembly`.
final class HasDeclSecurityAssembly extends HasDeclSecurity {
  const HasDeclSecurityAssembly(this.value) : super._();

  /// The underlying assembly.
  final AssemblyIndex value;

  @override
  int encode() => ((value.index + 1) << 2) | 2;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasDeclSecurityAssembly && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// Represents a coded index for a `Field` or a `Param`.
sealed class HasFieldMarshal implements CodedIndex {
  /// Constructs a [HasFieldMarshal] referencing a `Field`.
  const factory HasFieldMarshal.field(FieldIndex value) = HasFieldMarshalField;

  /// Constructs a [HasFieldMarshal] referencing a `Param`.
  const factory HasFieldMarshal.param(ParamIndex value) = HasFieldMarshalParam;

  const HasFieldMarshal._();
}

/// A [HasFieldMarshal] representing a `Field`.
final class HasFieldMarshalField extends HasFieldMarshal {
  const HasFieldMarshalField(this.value) : super._();

  /// The underlying field definition.
  final FieldIndex value;

  @override
  int encode() => ((value.index + 1) << 1) | 0;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasFieldMarshalField && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasFieldMarshal] representing a `Param`.
final class HasFieldMarshalParam extends HasFieldMarshal {
  const HasFieldMarshalParam(this.value) : super._();

  /// The underlying parameter definition.
  final ParamIndex value;

  @override
  int encode() => ((value.index + 1) << 1) | 1;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasFieldMarshalParam && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// Represents a coded index for an `Event` or a `Property`.
sealed class HasSemantics implements CodedIndex {
  /// Constructs a [HasSemantics] referencing an `Event`.
  const factory HasSemantics.event(EventIndex value) = HasSemanticsEvent;

  /// Constructs a [HasSemantics] referencing a `Property`.
  const factory HasSemantics.property(PropertyIndex value) =
      HasSemanticsProperty;

  const HasSemantics._();
}

/// A [HasSemantics] representing an `Event`.
final class HasSemanticsEvent extends HasSemantics {
  const HasSemanticsEvent(this.value) : super._();

  /// The underlying event.
  final EventIndex value;

  @override
  int encode() => ((value.index + 1) << 1) | 0;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasSemanticsEvent && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasSemantics] representing a `Property`.
final class HasSemanticsProperty extends HasSemantics {
  const HasSemanticsProperty(this.value) : super._();

  /// The underlying property.
  final PropertyIndex value;

  @override
  int encode() => ((value.index + 1) << 1) | 1;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasSemanticsProperty && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// Represents a coded index for a `File`, `AssemblyRef`, or `ExportedType`.
sealed class Implementation implements CodedIndex {
  /// Constructs an [Implementation] referencing a `File`.
  const factory Implementation.file(FileIndex value) = ImplementationFile;

  /// Constructs an [Implementation] referencing a `AssemblyRef`.
  const factory Implementation.assemblyRef(AssemblyRefIndex value) =
      ImplementationAssemblyRef;

  /// Constructs an [Implementation] referencing a `ExportedType`.
  const factory Implementation.exportedType(ExportedTypeIndex value) =
      ImplementationExportedType;

  const Implementation._();
}

/// A [Implementation] representing a `File`.
final class ImplementationFile extends Implementation {
  const ImplementationFile(this.value) : super._();

  /// The underlying file.
  final FileIndex value;

  @override
  int encode() => ((value.index + 1) << 2) | 0;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImplementationFile && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [Implementation] representing an `AssemblyRef`.
final class ImplementationAssemblyRef extends Implementation {
  const ImplementationAssemblyRef(this.value) : super._();

  /// The underlying assembly reference.
  final AssemblyRefIndex value;

  @override
  int encode() => ((value.index + 1) << 2) | 1;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImplementationAssemblyRef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [Implementation] representing an `ExportedType`.
final class ImplementationExportedType extends Implementation {
  const ImplementationExportedType(this.value) : super._();

  /// The underlying exported type.
  final ExportedTypeIndex value;

  @override
  int encode() => ((value.index + 1) << 2) | 2;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImplementationExportedType && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// Represents a coded index for members that can be forwarded.
sealed class MemberForwarded implements CodedIndex {
  /// Constructs a [MemberForwarded] referencing a `Field`.
  const factory MemberForwarded.field(FieldIndex value) = MemberForwardedField;

  /// Constructs a [MemberForwarded] referencing a `MethodDef`.
  const factory MemberForwarded.methodDef(MethodDefIndex value) =
      MemberForwardedMethodDef;

  const MemberForwarded._();
}

/// A [MemberForwarded] representing a `Field`.
final class MemberForwardedField extends MemberForwarded {
  const MemberForwardedField(this.value) : super._();

  /// The index of the `Field`.
  final FieldIndex value;

  @override
  int encode() => ((value.index + 1) << 1) | 0;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MemberForwardedField && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [MemberForwarded] representing a `MethodDef`.
final class MemberForwardedMethodDef extends MemberForwarded {
  const MemberForwardedMethodDef(this.value) : super._();

  /// The index of the `MethodDef`.
  final MethodDefIndex value;

  @override
  int encode() => ((value.index + 1) << 1) | 1;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MemberForwardedMethodDef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// Represents a coded index for a `TypeDef`, `TypeRef`, `ModuleRef`,
/// `MethodDef`, or `TypeSpec`.
sealed class MemberRefParent implements CodedIndex {
  /// Constructs a [MemberRefParent] referencing a `TypeDef`.
  const factory MemberRefParent.typeDef(TypeDefIndex value) =
      MemberRefParentTypeDef;

  /// Constructs a [MemberRefParent] referencing a `TypeRef`.
  const factory MemberRefParent.typeRef(TypeRefIndex value) =
      MemberRefParentTypeRef;

  /// Constructs a [MemberRefParent] referencing a `ModuleRef`.
  const factory MemberRefParent.moduleRef(ModuleRefIndex value) =
      MemberRefParentModuleRef;

  /// Constructs a [MemberRefParent] referencing a `MethodDef`.
  const factory MemberRefParent.methodDef(MethodDefIndex value) =
      MemberRefParentMethodDef;

  /// Constructs a [MemberRefParent] referencing a `TypeSpec`.
  const factory MemberRefParent.typeSpec(TypeSpecIndex value) =
      MemberRefParentTypeSpec;

  const MemberRefParent._();
}

/// A [MemberRefParent] representing a `TypeDef`.
final class MemberRefParentTypeDef extends MemberRefParent {
  const MemberRefParentTypeDef(this.value) : super._();

  /// The index of the `TypeDef`.
  final TypeDefIndex value;

  @override
  int encode() => ((value.index + 1) << 3) | 0;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MemberRefParentTypeDef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [MemberRefParent] representing a `TypeRef`.
final class MemberRefParentTypeRef extends MemberRefParent {
  const MemberRefParentTypeRef(this.value) : super._();

  /// The index of the `TypeRef`.
  final TypeRefIndex value;

  @override
  int encode() => ((value.index + 1) << 3) | 1;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MemberRefParentTypeRef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [MemberRefParent] representing a `ModuleRef`.
final class MemberRefParentModuleRef extends MemberRefParent {
  const MemberRefParentModuleRef(this.value) : super._();

  /// The index of the `ModuleRef`.
  final ModuleRefIndex value;

  @override
  int encode() => ((value.index + 1) << 3) | 2;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MemberRefParentModuleRef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [MemberRefParent] representing a `MethodDef`.
final class MemberRefParentMethodDef extends MemberRefParent {
  const MemberRefParentMethodDef(this.value) : super._();

  /// The index of the `MethodDef`.
  final MethodDefIndex value;

  @override
  int encode() => ((value.index + 1) << 3) | 3;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MemberRefParentMethodDef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [MemberRefParent] representing a `TypeSpec`.
final class MemberRefParentTypeSpec extends MemberRefParent {
  const MemberRefParentTypeSpec(this.value) : super._();

  /// The index of the `TypeSpec`.
  final TypeSpecIndex value;

  @override
  int encode() => ((value.index + 1) << 3) | 4;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MemberRefParentTypeSpec && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// Represents a coded index for a `MethodDef` or `MemberRef`.
sealed class MethodDefOrRef implements CodedIndex {
  /// Constructs a [MethodDefOrRef] referencing a `MethodDef`.
  const factory MethodDefOrRef.methodDef(MethodDefIndex value) =
      MethodDefOrRefMethodDef;

  /// Constructs a [MethodDefOrRef] referencing a `MemberRef`.
  const factory MethodDefOrRef.memberRef(MemberRefIndex value) =
      MethodDefOrRefMemberRef;

  const MethodDefOrRef._();
}

/// A [MethodDefOrRef] representing a `MethodDef`.
final class MethodDefOrRefMethodDef extends MethodDefOrRef {
  const MethodDefOrRefMethodDef(this.value) : super._();

  /// The underlying method definition.
  final MethodDefIndex value;

  @override
  int encode() => ((value.index + 1) << 1) | 0;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MethodDefOrRefMethodDef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [MethodDefOrRef] representing a `MemberRef`.
final class MethodDefOrRefMemberRef extends MethodDefOrRef {
  const MethodDefOrRefMemberRef(this.value) : super._();

  /// The underlying member reference.
  final MemberRefIndex value;

  @override
  int encode() => ((value.index + 1) << 1) | 1;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MethodDefOrRefMemberRef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// Represents a coded index for a `Module`, `ModuleRef`, `AssemblyRef`, or
/// `TypeRef`.
sealed class ResolutionScope implements CodedIndex {
  /// Constructs a [ResolutionScope] referencing a `Module`.
  const factory ResolutionScope.module(ModuleIndex value) =
      ResolutionScopeModule;

  /// Constructs a [ResolutionScope] referencing a `ModuleRef`.
  const factory ResolutionScope.moduleRef(ModuleRefIndex value) =
      ResolutionScopeModuleRef;

  /// Constructs a [ResolutionScope] referencing an `AssemblyRef`.
  const factory ResolutionScope.assemblyRef(AssemblyRefIndex value) =
      ResolutionScopeAssemblyRef;

  /// Constructs a [ResolutionScope] referencing a `TypeRef`.
  const factory ResolutionScope.typeRef(TypeRefIndex value) =
      ResolutionScopeTypeRef;

  const ResolutionScope._();
}

/// A [ResolutionScope] representing a `Module`.
final class ResolutionScopeModule extends ResolutionScope {
  const ResolutionScopeModule(this.value) : super._();

  /// The index of the `Module`.
  final ModuleIndex value;

  @override
  int encode() => ((value.index + 1) << 2) | 0;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResolutionScopeModule && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [ResolutionScope] representing a `ModuleRef`.
final class ResolutionScopeModuleRef extends ResolutionScope {
  const ResolutionScopeModuleRef(this.value) : super._();

  /// The index of the `ModuleRef`.
  final ModuleRefIndex value;

  @override
  int encode() => ((value.index + 1) << 2) | 1;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResolutionScopeModuleRef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [ResolutionScope] representing an `AssemblyRef`.
final class ResolutionScopeAssemblyRef extends ResolutionScope {
  const ResolutionScopeAssemblyRef(this.value) : super._();

  /// The index of the `AssemblyRef`.
  final AssemblyRefIndex value;

  @override
  int encode() => ((value.index + 1) << 2) | 2;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResolutionScopeAssemblyRef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [ResolutionScope] representing a `TypeRef`.
final class ResolutionScopeTypeRef extends ResolutionScope {
  const ResolutionScopeTypeRef(this.value) : super._();

  /// The index of the `TypeRef`.
  final TypeRefIndex value;

  @override
  int encode() => ((value.index + 1) << 2) | 3;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResolutionScopeTypeRef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// Represents a coded index for a `TypeDef`, `TypeRef`, or `TypeSpec`.
sealed class TypeDefOrRef implements CodedIndex {
  /// Constructs a [TypeDefOrRef] referencing a `TypeDef`.
  const factory TypeDefOrRef.typeDef(TypeDefIndex value) = TypeDefOrRefTypeDef;

  /// Constructs a [TypeDefOrRef] referencing a `TypeRef`.
  const factory TypeDefOrRef.typeRef(TypeRefIndex value) = TypeDefOrRefTypeRef;

  /// Constructs a [TypeDefOrRef] referencing a `TypeSpec`.
  const factory TypeDefOrRef.typeSpec(TypeSpecIndex value) =
      TypeDefOrRefTypeSpec;

  const TypeDefOrRef._();

  /// This results in an encoded value of zero.
  static const none = TypeDefOrRef.typeDef(TypeDefIndex(0xFFFFFFFF));
}

/// A [TypeDefOrRef] representing a `TypeDef`.
final class TypeDefOrRefTypeDef extends TypeDefOrRef {
  const TypeDefOrRefTypeDef(this.value) : super._();

  /// The index of the `TypeDef`.
  final TypeDefIndex value;

  @override
  int encode() => ((value.index + 1) << 2) | 0;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TypeDefOrRefTypeDef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [TypeDefOrRef] representing a `TypeRef`.
final class TypeDefOrRefTypeRef extends TypeDefOrRef {
  const TypeDefOrRefTypeRef(this.value) : super._();

  /// The index of the `TypeRef`.
  final TypeRefIndex value;

  @override
  int encode() => ((value.index + 1) << 2) | 1;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TypeDefOrRefTypeRef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [TypeDefOrRef] representing a `TypeSpec`.
final class TypeDefOrRefTypeSpec extends TypeDefOrRef {
  const TypeDefOrRefTypeSpec(this.value) : super._();

  /// The index of the `TypeSpec`.
  final TypeSpecIndex value;

  @override
  int encode() => ((value.index + 1) << 2) | 2;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TypeDefOrRefTypeSpec && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// Represents a coded index for a `TypeDef` or `MethodDef`.
sealed class TypeOrMethodDef implements CodedIndex {
  /// Constructs a [TypeOrMethodDef] referencing a `TypeDef`.
  const factory TypeOrMethodDef.typeDef(TypeDefIndex value) =
      TypeOrMethodDefTypeDef;

  /// Constructs a [TypeOrMethodDef] referencing a `MethodDef`.
  const factory TypeOrMethodDef.methodDef(MethodDefIndex value) =
      TypeOrMethodDefMethodDef;

  const TypeOrMethodDef._();
}

/// A [TypeOrMethodDef] representing a `TypeDef`.
final class TypeOrMethodDefTypeDef extends TypeOrMethodDef {
  const TypeOrMethodDefTypeDef(this.value) : super._();

  /// The index of the `TypeDef`.
  final TypeDefIndex value;

  @override
  int encode() => ((value.index + 1) << 1) | 0;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TypeOrMethodDefTypeDef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [TypeOrMethodDef] representing a `MethodDef`.
final class TypeOrMethodDefMethodDef extends TypeOrMethodDef {
  const TypeOrMethodDefMethodDef(this.value) : super._();

  /// The index of the `MethodDef`.
  final MethodDefIndex value;

  @override
  int encode() => ((value.index + 1) << 1) | 1;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TypeOrMethodDefMethodDef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}
