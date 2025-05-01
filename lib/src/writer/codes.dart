import 'index.dart';

/// Base class for all coded indices used in metadata tables.
///
/// A coded index is a compressed reference that combines multiple possible
/// table types into a single value, using a tag to distinguish them.
// ignore: one_member_abstracts
abstract final class CodedIndex {
  const CodedIndex();

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
  String toString() => 'CustomAttributeTypeMethodDef($value)';
}

/// A [CustomAttributeType] representing a `MemberRef`.
final class CustomAttributeTypeMemberRef extends CustomAttributeType {
  const CustomAttributeTypeMemberRef(this.value) : super._();

  /// The index of the `MemberRef`.
  final MemberRefIndex value;

  @override
  int encode() => ((value.index + 1) << 3) | 3;

  @override
  String toString() => 'CustomAttributeTypeMemberRef($value)';
}

/// Represents a coded index for entities that can have constant values.
sealed class HasConstant implements CodedIndex {
  /// Constructs a [HasConstant] referencing a `Field`.
  const factory HasConstant.field(FieldIndex value) = HasConstantField;

  /// Constructs a [HasConstant] referencing a `Param`.
  const factory HasConstant.param(ParamIndex value) = HasConstantParam;

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
  String toString() => 'HasConstantField($value)';
}

/// A [HasConstant] representing a `Param`.
final class HasConstantParam extends HasConstant {
  const HasConstantParam(this.value) : super._();

  /// The index of the `Param`.
  final ParamIndex value;

  @override
  int encode() => ((value.index + 1) << 2) | 1;

  @override
  String toString() => 'HasConstantParam($value)';
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

  /// Constructs a [HasCustomAttribute] referencing a `ModuleRef`.
  const factory HasCustomAttribute.moduleRef(ModuleRefIndex value) =
      HasCustomAttributeModuleRef;

  /// Constructs a [HasCustomAttribute] referencing a `TypeSpec`.
  const factory HasCustomAttribute.typeSpec(TypeSpecIndex value) =
      HasCustomAttributeTypeSpec;

  /// Constructs a [HasCustomAttribute] referencing an `AssemblyRef`.
  const factory HasCustomAttribute.assemblyRef(AssemblyRefIndex value) =
      HasCustomAttributeAssemblyRef;

  /// Constructs a [HasCustomAttribute] referencing a `GenericParam`.
  const factory HasCustomAttribute.genericParam(GenericParamIndex value) =
      HasCustomAttributeGenericParam;

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
  String toString() => 'HasCustomAttributeMethodDef($value)';
}

/// A [HasCustomAttribute] representing a `Field`.
final class HasCustomAttributeField extends HasCustomAttribute {
  const HasCustomAttributeField(this.value) : super._();

  /// The index of the `Field`.
  final FieldIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 1;

  @override
  String toString() => 'HasCustomAttributeField($value)';
}

/// A [HasCustomAttribute] representing a `TypeRef`.
final class HasCustomAttributeTypeRef extends HasCustomAttribute {
  const HasCustomAttributeTypeRef(this.value) : super._();

  /// The index of the `TypeRef`.
  final TypeRefIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 2;

  @override
  String toString() => 'HasCustomAttributeTypeRef($value)';
}

/// A [HasCustomAttribute] representing a `TypeDef`.
final class HasCustomAttributeTypeDef extends HasCustomAttribute {
  const HasCustomAttributeTypeDef(this.value) : super._();

  /// The index of the `TypeDef`.
  final TypeDefIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 3;

  @override
  String toString() => 'HasCustomAttributeTypeDef($value)';
}

/// A [HasCustomAttribute] representing a `Param`.
final class HasCustomAttributeParam extends HasCustomAttribute {
  const HasCustomAttributeParam(this.value) : super._();

  /// The index of the `Param`.
  final ParamIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 4;

  @override
  String toString() => 'HasCustomAttributeParam($value)';
}

/// A [HasCustomAttribute] representing an `InterfaceImpl`.
final class HasCustomAttributeInterfaceImpl extends HasCustomAttribute {
  const HasCustomAttributeInterfaceImpl(this.value) : super._();

