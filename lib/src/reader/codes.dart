import 'package:meta/meta.dart';

import '../exception.dart';
import '../metadata_type.dart';
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

/// Base class for all coded indices used in metadata tables.
///
/// A coded index is a compressed reference that combines multiple possible
/// table types into a single value, using a tag to distinguish them.
abstract final class CodedIndex {
  const CodedIndex();

  /// Retrieves the [CodedIndexCompanion] associated with the specified [T].
  @internal
  static CodedIndexCompanion<T> companion<T extends CodedIndex>() {
    final companion = _companions[T];
    if (companion == null) throw StateError('No companion found for $T.');
    return companion as CodedIndexCompanion<T>;
  }

  /// Encodes the coded index into its compressed integer representation.
  int encode();
}

@internal
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

/// Represents a coded index into either a [MethodDef] or a [MemberRef].
sealed class CustomAttributeType implements CodedIndex {
  /// Creates a [CustomAttributeType] from a given [Row] instance.
  factory CustomAttributeType(Row value) => switch (value) {
    MethodDef() => CustomAttributeTypeMethodDef(value),
    MemberRef() => CustomAttributeTypeMemberRef(value),
    _ => throw WinmdException('Unsupported value: $value'),
  };

  /// Constructs a [CustomAttributeType] referencing a [MethodDef].
  const factory CustomAttributeType.methodDef(MethodDef value) =
      CustomAttributeTypeMethodDef;

  /// Constructs a [CustomAttributeType] referencing a [MemberRef].
  const factory CustomAttributeType.memberRef(MemberRef value) =
      CustomAttributeTypeMemberRef;

  const CustomAttributeType._();

  /// Decodes a [CustomAttributeType] from a raw coded index.
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

  /// The parent container of this attribute type.
  MemberRefParent get parent;

  /// The method signature associated with this attribute type.
  ///
  /// Optionally, [generics] can be passed to substitute any generic parameters.
  MethodSignature signature([List<MetadataType> generics = const []]);

  /// The name of the method or member referenced by this attribute type.
  String get name;
}

/// A [CustomAttributeType] representing a [MethodDef].
final class CustomAttributeTypeMethodDef extends CustomAttributeType {
  const CustomAttributeTypeMethodDef(this.value) : super._();

  /// The underlying method definition.
  final MethodDef value;

  @override
  int encode() => ((value.position + 1) << 3) | 2;

  @override
  MemberRefParent get parent => value.parent;

  @override
  MethodSignature signature([List<MetadataType> generics = const []]) =>
      value.signature(generics);

  @override
  String get name => value.name;

  @override
  String toString() => 'CustomAttributeTypeMethodDef($value)';
}

/// A [CustomAttributeType] representing a [MemberRef].
final class CustomAttributeTypeMemberRef extends CustomAttributeType {
  const CustomAttributeTypeMemberRef(this.value) : super._();

  /// The underlying member reference.
  final MemberRef value;

  @override
  int encode() => ((value.position + 1) << 3) | 3;

  @override
  MemberRefParent get parent => value.parent;

  @override
  MethodSignature signature([List<MetadataType> generics = const []]) =>
      value.signature(generics);

  @override
  String get name => value.name;

  @override
  String toString() => 'CustomAttributeTypeMemberRef($value)';
}

@internal
final class CustomAttributeTypeCompanion
    extends CodedIndexCompanion<CustomAttributeType> {
  const CustomAttributeTypeCompanion();

  @override
  CustomAttributeType Function(MetadataIndex, int, int) get decode =>
      CustomAttributeType.decode;
}

/// Represents a coded index for entities that can have custom attributes.
sealed class HasCustomAttribute implements CodedIndex {
  /// Creates a [HasCustomAttribute] instance from a [Row].
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

  /// Constructs a [HasCustomAttribute] referencing a [MethodDef].
  const factory HasCustomAttribute.methodDef(MethodDef value) =
      HasCustomAttributeMethodDef;

  /// Constructs a [HasCustomAttribute] referencing a [Field].
  const factory HasCustomAttribute.field(Field value) = HasCustomAttributeField;

  /// Constructs a [HasCustomAttribute] referencing a [TypeRef].
  const factory HasCustomAttribute.typeRef(TypeRef value) =
      HasCustomAttributeTypeRef;

