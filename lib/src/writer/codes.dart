import '../exception.dart';
import 'id.dart';

// ignore: one_member_abstracts
abstract final class CodedIndex {
  const CodedIndex();

  /// Encodes the attribute back to an integer.
  int encode();
}

sealed class CustomAttributeType implements CodedIndex {
  factory CustomAttributeType(Object value) => switch (value) {
    MethodDef() => CustomAttributeTypeMethodDef(value),
    MemberRef() => CustomAttributeTypeMemberRef(value),
    _ => throw WinmdException('Unsupported value: $value'),
  };

  const factory CustomAttributeType.methodDef(MethodDef value) =
      CustomAttributeTypeMethodDef;

  const factory CustomAttributeType.memberRef(MemberRef value) =
      CustomAttributeTypeMemberRef;

  const CustomAttributeType._();
}

final class CustomAttributeTypeMethodDef extends CustomAttributeType {
  const CustomAttributeTypeMethodDef(this.value) : super._();

  final MethodDef value;

  @override
  int encode() => ((value.value + 1) << 3) | 2;

  @override
  String toString() => 'CustomAttributeTypeMethodDef($value)';
}

final class CustomAttributeTypeMemberRef extends CustomAttributeType {
  const CustomAttributeTypeMemberRef(this.value) : super._();

  final MemberRef value;

  @override
  int encode() => ((value.value + 1) << 3) | 3;

  @override
  String toString() => 'CustomAttributeTypeMemberRef($value)';
}

sealed class HasCustomAttribute implements CodedIndex {
  factory HasCustomAttribute(Object value) => switch (value) {
    MethodDef() => HasCustomAttributeMethodDef(value),
    Field() => HasCustomAttributeField(value),
    TypeRef() => HasCustomAttributeTypeRef(value),
    TypeDef() => HasCustomAttributeTypeDef(value),
    Param() => HasCustomAttributeParam(value),
    InterfaceImpl() => HasCustomAttributeInterfaceImpl(value),
    MemberRef() => HasCustomAttributeMemberRef(value),
    Module() => HasCustomAttributeModule(value),
    ModuleRef() => HasCustomAttributeModuleRef(value),
    TypeSpec() => HasCustomAttributeTypeSpec(value),
    AssemblyRef() => HasCustomAttributeAssemblyRef(value),
    GenericParam() => HasCustomAttributeGenericParam(value),
    _ => throw WinmdException('Unsupported value: $value'),
  };

  const factory HasCustomAttribute.methodDef(MethodDef value) =
      HasCustomAttributeMethodDef;

  const factory HasCustomAttribute.field(Field value) = HasCustomAttributeField;

  const factory HasCustomAttribute.typeRef(TypeRef value) =
      HasCustomAttributeTypeRef;

  const factory HasCustomAttribute.typeDef(TypeDef value) =
      HasCustomAttributeTypeDef;

  const factory HasCustomAttribute.param(Param value) = HasCustomAttributeParam;

  const factory HasCustomAttribute.interfaceImpl(InterfaceImpl value) =
      HasCustomAttributeInterfaceImpl;

  const factory HasCustomAttribute.memberRef(MemberRef value) =
      HasCustomAttributeMemberRef;

  const factory HasCustomAttribute.module(Module value) =
      HasCustomAttributeModule;

  const factory HasCustomAttribute.moduleRef(ModuleRef value) =
      HasCustomAttributeModuleRef;

  const factory HasCustomAttribute.typeSpec(TypeSpec value) =
      HasCustomAttributeTypeSpec;

  const factory HasCustomAttribute.assemblyRef(AssemblyRef value) =
      HasCustomAttributeAssemblyRef;

  const factory HasCustomAttribute.genericParam(GenericParam value) =
      HasCustomAttributeGenericParam;

  const HasCustomAttribute._();
}

final class HasCustomAttributeMethodDef extends HasCustomAttribute {
  const HasCustomAttributeMethodDef(this.value) : super._();

  final MethodDef value;

