import '../exception.dart';
import '../metadata_type.dart' as t;
import '../method_signature.dart';
import 'metadata_index.dart';
import 'row.dart';
import 'table/assembly_ref.dart';
import 'table/field.dart';
import 'table/generic_param.dart';
import 'table/interface_impl.dart';
import 'table/member_ref.dart';
import 'table/method_def.dart';
import 'table/module.dart';
import 'table/module_ref.dart';
import 'table/param.dart';
import 'table/type_def.dart';
import 'table/type_ref.dart';
import 'table/type_spec.dart';

abstract final class CodedIndex {
  const CodedIndex();

  static CodedIndexCompanion<T> companion<T extends CodedIndex>() {
    final companion = _companions[T];
    if (companion == null) throw StateError('No companion found for $T.');
    return companion as CodedIndexCompanion<T>;
  }

  /// Encodes the attribute back to an integer.
  int encode();
}

abstract final class CodedIndexCompanion<T extends CodedIndex> {
  const CodedIndexCompanion();

  T Function(MetadataIndex metadataIndex, int readerIndex, int code) get decode;
}

const _companions = <Type, CodedIndexCompanion>{
  CustomAttributeType: CustomAttributeTypeCompanion(),
  HasCustomAttribute: HasCustomAttributeCompanion(),
  HasConstant: HasConstantCompanion(),
  MemberForwarded: MemberForwardedCompanion(),
  MemberRefParent: MemberRefParentCompanion(),
  ResolutionScope: ResolutionScopeCompanion(),
  TypeDefOrRef: TypeDefOrRefCompanion(),
  TypeOrMethodDef: TypeOrMethodDefCompanion(),
};

sealed class CustomAttributeType implements CodedIndex {
  factory CustomAttributeType(Row value) => switch (value) {
    MethodDef() => CustomAttributeTypeMethodDef(value),
    MemberRef() => CustomAttributeTypeMemberRef(value),
    _ => throw WinmdException('Unsupported value: $value'),
  };

  const factory CustomAttributeType.methodDef(MethodDef value) =
      CustomAttributeTypeMethodDef;

  const factory CustomAttributeType.memberRef(MemberRef value) =
      CustomAttributeTypeMemberRef;

  const CustomAttributeType._();

  static CustomAttributeType decode(
    MetadataIndex metadataIndex,
    int readerIndex,
    int code,
  ) {
    final kind = code & ((1 << 3) - 1);
    final row = (code >> 3) - 1;
    return switch (kind) {
      2 => CustomAttributeTypeMethodDef(
        MethodDef(metadataIndex, readerIndex, row),
      ),
      3 => CustomAttributeTypeMemberRef(
        MemberRef(metadataIndex, readerIndex, row),
      ),
      _ => throw WinmdException('Unknown kind: $kind'),
    };
  }

  MemberRefParent get parent;

  MethodSignature signature([List<t.MetadataType> generics = const []]);

  String get name;
}

final class CustomAttributeTypeMethodDef extends CustomAttributeType {
  const CustomAttributeTypeMethodDef(this.value) : super._();

  final MethodDef value;

  @override
  int encode() => ((value.position + 1) << 3) | 2;

  @override
  MemberRefParent get parent => value.parent;

  @override
  MethodSignature signature([List<t.MetadataType> generics = const []]) =>
      value.signature(generics);

  @override
  String get name => value.name;

  @override
  String toString() => 'CustomAttributeTypeMethodDef($value)';
}

final class CustomAttributeTypeMemberRef extends CustomAttributeType {
  const CustomAttributeTypeMemberRef(this.value) : super._();

  final MemberRef value;

  @override
  int encode() => ((value.position + 1) << 3) | 3;

  @override
  MemberRefParent get parent => value.parent;

  @override
  MethodSignature signature([List<t.MetadataType> generics = const []]) =>
      value.signature(generics);

  @override
  String get name => value.name;

  @override
  String toString() => 'CustomAttributeTypeMemberRef($value)';
}