  /// The index of the `InterfaceImpl`.
  final InterfaceImplIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 5;

  @override
  String toString() => 'HasCustomAttributeInterfaceImpl($value)';
}

/// A [HasCustomAttribute] representing a `MemberRef`.
final class HasCustomAttributeMemberRef extends HasCustomAttribute {
  const HasCustomAttributeMemberRef(this.value) : super._();

  /// The index of the `MemberRef`.
  final MemberRefIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 6;

  @override
  String toString() => 'HasCustomAttributeMemberRef($value)';
}

/// A [HasCustomAttribute] representing a `Module`.
final class HasCustomAttributeModule extends HasCustomAttribute {
  const HasCustomAttributeModule(this.value) : super._();

  /// The index of the `Module`.
  final ModuleIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 7;

  @override
  String toString() => 'HasCustomAttributeModule($value)';
}

/// A [HasCustomAttribute] representing a `ModuleRef`.
final class HasCustomAttributeModuleRef extends HasCustomAttribute {
  const HasCustomAttributeModuleRef(this.value) : super._();

  /// The index of the `ModuleRef`.
  final ModuleRefIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 12;

  @override
  String toString() => 'HasCustomAttributeModuleRef($value)';
}

/// A [HasCustomAttribute] representing a `TypeSpec`.
final class HasCustomAttributeTypeSpec extends HasCustomAttribute {
  const HasCustomAttributeTypeSpec(this.value) : super._();

  /// The index of the `TypeSpec`.
  final TypeSpecIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 13;

  @override
  String toString() => 'HasCustomAttributeTypeSpec($value)';
}

/// A [HasCustomAttribute] representing an `AssemblyRef`.
final class HasCustomAttributeAssemblyRef extends HasCustomAttribute {
  const HasCustomAttributeAssemblyRef(this.value) : super._();

  /// The index of the `AssemblyRef`.
  final AssemblyRefIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 15;

  @override
  String toString() => 'HasCustomAttributeAssemblyRef($value)';
}

/// A [HasCustomAttribute] representing a `GenericParam`.
final class HasCustomAttributeGenericParam extends HasCustomAttribute {
  const HasCustomAttributeGenericParam(this.value) : super._();

  /// The index of the `GenericParam`.
  final GenericParamIndex value;

  @override
  int encode() => ((value.index + 1) << 5) | 19;

  @override
  String toString() => 'HasCustomAttributeGenericParam($value)';
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
  String toString() => 'MemberForwardedField($value)';
}

/// A [MemberForwarded] representing a `MethodDef`.
final class MemberForwardedMethodDef extends MemberForwarded {
  const MemberForwardedMethodDef(this.value) : super._();

  /// The index of the `MethodDef`.
  final MethodDefIndex value;

  @override
  int encode() => ((value.index + 1) << 1) | 1;

  @override
  String toString() => 'MemberForwardedMethodDef($value)';
}

/// Represents a coded index for either a `TypeDef` or a `TypeRef`.
sealed class MemberRefParent implements CodedIndex {
  /// Constructs a [MemberRefParent] referencing a `TypeDef`.
  const factory MemberRefParent.typeDef(TypeDefIndex value) =
      MemberRefParentTypeDef;

  /// Constructs a [MemberRefParent] referencing a `TypeRef`.
  const factory MemberRefParent.typeRef(TypeRefIndex value) =
      MemberRefParentTypeRef;

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
  String toString() => 'MemberRefParentTypeDef($value)';
}

/// A [MemberRefParent] representing a `TypeRef`.
final class MemberRefParentTypeRef extends MemberRefParent {
  const MemberRefParentTypeRef(this.value) : super._();

  /// The index of the `TypeRef`.
  final TypeRefIndex value;

  @override
  int encode() => ((value.index + 1) << 3) | 1;

  @override
  String toString() => 'MemberRefParentTypeRef($value)';
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
  String toString() => 'ResolutionScopeModule($value)';
}