  @override
  int encode() => ((value.value + 1) << 5) | 0;

  @override
  String toString() => 'HasCustomAttributeMethodDef($value)';
}

final class HasCustomAttributeField extends HasCustomAttribute {
  const HasCustomAttributeField(this.value) : super._();

  final Field value;

  @override
  int encode() => ((value.value + 1) << 5) | 1;

  @override
  String toString() => 'HasCustomAttributeField($value)';
}

final class HasCustomAttributeTypeRef extends HasCustomAttribute {
  const HasCustomAttributeTypeRef(this.value) : super._();

  final TypeRef value;

  @override
  int encode() => ((value.value + 1) << 5) | 2;

  @override
  String toString() => 'HasCustomAttributeTypeRef($value)';
}

final class HasCustomAttributeTypeDef extends HasCustomAttribute {
  const HasCustomAttributeTypeDef(this.value) : super._();

  final TypeDef value;

  @override
  int encode() => ((value.value + 1) << 5) | 3;

  @override
  String toString() => 'HasCustomAttributeTypeDef($value)';
}

final class HasCustomAttributeParam extends HasCustomAttribute {
  const HasCustomAttributeParam(this.value) : super._();

  final Param value;

  @override
  int encode() => ((value.value + 1) << 5) | 4;

  @override
  String toString() => 'HasCustomAttributeParam($value)';
}

final class HasCustomAttributeInterfaceImpl extends HasCustomAttribute {
  const HasCustomAttributeInterfaceImpl(this.value) : super._();

  final InterfaceImpl value;

  @override
  int encode() => ((value.value + 1) << 5) | 5;

  @override
  String toString() => 'HasCustomAttributeInterfaceImpl($value)';
}

final class HasCustomAttributeMemberRef extends HasCustomAttribute {
  const HasCustomAttributeMemberRef(this.value) : super._();

  final MemberRef value;

  @override
  int encode() => ((value.value + 1) << 5) | 6;

  @override
  String toString() => 'HasCustomAttributeMemberRef($value)';
}

final class HasCustomAttributeModule extends HasCustomAttribute {
  const HasCustomAttributeModule(this.value) : super._();

  final Module value;

  @override
  int encode() => ((value.value + 1) << 5) | 7;

  @override
  String toString() => 'HasCustomAttributeModule($value)';
}

final class HasCustomAttributeModuleRef extends HasCustomAttribute {
  const HasCustomAttributeModuleRef(this.value) : super._();

  final ModuleRef value;

  @override
  int encode() => ((value.value + 1) << 5) | 12;

  @override
  String toString() => 'HasCustomAttributeModuleRef($value)';
}

final class HasCustomAttributeTypeSpec extends HasCustomAttribute {
  const HasCustomAttributeTypeSpec(this.value) : super._();

  final TypeSpec value;

  @override
  int encode() => ((value.value + 1) << 5) | 13;

  @override
  String toString() => 'HasCustomAttributeTypeSpec($value)';
}

final class HasCustomAttributeAssemblyRef extends HasCustomAttribute {
  const HasCustomAttributeAssemblyRef(this.value) : super._();

  final AssemblyRef value;

  @override
  int encode() => ((value.value + 1) << 5) | 15;

  @override
  String toString() => 'HasCustomAttributeAssemblyRef($value)';
}

final class HasCustomAttributeGenericParam extends HasCustomAttribute {
  const HasCustomAttributeGenericParam(this.value) : super._();

  final GenericParam value;

  @override
  int encode() => ((value.value + 1) << 5) | 19;

  @override
  String toString() => 'HasCustomAttributeGenericParam($value)';
}

sealed class HasConstant implements CodedIndex {
  factory HasConstant(Object value) => switch (value) {
    Field() => HasConstantField(value),
    Param() => HasConstantParam(value),
    _ => throw WinmdException('Unsupported value: $value'),
  };

  const factory HasConstant.field(Field value) = HasConstantField;

  const factory HasConstant.param(Param value) = HasConstantParam;