  /// Constructs a [HasCustomAttribute] referencing a [TypeDef].
  const factory HasCustomAttribute.typeDef(TypeDef value) =
      HasCustomAttributeTypeDef;

  /// Constructs a [HasCustomAttribute] referencing a [Param].
  const factory HasCustomAttribute.param(Param value) = HasCustomAttributeParam;

  /// Constructs a [HasCustomAttribute] referencing an [InterfaceImpl].
  const factory HasCustomAttribute.interfaceImpl(InterfaceImpl value) =
      HasCustomAttributeInterfaceImpl;

  /// Constructs a [HasCustomAttribute] referencing a [MemberRef].
  const factory HasCustomAttribute.memberRef(MemberRef value) =
      HasCustomAttributeMemberRef;

  /// Constructs a [HasCustomAttribute] referencing a [Module].
  const factory HasCustomAttribute.module(Module value) =
      HasCustomAttributeModule;

  /// Constructs a [HasCustomAttribute] referencing a [ModuleRef].
  const factory HasCustomAttribute.moduleRef(ModuleRef value) =
      HasCustomAttributeModuleRef;

  /// Constructs a [HasCustomAttribute] referencing a [TypeSpec].
  const factory HasCustomAttribute.typeSpec(TypeSpec value) =
      HasCustomAttributeTypeSpec;

  /// Constructs a [HasCustomAttribute] referencing an [AssemblyRef].
  const factory HasCustomAttribute.assemblyRef(AssemblyRef value) =
      HasCustomAttributeAssemblyRef;

  /// Constructs a [HasCustomAttribute] referencing a [GenericParam].
  const factory HasCustomAttribute.genericParam(GenericParam value) =
      HasCustomAttributeGenericParam;

  const HasCustomAttribute._();

  /// Decodes a [HasCustomAttribute] from a raw coded index.
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

/// A [HasCustomAttribute] representing a [MethodDef].
final class HasCustomAttributeMethodDef extends HasCustomAttribute {
  const HasCustomAttributeMethodDef(this.value) : super._();

  /// The underlying method definition.
  final MethodDef value;

  @override
  int encode() => ((value.position + 1) << 5) | 0;

  @override
  String toString() => 'HasCustomAttributeMethodDef($value)';
}

/// A [HasCustomAttribute] representing a [Field].
final class HasCustomAttributeField extends HasCustomAttribute {
  const HasCustomAttributeField(this.value) : super._();

  /// The underlying field definition.
  final Field value;

  @override
  int encode() => ((value.position + 1) << 5) | 1;

  @override
  String toString() => 'HasCustomAttributeField($value)';
}

/// A [HasCustomAttribute] representing a [TypeRef].
final class HasCustomAttributeTypeRef extends HasCustomAttribute {
  const HasCustomAttributeTypeRef(this.value) : super._();

  /// The underlying type reference.
  final TypeRef value;

  @override
  int encode() => ((value.position + 1) << 5) | 2;

  @override
  String toString() => 'HasCustomAttributeTypeRef($value)';
}

/// A [HasCustomAttribute] representing a [TypeDef].
final class HasCustomAttributeTypeDef extends HasCustomAttribute {
  const HasCustomAttributeTypeDef(this.value) : super._();

  /// The underlying type definition.
  final TypeDef value;

  @override
  int encode() => ((value.position + 1) << 5) | 3;

  @override
  String toString() => 'HasCustomAttributeTypeDef($value)';
}

/// A [HasCustomAttribute] representing a [Param].
final class HasCustomAttributeParam extends HasCustomAttribute {
  const HasCustomAttributeParam(this.value) : super._();

  /// The underlying parameter definition.
  final Param value;

  @override
  int encode() => ((value.position + 1) << 5) | 4;

  @override
  String toString() => 'HasCustomAttributeParam($value)';
}

/// A [HasCustomAttribute] representing an [InterfaceImpl].
final class HasCustomAttributeInterfaceImpl extends HasCustomAttribute {
  const HasCustomAttributeInterfaceImpl(this.value) : super._();

  /// The underlying interface implementation.
  final InterfaceImpl value;

  @override
  int encode() => ((value.position + 1) << 5) | 5;

  @override
  String toString() => 'HasCustomAttributeInterfaceImpl($value)';
}

/// A [HasCustomAttribute] representing a [MemberRef].
final class HasCustomAttributeMemberRef extends HasCustomAttribute {
  const HasCustomAttributeMemberRef(this.value) : super._();