final class CustomAttributeTypeCompanion
    extends CodedIndexCompanion<CustomAttributeType> {
  const CustomAttributeTypeCompanion();

  @override
  CustomAttributeType Function(MetadataIndex, int, int) get decode =>
      CustomAttributeType.decode;
}

sealed class HasCustomAttribute implements CodedIndex {
  factory HasCustomAttribute(Row value) => switch (value) {
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

  /// Decodes a value from the provided code.
  factory HasCustomAttribute.decode(
    MetadataIndex metadataIndex,
    int readerIndex,
    int code,
  ) {
    final kind = code & ((1 << 5) - 1);
    final row = (code >> 5) - 1;
    return switch (kind) {
      0 => HasCustomAttributeMethodDef(
        MethodDef(metadataIndex, readerIndex, row),
      ),
      1 => HasCustomAttributeField(Field(metadataIndex, readerIndex, row)),
      2 => HasCustomAttributeTypeRef(TypeRef(metadataIndex, readerIndex, row)),
      3 => HasCustomAttributeTypeDef(TypeDef(metadataIndex, readerIndex, row)),
      4 => HasCustomAttributeParam(Param(metadataIndex, readerIndex, row)),
      5 => HasCustomAttributeInterfaceImpl(
        InterfaceImpl(metadataIndex, readerIndex, row),
      ),
      6 => HasCustomAttributeMemberRef(
        MemberRef(metadataIndex, readerIndex, row),
      ),
      7 => HasCustomAttributeModule(Module(metadataIndex, readerIndex, row)),
      12 => HasCustomAttributeModuleRef(
        ModuleRef(metadataIndex, readerIndex, row),
      ),
      13 => HasCustomAttributeTypeSpec(
        TypeSpec(metadataIndex, readerIndex, row),
      ),
      15 => HasCustomAttributeAssemblyRef(
        AssemblyRef(metadataIndex, readerIndex, row),
      ),
      19 => HasCustomAttributeGenericParam(
        GenericParam(metadataIndex, readerIndex, row),
      ),
      _ => throw WinmdException('Unknown kind: $kind'),
    };
  }
}

final class HasCustomAttributeMethodDef extends HasCustomAttribute {
  const HasCustomAttributeMethodDef(this.value) : super._();

  final MethodDef value;

  @override
  int encode() => ((value.position + 1) << 5) | 0;

  @override
  String toString() => 'HasCustomAttributeMethodDef($value)';
}

final class HasCustomAttributeField extends HasCustomAttribute {
  const HasCustomAttributeField(this.value) : super._();

  final Field value;

  @override
  int encode() => ((value.position + 1) << 5) | 1;

  @override
  String toString() => 'HasCustomAttributeField($value)';
}

final class HasCustomAttributeTypeRef extends HasCustomAttribute {
  const HasCustomAttributeTypeRef(this.value) : super._();

  final TypeRef value;

  @override
  int encode() => ((value.position + 1) << 5) | 2;

  @override
  String toString() => 'HasCustomAttributeTypeRef($value)';
}

final class HasCustomAttributeTypeDef extends HasCustomAttribute {
  const HasCustomAttributeTypeDef(this.value) : super._();

  final TypeDef value;

  @override
  int encode() => ((value.position + 1) << 5) | 3;

  @override
  String toString() => 'HasCustomAttributeTypeDef($value)';
}

final class HasCustomAttributeParam extends HasCustomAttribute {
  const HasCustomAttributeParam(this.value) : super._();

  final Param value;

  @override
  int encode() => ((value.position + 1) << 5) | 4;

  @override
  String toString() => 'HasCustomAttributeParam($value)';
}

final class HasCustomAttributeInterfaceImpl extends HasCustomAttribute {
  const HasCustomAttributeInterfaceImpl(this.value) : super._();

  final InterfaceImpl value;

  @override
  int encode() => ((value.position + 1) << 5) | 5;