  const HasConstant._();
}

final class HasConstantField extends HasConstant {
  const HasConstantField(this.value) : super._();

  final Field value;

  @override
  int encode() => ((value.value + 1) << 2) | 0;

  @override
  String toString() => 'HasConstantField($value)';
}

final class HasConstantParam extends HasConstant {
  const HasConstantParam(this.value) : super._();

  final Param value;

  @override
  int encode() => ((value.value + 1) << 2) | 1;

  @override
  String toString() => 'HasConstantParam($value)';
}

sealed class MemberForwarded implements CodedIndex {
  factory MemberForwarded(Object value) => switch (value) {
    Field() => MemberForwardedField(value),
    MethodDef() => MemberForwardedMethodDef(value),
    _ => throw WinmdException('Unsupported value: $value'),
  };

  const factory MemberForwarded.field(Field value) = MemberForwardedField;

  const factory MemberForwarded.methodDef(MethodDef value) =
      MemberForwardedMethodDef;

  const MemberForwarded._();
}

final class MemberForwardedField extends MemberForwarded {
  const MemberForwardedField(this.value) : super._();

  final Field value;

  @override
  int encode() => ((value.value + 1) << 1) | 0;

  @override
  String toString() => 'MemberForwardedField($value)';
}

final class MemberForwardedMethodDef extends MemberForwarded {
  const MemberForwardedMethodDef(this.value) : super._();

  final MethodDef value;

  @override
  int encode() => ((value.value + 1) << 1) | 1;

  @override
  String toString() => 'MemberForwardedMethodDef($value)';
}

sealed class MemberRefParent implements CodedIndex {
  factory MemberRefParent(Object value) => switch (value) {
    TypeDef() => MemberRefParentTypeDef(value),
    TypeRef() => MemberRefParentTypeRef(value),
    _ => throw WinmdException('Unsupported value: $value'),
  };

  const factory MemberRefParent.typeDef(TypeDef value) = MemberRefParentTypeDef;

  const factory MemberRefParent.typeRef(TypeRef value) = MemberRefParentTypeRef;

  const MemberRefParent._();
}

final class MemberRefParentTypeDef extends MemberRefParent {
  const MemberRefParentTypeDef(this.value) : super._();

  final TypeDef value;

  @override
  int encode() => ((value.value + 1) << 3) | 0;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MemberRefParentTypeDef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'MemberRefParentTypeDef($value)';
}

final class MemberRefParentTypeRef extends MemberRefParent {
  const MemberRefParentTypeRef(this.value) : super._();

  final TypeRef value;

  @override
  int encode() => ((value.value + 1) << 3) | 1;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MemberRefParentTypeRef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'MemberRefParentTypeRef($value)';
}

sealed class ResolutionScope implements CodedIndex {
  factory ResolutionScope(Object value) => switch (value) {
    Module() => ResolutionScopeModule(value),
    ModuleRef() => ResolutionScopeModuleRef(value),
    AssemblyRef() => ResolutionScopeAssemblyRef(value),
    TypeRef() => ResolutionScopeTypeRef(value),
    _ => throw WinmdException('Unsupported value: $value'),
  };

  const factory ResolutionScope.module(Module value) = ResolutionScopeModule;

  const factory ResolutionScope.moduleRef(ModuleRef value) =
      ResolutionScopeModuleRef;

  const factory ResolutionScope.assemblyRef(AssemblyRef value) =
      ResolutionScopeAssemblyRef;

  const factory ResolutionScope.typeRef(TypeRef value) = ResolutionScopeTypeRef;

  const ResolutionScope._();
}

final class ResolutionScopeModule extends ResolutionScope {
  const ResolutionScopeModule(this.value) : super._();

  final Module value;

  @override
  int encode() => ((value.value + 1) << 2) | 0;

  @override
  String toString() => 'ResolutionScopeModule($value)';
}

final class ResolutionScopeModuleRef extends ResolutionScope {
  const ResolutionScopeModuleRef(this.value) : super._();