  /// The underlying member reference.
  final MemberRef value;

  @override
  int encode() => ((value.position + 1) << 5) | 6;

  @override
  String toString() => 'HasCustomAttributeMemberRef($value)';
}

/// A [HasCustomAttribute] representing a [Module].
final class HasCustomAttributeModule extends HasCustomAttribute {
  const HasCustomAttributeModule(this.value) : super._();

  /// The underlying module.
  final Module value;

  @override
  int encode() => ((value.position + 1) << 5) | 7;

  @override
  String toString() => 'HasCustomAttributeModule($value)';
}

/// A [HasCustomAttribute] representing a [ModuleRef].
final class HasCustomAttributeModuleRef extends HasCustomAttribute {
  const HasCustomAttributeModuleRef(this.value) : super._();

  /// The underlying module reference.
  final ModuleRef value;

  @override
  int encode() => ((value.position + 1) << 5) | 12;

  @override
  String toString() => 'HasCustomAttributeModuleRef($value)';
}

/// A [HasCustomAttribute] representing a [TypeSpec].
final class HasCustomAttributeTypeSpec extends HasCustomAttribute {
  const HasCustomAttributeTypeSpec(this.value) : super._();

  /// The underlying type specification.
  final TypeSpec value;

  @override
  int encode() => ((value.position + 1) << 5) | 13;

  @override
  String toString() => 'HasCustomAttributeTypeSpec($value)';
}

/// A [HasCustomAttribute] representing an [AssemblyRef].
final class HasCustomAttributeAssemblyRef extends HasCustomAttribute {
  const HasCustomAttributeAssemblyRef(this.value) : super._();

  /// The underlying assembly reference.
  final AssemblyRef value;

  @override
  int encode() => ((value.position + 1) << 5) | 15;

  @override
  String toString() => 'HasCustomAttributeAssemblyRef($value)';
}

/// A [HasCustomAttribute] representing a [GenericParam].
final class HasCustomAttributeGenericParam extends HasCustomAttribute {
  const HasCustomAttributeGenericParam(this.value) : super._();

  /// The underlying generic parameter.
  final GenericParam value;

  @override
  int encode() => ((value.position + 1) << 5) | 19;

  @override
  String toString() => 'HasCustomAttributeGenericParam($value)';
}

@internal
final class HasCustomAttributeCompanion
    extends CodedIndexCompanion<HasCustomAttribute> {
  const HasCustomAttributeCompanion();

  @override
  HasCustomAttribute Function(MetadataIndex, int, int) get decode =>
      HasCustomAttribute.decode;
}

/// Represents a coded index for entities that can have constant values.
sealed class HasConstant implements CodedIndex {
  /// Creates a [HasCustomAttribute] instance from a [Row].
  factory HasConstant(Row value) => switch (value) {
    Field() => HasConstantField(value),
    Param() => HasConstantParam(value),
    _ => throw WinmdException('Unsupported value: $value'),
  };

  /// Constructs a [HasConstant] referencing a [Field].
  const factory HasConstant.field(Field value) = HasConstantField;

  /// Constructs a [HasConstant] referencing a [Param].
  const factory HasConstant.param(Param value) = HasConstantParam;

  const HasConstant._();

  /// Decodes a [HasConstant] from a raw coded index.
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

  /// The name of the underlying field or parameter.
  String get name;
}

/// A [HasConstant] representing a [Field].
final class HasConstantField extends HasConstant {
  const HasConstantField(this.value) : super._();

  /// The underlying field definition.
  final Field value;

  @override
  int encode() => ((value.position + 1) << 2) | 0;

  @override
  String get name => value.name;

  @override
  String toString() => 'HasConstantField($value)';
}

/// A [HasConstant] representing a [Param].
final class HasConstantParam extends HasConstant {
  const HasConstantParam(this.value) : super._();

  /// The underlying parameter definition.
  final Param value;

  @override
  int encode() => ((value.position + 1) << 2) | 1;

  @override
  String get name => value.name;

  @override
  String toString() => 'HasConstantParam($value)';
}

@internal
final class HasConstantCompanion extends CodedIndexCompanion<HasConstant> {
  const HasConstantCompanion();