  @override
  String toString() => 'HasCustomAttributeInterfaceImpl($value)';
}

final class HasCustomAttributeMemberRef extends HasCustomAttribute {
  const HasCustomAttributeMemberRef(this.value) : super._();

  final MemberRef value;

  @override
  int encode() => ((value.position + 1) << 5) | 6;

  @override
  String toString() => 'HasCustomAttributeMemberRef($value)';
}

final class HasCustomAttributeModule extends HasCustomAttribute {
  const HasCustomAttributeModule(this.value) : super._();

  final Module value;

  @override
  int encode() => ((value.position + 1) << 5) | 7;

  @override
  String toString() => 'HasCustomAttributeModule($value)';
}

final class HasCustomAttributeModuleRef extends HasCustomAttribute {
  const HasCustomAttributeModuleRef(this.value) : super._();

  final ModuleRef value;

  @override
  int encode() => ((value.position + 1) << 5) | 12;

  @override
  String toString() => 'HasCustomAttributeModuleRef($value)';
}

final class HasCustomAttributeTypeSpec extends HasCustomAttribute {
  const HasCustomAttributeTypeSpec(this.value) : super._();

  final TypeSpec value;

  @override
  int encode() => ((value.position + 1) << 5) | 13;

  @override
  String toString() => 'HasCustomAttributeTypeSpec($value)';
}

final class HasCustomAttributeAssemblyRef extends HasCustomAttribute {
  const HasCustomAttributeAssemblyRef(this.value) : super._();

  final AssemblyRef value;

  @override
  int encode() => ((value.position + 1) << 5) | 15;

  @override
  String toString() => 'HasCustomAttributeAssemblyRef($value)';
}

final class HasCustomAttributeGenericParam extends HasCustomAttribute {
  const HasCustomAttributeGenericParam(this.value) : super._();

  final GenericParam value;

  @override
  int encode() => ((value.position + 1) << 5) | 19;

  @override
  String toString() => 'HasCustomAttributeGenericParam($value)';
}

final class HasCustomAttributeCompanion
    extends CodedIndexCompanion<HasCustomAttribute> {
  const HasCustomAttributeCompanion();

  @override
  HasCustomAttribute Function(MetadataIndex, int, int) get decode =>
      HasCustomAttribute.decode;
}

sealed class HasConstant implements CodedIndex {
  factory HasConstant(Row value) => switch (value) {
    Field() => HasConstantField(value),
    Param() => HasConstantParam(value),
    _ => throw WinmdException('Unsupported value: $value'),
  };

  const factory HasConstant.field(Field value) = HasConstantField;

  const factory HasConstant.param(Param value) = HasConstantParam;

  const HasConstant._();

  /// Decodes a value from the provided code.
  static HasConstant decode(
    MetadataIndex metadataIndex,
    int readerIndex,
    int code,
  ) {
    final kind = code & ((1 << 2) - 1);
    final row = (code >> 2) - 1;
    return switch (kind) {
      0 => HasConstantField(Field(metadataIndex, readerIndex, row)),
      1 => HasConstantParam(Param(metadataIndex, readerIndex, row)),
      _ => throw WinmdException('Unknown kind: $kind'),
    };
  }

  String get name;
}

final class HasConstantField extends HasConstant {
  const HasConstantField(this.value) : super._();

  final Field value;

  @override
  int encode() => ((value.position + 1) << 2) | 0;

  @override
  String get name => value.name;

  @override
  String toString() => 'HasConstantField($value)';
}

final class HasConstantParam extends HasConstant {
  const HasConstantParam(this.value) : super._();

  final Param value;

  @override
  int encode() => ((value.position + 1) << 2) | 1;

  @override
  String get name => value.name;

  @override
  String toString() => 'HasConstantParam($value)';
}

final class HasConstantCompanion extends CodedIndexCompanion<HasConstant> {
  const HasConstantCompanion();

  @override
  HasConstant Function(MetadataIndex, int, int) get decode =>
      HasConstant.decode;
}

sealed class MemberForwarded implements CodedIndex {
  factory MemberForwarded(Row value) => switch (value) {
    Field() => MemberForwardedField(value),
    MethodDef() => MemberForwardedMethodDef(value),
    _ => throw WinmdException('Unsupported value: $value'),
  };