  final ModuleRef value;

  @override
  int encode() => ((value.value + 1) << 2) | 1;

  @override
  String toString() => 'ResolutionScopeModuleRef($value)';
}

final class ResolutionScopeAssemblyRef extends ResolutionScope {
  const ResolutionScopeAssemblyRef(this.value) : super._();

  final AssemblyRef value;

  @override
  int encode() => ((value.value + 1) << 2) | 2;

  @override
  String toString() => 'ResolutionScopeAssemblyRef($value)';
}

final class ResolutionScopeTypeRef extends ResolutionScope {
  const ResolutionScopeTypeRef(this.value) : super._();

  final TypeRef value;

  @override
  int encode() => ((value.value + 1) << 2) | 3;

  @override
  String toString() => 'ResolutionScopeTypeRef($value)';
}

sealed class TypeDefOrRef implements CodedIndex {
  factory TypeDefOrRef(Object value) => switch (value) {
    TypeDef() => TypeDefOrRefTypeDef(value),
    TypeRef() => TypeDefOrRefTypeRef(value),
    TypeSpec() => TypeDefOrRefTypeSpec(value),
    _ => throw WinmdException('Unsupported value: $value'),
  };

  const factory TypeDefOrRef.typeDef(TypeDef value) = TypeDefOrRefTypeDef;

  const factory TypeDefOrRef.typeRef(TypeRef value) = TypeDefOrRefTypeRef;

  const factory TypeDefOrRef.typeSpec(TypeSpec value) = TypeDefOrRefTypeSpec;

  const TypeDefOrRef._();

  // This results in an encoded value of zero.
  static const TypeDefOrRef none = TypeDefOrRefTypeDef(TypeDef(4_294_967_295));
}

final class TypeDefOrRefTypeDef extends TypeDefOrRef {
  const TypeDefOrRefTypeDef(this.value) : super._();

  final TypeDef value;

  @override
  int encode() => ((value.value + 1) << 2) | 0;

  @override
  String toString() => 'TypeDefOrRefTypeDef($value)';
}

final class TypeDefOrRefTypeRef extends TypeDefOrRef {
  const TypeDefOrRefTypeRef(this.value) : super._();

  final TypeRef value;

  @override
  int encode() => ((value.value + 1) << 2) | 1;

  @override
  String toString() => 'TypeDefOrRefTypeRef($value)';
}

final class TypeDefOrRefTypeSpec extends TypeDefOrRef {
  const TypeDefOrRefTypeSpec(this.value) : super._();

  final TypeSpec value;

  @override
  int encode() => ((value.value + 1) << 2) | 2;

  @override
  String toString() => 'TypeDefOrRefTypeSpec($value)';
}

sealed class TypeOrMethodDef implements CodedIndex {
  factory TypeOrMethodDef(Object value) => switch (value) {
    TypeDef() => TypeOrMethodDefTypeDef(value),
    MethodDef() => TypeOrMethodDefMethodDef(value),
    _ => throw WinmdException('Unsupported value: $value'),
  };

  const factory TypeOrMethodDef.typeDef(TypeDef value) = TypeOrMethodDefTypeDef;

  const factory TypeOrMethodDef.methodDef(MethodDef value) =
      TypeOrMethodDefMethodDef;

  const TypeOrMethodDef._();
}

final class TypeOrMethodDefTypeDef extends TypeOrMethodDef {
  const TypeOrMethodDefTypeDef(this.value) : super._();

  final TypeDef value;

  @override
  int encode() => ((value.value + 1) << 1) | 0;

  @override
  String toString() => 'TypeOrMethodDefTypeDef($value)';
}

final class TypeOrMethodDefMethodDef extends TypeOrMethodDef {
  const TypeOrMethodDefMethodDef(this.value) : super._();

  final MethodDef value;

  @override
  int encode() => ((value.value + 1) << 1) | 1;

  @override
  String toString() => 'TypeOrMethodDefMethodDef($value)';
}