  @override
  HasConstant Function(MetadataIndex, int, int) get decode =>
      HasConstant.decode;
}

/// Represents a coded index for members that can be forwarded.
sealed class MemberForwarded implements CodedIndex {
  /// Creates a [MemberForwarded] instance from a [Row].
  factory MemberForwarded(Row value) => switch (value) {
    Field() => MemberForwardedField(value),
    MethodDef() => MemberForwardedMethodDef(value),
    _ => throw WinmdException('Unsupported value: $value'),
  };

  /// Constructs a [MemberForwarded] referencing a [Field].
  const factory MemberForwarded.field(Field value) = MemberForwardedField;

  /// Constructs a [MemberForwarded] referencing a [MethodDef].
  const factory MemberForwarded.methodDef(MethodDef value) =
      MemberForwardedMethodDef;

  const MemberForwarded._();

  /// Decodes a [MemberForwarded] from a raw coded index.
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

  /// The name of the underlying field or method.
  String get name;
}

/// A [MemberForwarded] representing a [Field].
final class MemberForwardedField extends MemberForwarded {
  const MemberForwardedField(this.value) : super._();

  /// The underlying field definition.
  final Field value;

  @override
  int encode() => ((value.position + 1) << 1) | 0;

  @override
  String get name => value.name;

  @override
  String toString() => 'MemberForwardedField($value)';
}

/// A [MemberForwarded] representing a [MethodDef].
final class MemberForwardedMethodDef extends MemberForwarded {
  const MemberForwardedMethodDef(this.value) : super._();

  /// The underlying method definition.
  final MethodDef value;

  @override
  int encode() => ((value.position + 1) << 1) | 1;

  @override
  String get name => value.name;

  @override
  String toString() => 'MemberForwardedMethodDef($value)';
}

@internal
final class MemberForwardedCompanion
    extends CodedIndexCompanion<MemberForwarded> {
  const MemberForwardedCompanion();

  @override
  MemberForwarded Function(MetadataIndex, int, int) get decode =>
      MemberForwarded.decode;
}

/// Represents a coded index for either a [TypeDef] or a [TypeRef].
sealed class MemberRefParent implements CodedIndex {
  /// Creates a [MemberRefParent] instance from a [Row].
  factory MemberRefParent(Row value) => switch (value) {
    TypeDef() => MemberRefParentTypeDef(value),
    TypeRef() => MemberRefParentTypeRef(value),
    _ => throw WinmdException('Unsupported value: $value'),
  };

  /// Constructs a [MemberRefParent] referencing a [TypeDef].
  const factory MemberRefParent.typeDef(TypeDef value) = MemberRefParentTypeDef;

  /// Constructs a [MemberRefParent] referencing a [TypeRef].
  const factory MemberRefParent.typeRef(TypeRef value) = MemberRefParentTypeRef;

  const MemberRefParent._();

  /// Decodes a [MemberRefParent] from a raw coded index.
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

  /// The namespace of the underlying type.
  String get namespace;

  /// The name of the underlying type.
  String get name;
}

/// A [MemberRefParent] representing a [TypeDef].
final class MemberRefParentTypeDef extends MemberRefParent {
  const MemberRefParentTypeDef(this.value) : super._();

  /// The underlying type definition.
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

/// A [MemberRefParent] representing a [TypeRef].
final class MemberRefParentTypeRef extends MemberRefParent {
  const MemberRefParentTypeRef(this.value) : super._();

  /// The underlying type reference.
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

@internal
final class MemberRefParentCompanion
    extends CodedIndexCompanion<MemberRefParent> {
  const MemberRefParentCompanion();

  @override
  MemberRefParent Function(MetadataIndex, int, int) get decode =>
      MemberRefParent.decode;
}

/// Represents a coded index for a [Module], [ModuleRef], [AssemblyRef], or
/// [TypeRef].
sealed class ResolutionScope implements CodedIndex {
  /// Creates a [ResolutionScope] instance from a [Row].
  factory ResolutionScope(Row value) => switch (value) {
    Module() => ResolutionScopeModule(value),
    ModuleRef() => ResolutionScopeModuleRef(value),
    AssemblyRef() => ResolutionScopeAssemblyRef(value),
    TypeRef() => ResolutionScopeTypeRef(value),
    _ => throw WinmdException('Unsupported value: $value'),
  };