  const factory MemberForwarded.field(Field value) = MemberForwardedField;

  const factory MemberForwarded.methodDef(MethodDef value) =
      MemberForwardedMethodDef;

  const MemberForwarded._();

  /// Decodes a value from the provided code.
  static MemberForwarded decode(
    MetadataIndex metadataIndex,
    int readerIndex,
    int code,
  ) {
    final kind = code & ((1 << 1) - 1);
    final row = (code >> 1) - 1;
    return switch (kind) {
      0 => MemberForwardedField(Field(metadataIndex, readerIndex, row)),
      1 => MemberForwardedMethodDef(MethodDef(metadataIndex, readerIndex, row)),
      _ => throw WinmdException('Unknown kind: $kind'),
    };
  }

  String get name;
}

final class MemberForwardedField extends MemberForwarded {
  const MemberForwardedField(this.value) : super._();

  final Field value;

  @override
  int encode() => ((value.position + 1) << 1) | 0;

  @override
  String get name => value.name;

  @override
  String toString() => 'MemberForwardedField($value)';
}

final class MemberForwardedMethodDef extends MemberForwarded {
  const MemberForwardedMethodDef(this.value) : super._();

  final MethodDef value;

  @override
  int encode() => ((value.position + 1) << 1) | 1;

  @override
  String get name => value.name;

  @override
  String toString() => 'MemberForwardedMethodDef($value)';
}

final class MemberForwardedCompanion
    extends CodedIndexCompanion<MemberForwarded> {
  const MemberForwardedCompanion();

  @override
  MemberForwarded Function(MetadataIndex, int, int) get decode =>
      MemberForwarded.decode;
}

sealed class MemberRefParent implements CodedIndex {
  factory MemberRefParent(Row value) => switch (value) {
    TypeDef() => MemberRefParentTypeDef(value),
    TypeRef() => MemberRefParentTypeRef(value),
    _ => throw WinmdException('Unsupported value: $value'),
  };

  const factory MemberRefParent.typeDef(TypeDef value) = MemberRefParentTypeDef;

  const factory MemberRefParent.typeRef(TypeRef value) = MemberRefParentTypeRef;

  const MemberRefParent._();

  /// Decodes a value from the provided code.
  static MemberRefParent decode(
    MetadataIndex metadataIndex,
    int readerIndex,
    int code,
  ) {
    final kind = code & ((1 << 3) - 1);
    final row = (code >> 3) - 1;
    return switch (kind) {
      0 => MemberRefParentTypeDef(TypeDef(metadataIndex, readerIndex, row)),
      1 => MemberRefParentTypeRef(TypeRef(metadataIndex, readerIndex, row)),
      _ => throw WinmdException('Unknown kind: $kind'),
    };
  }

  String get namespace;

  String get name;
}

final class MemberRefParentTypeDef extends MemberRefParent {
  const MemberRefParentTypeDef(this.value) : super._();

  final TypeDef value;

  @override
  int encode() => ((value.position + 1) << 3) | 0;

  @override
  String get namespace => value.namespace;

  @override
  String get name => value.name;

  @override
  String toString() => 'MemberRefParentTypeDef($value)';
}

final class MemberRefParentTypeRef extends MemberRefParent {
  const MemberRefParentTypeRef(this.value) : super._();

  final TypeRef value;

  @override
  int encode() => ((value.position + 1) << 3) | 1;

  @override
  String get namespace => value.namespace;

  @override
  String get name => value.name;