/// A [ResolutionScope] representing a `ModuleRef`.
final class ResolutionScopeModuleRef extends ResolutionScope {
  const ResolutionScopeModuleRef(this.value) : super._();

  /// The index of the `ModuleRef`.
  final ModuleRefIndex value;

  @override
  int encode() => ((value.index + 1) << 2) | 1;

  @override
  String toString() => 'ResolutionScopeModuleRef($value)';
}

/// A [ResolutionScope] representing an `AssemblyRef`.
final class ResolutionScopeAssemblyRef extends ResolutionScope {
  const ResolutionScopeAssemblyRef(this.value) : super._();

  /// The index of the `AssemblyRef`.
  final AssemblyRefIndex value;

  @override
  int encode() => ((value.index + 1) << 2) | 2;

  @override
  String toString() => 'ResolutionScopeAssemblyRef($value)';
}

/// A [ResolutionScope] representing a `TypeRef`.
final class ResolutionScopeTypeRef extends ResolutionScope {
  const ResolutionScopeTypeRef(this.value) : super._();

  /// The index of the `TypeRef`.
  final TypeRefIndex value;

  @override
  int encode() => ((value.index + 1) << 2) | 3;

  @override
  String toString() => 'ResolutionScopeTypeRef($value)';
}

/// Represents a coded index for either a `TypeDef`, `TypeRef`, or `TypeSpec`.
sealed class TypeDefOrRef implements CodedIndex {
  /// Constructs a [TypeDefOrRef] referencing a `TypeDef`.
  const factory TypeDefOrRef.typeDef(TypeDefIndex value) = TypeDefOrRefTypeDef;

  /// Constructs a [TypeDefOrRef] referencing a `TypeRef`.
  const factory TypeDefOrRef.typeRef(TypeRefIndex value) = TypeDefOrRefTypeRef;

  /// Constructs a [TypeDefOrRef] referencing a `TypeSpec`.
  const factory TypeDefOrRef.typeSpec(TypeSpecIndex value) =
      TypeDefOrRefTypeSpec;

  const TypeDefOrRef._();

  // This results in an encoded value of zero.
  static const none = TypeDefOrRef.typeDef(TypeDefIndex(4_294_967_295));
}

/// A [TypeDefOrRef] representing a `TypeDef`.
final class TypeDefOrRefTypeDef extends TypeDefOrRef {
  const TypeDefOrRefTypeDef(this.value) : super._();

  /// The index of the `TypeDef`.
  final TypeDefIndex value;

  @override
  int encode() => ((value.index + 1) << 2) | 0;

  @override
  String toString() => 'TypeDefOrRefTypeDef($value)';
}

/// A [TypeDefOrRef] representing a `TypeRef`.
final class TypeDefOrRefTypeRef extends TypeDefOrRef {
  const TypeDefOrRefTypeRef(this.value) : super._();

  /// The index of the `TypeRef`.
  final TypeRefIndex value;

  @override
  int encode() => ((value.index + 1) << 2) | 1;

  @override
  String toString() => 'TypeDefOrRefTypeRef($value)';
}

/// A [TypeDefOrRef] representing a `TypeSpec`.
final class TypeDefOrRefTypeSpec extends TypeDefOrRef {
  const TypeDefOrRefTypeSpec(this.value) : super._();

  /// The index of the `TypeSpec`.
  final TypeSpecIndex value;

  @override
  int encode() => ((value.index + 1) << 2) | 2;

  @override
  String toString() => 'TypeDefOrRefTypeSpec($value)';
}

/// Represents a coded index for either a `TypeDef` or a `MethodDef`.
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
  String toString() => 'TypeOrMethodDefTypeDef($value)';
}

/// A [TypeOrMethodDef] representing a `MethodDef`.
final class TypeOrMethodDefMethodDef extends TypeOrMethodDef {
  const TypeOrMethodDefMethodDef(this.value) : super._();

  /// The index of the `MethodDef`.
  final MethodDefIndex value;

  @override
  int encode() => ((value.index + 1) << 1) | 1;

  @override
  String toString() => 'TypeOrMethodDefMethodDef($value)';
}