  /// Constructs a [ResolutionScope] referencing a [Module].
  const factory ResolutionScope.module(Module value) = ResolutionScopeModule;

  /// Constructs a [ResolutionScope] referencing a [ModuleRef].
  const factory ResolutionScope.moduleRef(ModuleRef value) =
      ResolutionScopeModuleRef;

  /// Constructs a [ResolutionScope] referencing an [AssemblyRef].
  const factory ResolutionScope.assemblyRef(AssemblyRef value) =
      ResolutionScopeAssemblyRef;

  /// Constructs a [ResolutionScope] referencing a [TypeRef].
  const factory ResolutionScope.typeRef(TypeRef value) = ResolutionScopeTypeRef;

  const ResolutionScope._();

  /// Decodes a [ResolutionScope] from a raw coded index.
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

/// A [ResolutionScope] representing a [Module].
final class ResolutionScopeModule extends ResolutionScope {
  const ResolutionScopeModule(this.value) : super._();

  /// The underlying module.
  final Module value;

  @override
  int encode() => ((value.position + 1) << 2) | 0;

  @override
  String toString() => 'ResolutionScopeModule($value)';
}

/// A [ResolutionScope] representing a [ModuleRef].
final class ResolutionScopeModuleRef extends ResolutionScope {
  const ResolutionScopeModuleRef(this.value) : super._();

  /// The underlying module reference.
  final ModuleRef value;

  @override
  int encode() => ((value.position + 1) << 2) | 1;

  @override
  String toString() => 'ResolutionScopeModuleRef($value)';
}

/// A [ResolutionScope] representing an [AssemblyRef].
final class ResolutionScopeAssemblyRef extends ResolutionScope {
  const ResolutionScopeAssemblyRef(this.value) : super._();

  /// The underlying assembly reference.
  final AssemblyRef value;

  @override
  int encode() => ((value.position + 1) << 2) | 2;

  @override
  String toString() => 'ResolutionScopeAssemblyRef($value)';
}

/// A [ResolutionScope] representing a [TypeRef].
final class ResolutionScopeTypeRef extends ResolutionScope {
  const ResolutionScopeTypeRef(this.value) : super._();

  /// The underlying type reference.
  final TypeRef value;

  @override
  int encode() => ((value.position + 1) << 2) | 3;

  @override
  String toString() => 'ResolutionScopeTypeRef($value)';
}

@internal
final class ResolutionScopeCompanion
    extends CodedIndexCompanion<ResolutionScope> {
  const ResolutionScopeCompanion();

  @override
  ResolutionScope Function(MetadataIndex, int, int) get decode =>
      ResolutionScope.decode;
}

/// Represents a coded index for either a [TypeDef], [TypeRef], or [TypeSpec].
sealed class TypeDefOrRef implements CodedIndex {
  /// Creates a [TypeDefOrRef] instance from a [Row].
  factory TypeDefOrRef(Row value) => switch (value) {
    TypeDef() => TypeDefOrRefTypeDef(value),
    TypeRef() => TypeDefOrRefTypeRef(value),
    TypeSpec() => TypeDefOrRefTypeSpec(value),
    _ => throw WinmdException('Unsupported value: $value'),
  };

  /// Constructs a [TypeDefOrRef] referencing a [TypeDef].
  const factory TypeDefOrRef.typeDef(TypeDef value) = TypeDefOrRefTypeDef;

  /// Constructs a [TypeDefOrRef] referencing a [TypeRef].
  const factory TypeDefOrRef.typeRef(TypeRef value) = TypeDefOrRefTypeRef;

  /// Constructs a [TypeDefOrRef] referencing a [TypeSpec].
  const factory TypeDefOrRef.typeSpec(TypeSpec value) = TypeDefOrRefTypeSpec;

  const TypeDefOrRef._();

  /// Decodes a [TypeDefOrRef] from a raw coded index.
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

  /// The namespace of the underlying type.
  String get namespace;

  /// The name of the underlying type.
  String get name;

  /// The metadata type that corresponds to the underlying type.
  ///
  /// Optionally, [generics] can be passed to substitute any generic parameters.
  MetadataType type([List<MetadataType> generics = const []]);
}

/// A [TypeDefOrRef] representing a [TypeDef].
final class TypeDefOrRefTypeDef extends TypeDefOrRef {
  const TypeDefOrRefTypeDef(this.value) : super._();