  @override
  String toString() => 'MemberRefParentTypeRef($value)';
}

final class MemberRefParentCompanion
    extends CodedIndexCompanion<MemberRefParent> {
  const MemberRefParentCompanion();

  @override
  MemberRefParent Function(MetadataIndex, int, int) get decode =>
      MemberRefParent.decode;
}

sealed class ResolutionScope implements CodedIndex {
  factory ResolutionScope(Row value) => switch (value) {
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

  static ResolutionScope decode(
    MetadataIndex metadataIndex,
    int readerIndex,
    int code,
  ) {
    final kind = code & ((1 << 2) - 1);
    final row = (code >> 2) - 1;
    return switch (kind) {
      0 => ResolutionScopeModule(Module(metadataIndex, readerIndex, row)),
      1 => ResolutionScopeModuleRef(ModuleRef(metadataIndex, readerIndex, row)),
      2 => ResolutionScopeAssemblyRef(
        AssemblyRef(metadataIndex, readerIndex, row),
      ),
      3 => ResolutionScopeTypeRef(TypeRef(metadataIndex, readerIndex, row)),
      _ => throw WinmdException('Unknown kind: $kind'),
    };
  }
}

final class ResolutionScopeModule extends ResolutionScope {
  const ResolutionScopeModule(this.value) : super._();

  final Module value;

  @override
  int encode() => ((value.position + 1) << 2) | 0;

  @override
  String toString() => 'ResolutionScopeModule($value)';
}

final class ResolutionScopeModuleRef extends ResolutionScope {
  const ResolutionScopeModuleRef(this.value) : super._();

  final ModuleRef value;

  @override
  int encode() => ((value.position + 1) << 2) | 1;

  @override
  String toString() => 'ResolutionScopeModuleRef($value)';
}

final class ResolutionScopeAssemblyRef extends ResolutionScope {
  const ResolutionScopeAssemblyRef(this.value) : super._();

  final AssemblyRef value;

  @override
  int encode() => ((value.position + 1) << 2) | 2;

  @override
  String toString() => 'ResolutionScopeAssemblyRef($value)';
}

final class ResolutionScopeTypeRef extends ResolutionScope {
  const ResolutionScopeTypeRef(this.value) : super._();

  final TypeRef value;

  @override
  int encode() => ((value.position + 1) << 2) | 3;

  @override
  String toString() => 'ResolutionScopeTypeRef($value)';
}

final class ResolutionScopeCompanion
    extends CodedIndexCompanion<ResolutionScope> {
  const ResolutionScopeCompanion();

  @override
  ResolutionScope Function(MetadataIndex, int, int) get decode =>
      ResolutionScope.decode;
}

sealed class TypeDefOrRef implements CodedIndex {
  factory TypeDefOrRef(Row value) => switch (value) {
    TypeDef() => TypeDefOrRefTypeDef(value),
    TypeRef() => TypeDefOrRefTypeRef(value),
    TypeSpec() => TypeDefOrRefTypeSpec(value),
    _ => throw WinmdException('Unsupported value: $value'),
  };

  const factory TypeDefOrRef.typeDef(TypeDef value) = TypeDefOrRefTypeDef;

  const factory TypeDefOrRef.typeRef(TypeRef value) = TypeDefOrRefTypeRef;

  const factory TypeDefOrRef.typeSpec(TypeSpec value) = TypeDefOrRefTypeSpec;

  const TypeDefOrRef._();

  static TypeDefOrRef decode(
    MetadataIndex metadataIndex,
    int readerIndex,
    int code,
  ) {
    final kind = code & ((1 << 2) - 1);
    final row = (code >> 2) - 1;
    return switch (kind) {
      0 => TypeDefOrRefTypeDef(TypeDef(metadataIndex, readerIndex, row)),
      1 => TypeDefOrRefTypeRef(TypeRef(metadataIndex, readerIndex, row)),
      2 => TypeDefOrRefTypeSpec(TypeSpec(metadataIndex, readerIndex, row)),
      _ => throw WinmdException('Unknown kind: $kind'),
    };
  }

  String get namespace;

  String get name;

  t.MetadataType type([List<t.MetadataType> generics = const []]);
}

final class TypeDefOrRefTypeDef extends TypeDefOrRef {
  const TypeDefOrRefTypeDef(this.value) : super._();