  /// The underlying type definition.
  final TypeDef value;

  @override
  int encode() => ((value.position + 1) << 2) | 0;

  @override
  String get namespace => value.namespace;

  @override
  String get name => value.name;

  @override
  MetadataType type([List<MetadataType> generics = const []]) =>
      MetadataType.named(namespace, name);

  @override
  String toString() => 'TypeDefOrRefTypeDef($value)';
}

/// A [TypeDefOrRef] representing a [TypeRef].
final class TypeDefOrRefTypeRef extends TypeDefOrRef {
  const TypeDefOrRefTypeRef(this.value) : super._();

  /// The underlying type reference.
  final TypeRef value;

  @override
  int encode() => ((value.position + 1) << 2) | 1;

  @override
  String get namespace => value.namespace;

  @override
  String get name => value.name;

  @override
  MetadataType type([List<MetadataType> generics = const []]) =>
      MetadataType.named(namespace, name);

  @override
  String toString() => 'TypeDefOrRefTypeRef($value)';
}

/// A [TypeDefOrRef] representing a [TypeSpec].
final class TypeDefOrRefTypeSpec extends TypeDefOrRef {
  const TypeDefOrRefTypeSpec(this.value) : super._();

  /// The underlying type specification.
  final TypeSpec value;

  @override
  int encode() => ((value.position + 1) << 2) | 2;

  @override
  String get namespace =>
      throw UnsupportedError('TypeSpec does not have a namespace.');

  @override
  String get name => throw UnsupportedError('TypeSpec does not have a name.');

  @override
  MetadataType type([List<MetadataType> generics = const []]) =>
      value.type(generics);

  @override
  String toString() => 'TypeDefOrRefTypeSpec($value)';
}

@internal
final class TypeDefOrRefCompanion extends CodedIndexCompanion<TypeDefOrRef> {
  const TypeDefOrRefCompanion();

  @override
  TypeDefOrRef Function(MetadataIndex, int, int) get decode =>
      TypeDefOrRef.decode;
}

/// Represents a coded index for either a [TypeDef] or a [MethodDef].
sealed class TypeOrMethodDef implements CodedIndex {
  /// Creates a [TypeOrMethodDef] instance from a [Row].
  factory TypeOrMethodDef(Row value) => switch (value) {
    TypeDef() => TypeOrMethodDefTypeDef(value),
    MethodDef() => TypeOrMethodDefMethodDef(value),
    _ => throw WinmdException('Unsupported value: $value'),
  };

  /// Constructs a [TypeOrMethodDef] referencing a [TypeDef].
  const factory TypeOrMethodDef.typeDef(TypeDef value) = TypeOrMethodDefTypeDef;

  /// Constructs a [TypeOrMethodDef] referencing a [MethodDef].
  const factory TypeOrMethodDef.methodDef(MethodDef value) =
      TypeOrMethodDefMethodDef;

  const TypeOrMethodDef._();

  /// Decodes a [TypeOrMethodDef] from a raw coded index.
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

  /// The name of the underlying type or method definition.
  String get name;
}

/// A [TypeOrMethodDef] representing a [TypeDef].
final class TypeOrMethodDefTypeDef extends TypeOrMethodDef {
  const TypeOrMethodDefTypeDef(this.value) : super._();

  /// The underlying type definition.
  final TypeDef value;

  @override
  int encode() => ((value.position + 1) << 1) | 0;

  @override
  String get name => value.name;

  @override
  String toString() => 'TypeOrMethodDefTypeDef($value)';
}

/// A [TypeOrMethodDef] representing a [MethodDef].
final class TypeOrMethodDefMethodDef extends TypeOrMethodDef {
  const TypeOrMethodDefMethodDef(this.value) : super._();

  /// The underlying method definition.
  final MethodDef value;

  @override
  int encode() => ((value.position + 1) << 1) | 1;

  @override
  String get name => value.name;

  @override
  String toString() => 'TypeOrMethodDefMethodDef($value)';
}

@internal
final class TypeOrMethodDefCompanion
    extends CodedIndexCompanion<TypeOrMethodDef> {
  const TypeOrMethodDefCompanion();

  @override
  TypeOrMethodDef Function(MetadataIndex, int, int) get decode =>
      TypeOrMethodDef.decode;
}