  final TypeDef value;

  @override
  int encode() => ((value.position + 1) << 2) | 0;

  @override
  String get namespace => value.namespace;

  @override
  String get name => value.name;

  @override
  t.MetadataType type([List<t.MetadataType> generics = const []]) =>
      t.MetadataType.named(namespace, name);

  @override
  String toString() => 'TypeDefOrRefTypeDef($value)';
}

final class TypeDefOrRefTypeRef extends TypeDefOrRef {
  const TypeDefOrRefTypeRef(this.value) : super._();

  final TypeRef value;

  @override
  int encode() => ((value.position + 1) << 2) | 1;

  @override
  String get namespace => value.namespace;

  @override
  String get name => value.name;

  @override
  t.MetadataType type([List<t.MetadataType> generics = const []]) =>
      t.MetadataType.named(namespace, name);

  @override
  String toString() => 'TypeDefOrRefTypeRef($value)';
}

final class TypeDefOrRefTypeSpec extends TypeDefOrRef {
  const TypeDefOrRefTypeSpec(this.value) : super._();

  final TypeSpec value;

  @override
  int encode() => ((value.position + 1) << 2) | 2;

  @override
  String get namespace =>
      throw UnsupportedError('TypeSpec does not have a namespace.');

  @override
  String get name => throw UnsupportedError('TypeSpec does not have a name.');

  @override
  t.MetadataType type([List<t.MetadataType> generics = const []]) =>
      value.type(generics);

  @override
  String toString() => 'TypeDefOrRefTypeSpec($value)';
}

final class TypeDefOrRefCompanion extends CodedIndexCompanion<TypeDefOrRef> {
  const TypeDefOrRefCompanion();

  @override
  TypeDefOrRef Function(MetadataIndex, int, int) get decode =>
      TypeDefOrRef.decode;
}

sealed class TypeOrMethodDef implements CodedIndex {
  factory TypeOrMethodDef(Row value) => switch (value) {
    TypeDef() => TypeOrMethodDefTypeDef(value),
    MethodDef() => TypeOrMethodDefMethodDef(value),
    _ => throw WinmdException('Unsupported value: $value'),
  };

  const factory TypeOrMethodDef.typeDef(TypeDef value) = TypeOrMethodDefTypeDef;

  const factory TypeOrMethodDef.methodDef(MethodDef value) =
      TypeOrMethodDefMethodDef;

  const TypeOrMethodDef._();

  static TypeOrMethodDef decode(
    MetadataIndex metadataIndex,
    int readerIndex,
    int code,
  ) {
    final kind = code & ((1 << 1) - 1);
    final row = (code >> 1) - 1;
    return switch (kind) {
      0 => TypeOrMethodDefTypeDef(TypeDef(metadataIndex, readerIndex, row)),
      1 => TypeOrMethodDefMethodDef(MethodDef(metadataIndex, readerIndex, row)),
      _ => throw WinmdException('Unknown kind: $kind'),
    };
  }

  String get name;
}

final class TypeOrMethodDefTypeDef extends TypeOrMethodDef {
  const TypeOrMethodDefTypeDef(this.value) : super._();

  final TypeDef value;

  @override
  int encode() => ((value.position + 1) << 1) | 0;

  @override
  String get name => value.name;

  @override
  String toString() => 'TypeOrMethodDefTypeDef($value)';
}

final class TypeOrMethodDefMethodDef extends TypeOrMethodDef {
  const TypeOrMethodDefMethodDef(this.value) : super._();

  final MethodDef value;

  @override
  int encode() => ((value.position + 1) << 1) | 1;

  @override
  String get name => value.name;

  @override
  String toString() => 'TypeOrMethodDefMethodDef($value)';
}

final class TypeOrMethodDefCompanion
    extends CodedIndexCompanion<TypeOrMethodDef> {
  const TypeOrMethodDefCompanion();

  @override
  TypeOrMethodDef Function(MetadataIndex, int, int) get decode =>
      TypeOrMethodDef.decode;
}
