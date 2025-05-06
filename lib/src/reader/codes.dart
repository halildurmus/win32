import 'package:meta/meta.dart';

import '../exception.dart';
import '../metadata_type.dart';
import '../method_signature.dart';
import 'metadata_index.dart';
import 'row.dart';
import 'table/assembly.dart';
import 'table/assembly_ref.dart';
import 'table/event.dart';
import 'table/exported_type.dart';
import 'table/field.dart';
import 'table/file.dart';
import 'table/generic_param.dart';
import 'table/generic_param_constraint.dart';
import 'table/interface_impl.dart';
import 'table/manifest_resource.dart';
import 'table/member_ref.dart';
import 'table/method_def.dart';
import 'table/method_spec.dart';
import 'table/module.dart';
import 'table/module_ref.dart';
import 'table/param.dart';
import 'table/property.dart';
import 'table/stand_alone_sig.dart';
import 'table/type_def.dart';
import 'table/type_ref.dart';
import 'table/type_spec.dart';

/// Base class for all coded indices used in metadata tables.
///
/// A coded index is a compressed reference that combines multiple possible
/// table types into a single value, using a tag to distinguish them.
sealed class CodedIndex {
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
  HasConstant: HasConstantCompanion(),
  HasCustomAttribute: HasCustomAttributeCompanion(),
  HasDeclSecurity: HasDeclSecurityCompanion(),
  HasFieldMarshal: HasFieldMarshalCompanion(),
  HasSemantics: HasSemanticsCompanion(),
  Implementation: ImplementationCompanion(),
  MemberForwarded: MemberForwardedCompanion(),
  MemberRefParent: MemberRefParentCompanion(),
  MethodDefOrRef: MethodDefOrRefCompanion(),
  ResolutionScope: ResolutionScopeCompanion(),
  TypeDefOrRef: TypeDefOrRefCompanion(),
  TypeOrMethodDef: TypeOrMethodDefCompanion(),
};

/// Represents a coded index into either a [MethodDef] or a [MemberRef].
sealed class CustomAttributeType implements CodedIndex {
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
  int encode() => ((value.index + 1) << 3) | 2;

  @override
  MemberRefParent get parent => MemberRefParent.typeDef(value.parent);

  @override
  MethodSignature signature([List<MetadataType> generics = const []]) =>
      value.signature(generics);

  @override
  String get name => value.name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomAttributeTypeMethodDef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [CustomAttributeType] representing a [MemberRef].
final class CustomAttributeTypeMemberRef extends CustomAttributeType {
  const CustomAttributeTypeMemberRef(this.value) : super._();

  /// The underlying member reference.
  final MemberRef value;

  @override
  int encode() => ((value.index + 1) << 3) | 3;

  @override
  MemberRefParent get parent => value.parent;

  @override
  MethodSignature signature([List<MetadataType> generics = const []]) =>
      value.signature(generics);

  @override
  String get name => value.name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomAttributeTypeMemberRef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

@internal
final class CustomAttributeTypeCompanion
    extends CodedIndexCompanion<CustomAttributeType> {
  const CustomAttributeTypeCompanion();

  @override
  CustomAttributeType Function(MetadataIndex, int, int) get decode =>
      CustomAttributeType.decode;
}

/// Represents a coded index for entities that can have constant values.
sealed class HasConstant implements CodedIndex {
  /// Constructs a [HasConstant] referencing a [Field].
  const factory HasConstant.field(Field value) = HasConstantField;

  /// Constructs a [HasConstant] referencing a [Param].
  const factory HasConstant.param(Param value) = HasConstantParam;

  /// Constructs a [HasConstant] referencing a [Property].
  const factory HasConstant.property(Property value) = HasConstantProperty;

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
      2 => HasConstantProperty(Property(metadataIndex, readerIndex, row)),
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
  int encode() => ((value.index + 1) << 2) | 0;

  @override
  String get name => value.name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasConstantField && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasConstant] representing a [Param].
final class HasConstantParam extends HasConstant {
  const HasConstantParam(this.value) : super._();

  /// The underlying parameter definition.
  final Param value;

  @override
  int encode() => ((value.index + 1) << 2) | 1;

  @override
  String get name => value.name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasConstantParam && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [HasConstant] representing a [Property].
final class HasConstantProperty extends HasConstant {
  const HasConstantProperty(this.value) : super._();

  /// The underlying property definition.
  final Property value;

  @override
  int encode() => ((value.index + 1) << 2) | 2;

  @override
  String get name => value.name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasConstantProperty && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

@internal
final class HasConstantCompanion extends CodedIndexCompanion<HasConstant> {
  const HasConstantCompanion();

  @override
  HasConstant Function(MetadataIndex, int, int) get decode =>
      HasConstant.decode;
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
    Property() => HasCustomAttributeProperty(value),
    Event() => HasCustomAttributeEvent(value),
    StandAloneSig() => HasCustomAttributeStandaloneSig(value),
    ModuleRef() => HasCustomAttributeModuleRef(value),
    TypeSpec() => HasCustomAttributeTypeSpec(value),
    Assembly() => HasCustomAttributeAssembly(value),
    AssemblyRef() => HasCustomAttributeAssemblyRef(value),
    File() => HasCustomAttributeFile(value),
    ExportedType() => HasCustomAttributeExportedType(value),
    GenericParam() => HasCustomAttributeGenericParam(value),
    GenericParamConstraint() => HasCustomAttributeGenericParamConstraint(value),
    MethodSpec() => HasCustomAttributeMethodSpec(value),
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

  /// Constructs a [HasCustomAttribute] referencing a [Property].
  const factory HasCustomAttribute.property(Property value) =
      HasCustomAttributeProperty;

  /// Constructs a [HasCustomAttribute] referencing an [Event].
  const factory HasCustomAttribute.event(Event value) = HasCustomAttributeEvent;

  /// Constructs a [HasCustomAttribute] referencing a [StandAloneSig].
  const factory HasCustomAttribute.standAloneSig(StandAloneSig value) =
      HasCustomAttributeStandaloneSig;

  /// Constructs a [HasCustomAttribute] referencing a [ModuleRef].
  const factory HasCustomAttribute.moduleRef(ModuleRef value) =
      HasCustomAttributeModuleRef;

  /// Constructs a [HasCustomAttribute] referencing a [TypeSpec].
  const factory HasCustomAttribute.typeSpec(TypeSpec value) =
      HasCustomAttributeTypeSpec;

  /// Constructs a [HasCustomAttribute] referencing an [Assembly].
  const factory HasCustomAttribute.assembly(Assembly value) =
      HasCustomAttributeAssembly;

  /// Constructs a [HasCustomAttribute] referencing an [AssemblyRef].
  const factory HasCustomAttribute.assemblyRef(AssemblyRef value) =
      HasCustomAttributeAssemblyRef;

  /// Constructs a [HasCustomAttribute] referencing an [File].
  const factory HasCustomAttribute.file(File value) = HasCustomAttributeFile;

  /// Constructs a [HasCustomAttribute] referencing an [ExportedType].
  const factory HasCustomAttribute.exportedType(ExportedType value) =
      HasCustomAttributeExportedType;

  /// Constructs a [HasCustomAttribute] referencing a [ManifestResource].
  const factory HasCustomAttribute.manifestResource(ManifestResource value) =
      HasCustomAttributeManifestResource;

  /// Constructs a [HasCustomAttribute] referencing a [GenericParam].
  const factory HasCustomAttribute.genericParam(GenericParam value) =
      HasCustomAttributeGenericParam;

  /// Constructs a [HasCustomAttribute] referencing a
  /// [GenericParamConstraint].
  const factory HasCustomAttribute.genericParamConstraint(
    GenericParamConstraint value,
  ) = HasCustomAttributeGenericParamConstraint;

  /// Constructs a [HasCustomAttribute] referencing a [MethodSpec].
  const factory HasCustomAttribute.methodSpec(MethodSpec value) =
      HasCustomAttributeMethodSpec;

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
      9 => HasCustomAttributeProperty(
        Property(metadataIndex, readerIndex, row),
      ),
      10 => HasCustomAttributeEvent(Event(metadataIndex, readerIndex, row)),
      11 => HasCustomAttributeStandaloneSig(
        StandAloneSig(metadataIndex, readerIndex, row),
      ),
      12 => HasCustomAttributeModuleRef(
        ModuleRef(metadataIndex, readerIndex, row),
      ),
      13 => HasCustomAttributeTypeSpec(
        TypeSpec(metadataIndex, readerIndex, row),
      ),
      14 => HasCustomAttributeAssembly(
        Assembly(metadataIndex, readerIndex, row),
      ),
      15 => HasCustomAttributeAssemblyRef(
        AssemblyRef(metadataIndex, readerIndex, row),
      ),
      16 => HasCustomAttributeFile(File(metadataIndex, readerIndex, row)),
      17 => HasCustomAttributeExportedType(
        ExportedType(metadataIndex, readerIndex, row),
      ),
      18 => HasCustomAttributeManifestResource(
        ManifestResource(metadataIndex, readerIndex, row),
      ),
      19 => HasCustomAttributeGenericParam(
        GenericParam(metadataIndex, readerIndex, row),
      ),
      20 => HasCustomAttributeGenericParamConstraint(
        GenericParamConstraint(metadataIndex, readerIndex, row),
      ),
      21 => HasCustomAttributeMethodSpec(
        MethodSpec(metadataIndex, readerIndex, row),
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

/// A [HasCustomAttribute] representing a [Field].
final class HasCustomAttributeField extends HasCustomAttribute {
  const HasCustomAttributeField(this.value) : super._();

  /// The underlying field definition.
  final Field value;

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

/// A [HasCustomAttribute] representing a [TypeRef].
final class HasCustomAttributeTypeRef extends HasCustomAttribute {
  const HasCustomAttributeTypeRef(this.value) : super._();

  /// The underlying type reference.
  final TypeRef value;

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

/// A [HasCustomAttribute] representing a [TypeDef].
final class HasCustomAttributeTypeDef extends HasCustomAttribute {
  const HasCustomAttributeTypeDef(this.value) : super._();

  /// The underlying type definition.
  final TypeDef value;

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

/// A [HasCustomAttribute] representing a [Param].
final class HasCustomAttributeParam extends HasCustomAttribute {
  const HasCustomAttributeParam(this.value) : super._();

  /// The underlying parameter definition.
  final Param value;

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

/// A [HasCustomAttribute] representing an [InterfaceImpl].
final class HasCustomAttributeInterfaceImpl extends HasCustomAttribute {
  const HasCustomAttributeInterfaceImpl(this.value) : super._();

  /// The underlying interface implementation.
  final InterfaceImpl value;

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

/// A [HasCustomAttribute] representing a [MemberRef].
final class HasCustomAttributeMemberRef extends HasCustomAttribute {
  const HasCustomAttributeMemberRef(this.value) : super._();

  /// The underlying member reference.
  final MemberRef value;

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

/// A [HasCustomAttribute] representing a [Module].
final class HasCustomAttributeModule extends HasCustomAttribute {
  const HasCustomAttributeModule(this.value) : super._();

  /// The underlying module.
  final Module value;

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

/// A [HasCustomAttribute] representing a [Property].
final class HasCustomAttributeProperty extends HasCustomAttribute {
  const HasCustomAttributeProperty(this.value) : super._();

  /// The underlying property.
  final Property value;

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

/// A [HasCustomAttribute] representing an [Event].
final class HasCustomAttributeEvent extends HasCustomAttribute {
  const HasCustomAttributeEvent(this.value) : super._();

  /// The underlying event.
  final Event value;

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

/// A [HasCustomAttribute] representing a [StandAloneSig].
final class HasCustomAttributeStandaloneSig extends HasCustomAttribute {
  const HasCustomAttributeStandaloneSig(this.value) : super._();

  /// The underlying standalone signature.
  final StandAloneSig value;

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

/// A [HasCustomAttribute] representing a [ModuleRef].
final class HasCustomAttributeModuleRef extends HasCustomAttribute {
  const HasCustomAttributeModuleRef(this.value) : super._();

  /// The underlying module reference.
  final ModuleRef value;

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

/// A [HasCustomAttribute] representing a [TypeSpec].
final class HasCustomAttributeTypeSpec extends HasCustomAttribute {
  const HasCustomAttributeTypeSpec(this.value) : super._();

  /// The underlying type specification.
  final TypeSpec value;

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

/// A [HasCustomAttribute] representing an [Assembly].
final class HasCustomAttributeAssembly extends HasCustomAttribute {
  const HasCustomAttributeAssembly(this.value) : super._();

  /// The underlying assembly.
  final Assembly value;

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

/// A [HasCustomAttribute] representing an [AssemblyRef].
final class HasCustomAttributeAssemblyRef extends HasCustomAttribute {
  const HasCustomAttributeAssemblyRef(this.value) : super._();

  /// The underlying assembly reference.
  final AssemblyRef value;

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

/// A [HasCustomAttribute] representing a [File].
final class HasCustomAttributeFile extends HasCustomAttribute {
  const HasCustomAttributeFile(this.value) : super._();

  /// The underlying file.
  final File value;

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

/// A [HasCustomAttribute] representing an [ExportedType].
final class HasCustomAttributeExportedType extends HasCustomAttribute {
  const HasCustomAttributeExportedType(this.value) : super._();

  /// The underlying exported type.
  final ExportedType value;

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

/// A [HasCustomAttribute] representing a [ManifestResource].
final class HasCustomAttributeManifestResource extends HasCustomAttribute {
  const HasCustomAttributeManifestResource(this.value) : super._();

  /// The underlying manifest resource.
  final ManifestResource value;

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

/// A [HasCustomAttribute] representing a [GenericParam].
final class HasCustomAttributeGenericParam extends HasCustomAttribute {
  const HasCustomAttributeGenericParam(this.value) : super._();

  /// The underlying generic parameter.
  final GenericParam value;

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

/// A [HasCustomAttribute] representing a [GenericParamConstraint].
final class HasCustomAttributeGenericParamConstraint
    extends HasCustomAttribute {
  const HasCustomAttributeGenericParamConstraint(this.value) : super._();

  /// The underlying generic parameter constraint.
  final GenericParamConstraint value;

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

/// A [HasCustomAttribute] representing a [MethodSpec].
final class HasCustomAttributeMethodSpec extends HasCustomAttribute {
  const HasCustomAttributeMethodSpec(this.value) : super._();

  /// The underlying method specification.
  final MethodSpec value;

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

@internal
final class HasCustomAttributeCompanion
    extends CodedIndexCompanion<HasCustomAttribute> {
  const HasCustomAttributeCompanion();

  @override
  HasCustomAttribute Function(MetadataIndex, int, int) get decode =>
      HasCustomAttribute.decode;
}

/// Represents a coded index for entities that can have declarative security
/// attributes.
sealed class HasDeclSecurity implements CodedIndex {
  /// Constructs a [HasDeclSecurity] referencing a [TypeDef].
  const factory HasDeclSecurity.typeDef(TypeDef value) = HasDeclSecurityTypeDef;

  /// Constructs a [HasDeclSecurity] referencing a [MethodDef].
  const factory HasDeclSecurity.methodDef(MethodDef value) =
      HasDeclSecurityMethodDef;

  /// Constructs a [HasDeclSecurity] referencing an [Assembly].
  const factory HasDeclSecurity.assembly(Assembly value) =
      HasDeclSecurityAssembly;

  const HasDeclSecurity._();

  /// Decodes a [HasDeclSecurity] from a raw coded index.
  static HasDeclSecurity decode(
    MetadataIndex metadataIndex,
    int readerIndex,
    int code,
  ) {
    final kind = code & ((1 << 2) - 1);
    final row = (code >> 2) - 1;
    return switch (kind) {
      0 => HasDeclSecurityTypeDef(TypeDef(metadataIndex, readerIndex, row)),
      1 => HasDeclSecurityMethodDef(MethodDef(metadataIndex, readerIndex, row)),
      2 => HasDeclSecurityAssembly(Assembly(metadataIndex, readerIndex, row)),
      _ => throw WinmdException('Unknown kind: $kind'),
    };
  }
}

/// A [HasDeclSecurity] representing a [TypeDef].
final class HasDeclSecurityTypeDef extends HasDeclSecurity {
  const HasDeclSecurityTypeDef(this.value) : super._();

  /// The underlying type definition.
  final TypeDef value;

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

/// A [HasDeclSecurity] representing a [MethodDef].
final class HasDeclSecurityMethodDef extends HasDeclSecurity {
  const HasDeclSecurityMethodDef(this.value) : super._();

  /// The underlying method definition.
  final MethodDef value;

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

/// A [HasDeclSecurity] representing an [Assembly].
final class HasDeclSecurityAssembly extends HasDeclSecurity {
  const HasDeclSecurityAssembly(this.value) : super._();

  /// The underlying assembly.
  final Assembly value;

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

@internal
final class HasDeclSecurityCompanion
    extends CodedIndexCompanion<HasDeclSecurity> {
  const HasDeclSecurityCompanion();

  @override
  HasDeclSecurity Function(MetadataIndex, int, int) get decode =>
      HasDeclSecurity.decode;
}

/// Represents a coded index for either a [Field] or a [Param].
sealed class HasFieldMarshal implements CodedIndex {
  /// Constructs a [HasFieldMarshal] referencing a [Field].
  const factory HasFieldMarshal.field(Field value) = HasFieldMarshalField;

  /// Constructs a [HasFieldMarshal] referencing a [Param].
  const factory HasFieldMarshal.param(Param value) = HasFieldMarshalParam;

  const HasFieldMarshal._();

  /// Decodes a [HasFieldMarshal] from a raw coded index.
  static HasFieldMarshal decode(
    MetadataIndex metadataIndex,
    int readerIndex,
    int code,
  ) {
    final kind = code & ((1 << 1) - 1);
    final row = (code >> 1) - 1;
    return switch (kind) {
      0 => HasFieldMarshalField(Field(metadataIndex, readerIndex, row)),
      1 => HasFieldMarshalParam(Param(metadataIndex, readerIndex, row)),
      _ => throw WinmdException('Unknown kind: $kind'),
    };
  }
}

/// A [HasFieldMarshal] representing a [Field].
final class HasFieldMarshalField extends HasFieldMarshal {
  const HasFieldMarshalField(this.value) : super._();

  /// The underlying field definition.
  final Field value;

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

/// A [HasFieldMarshal] representing a [Param].
final class HasFieldMarshalParam extends HasFieldMarshal {
  const HasFieldMarshalParam(this.value) : super._();

  /// The underlying parameter definition.
  final Param value;

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

@internal
final class HasFieldMarshalCompanion
    extends CodedIndexCompanion<HasFieldMarshal> {
  const HasFieldMarshalCompanion();

  @override
  HasFieldMarshal Function(MetadataIndex, int, int) get decode =>
      HasFieldMarshal.decode;
}

/// Represents a coded index for either an [Event] or a [Property].
sealed class HasSemantics implements CodedIndex {
  /// Constructs a [HasSemantics] referencing an [Event].
  const factory HasSemantics.event(Event value) = HasSemanticsEvent;

  /// Constructs a [HasSemantics] referencing a [Property].
  const factory HasSemantics.property(Property value) = HasSemanticsProperty;

  const HasSemantics._();

  /// Decodes a [HasSemantics] from a raw coded index.
  static HasSemantics decode(
    MetadataIndex metadataIndex,
    int readerIndex,
    int code,
  ) {
    final kind = code & ((1 << 1) - 1);
    final row = (code >> 1) - 1;
    return switch (kind) {
      0 => HasSemanticsEvent(Event(metadataIndex, readerIndex, row)),
      1 => HasSemanticsProperty(Property(metadataIndex, readerIndex, row)),
      _ => throw WinmdException('Unknown kind: $kind'),
    };
  }
}

/// A [HasSemantics] representing an [Event].
final class HasSemanticsEvent extends HasSemantics {
  const HasSemanticsEvent(this.value) : super._();

  /// The underlying event.
  final Event value;

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

/// A [HasSemantics] representing a [Property].
final class HasSemanticsProperty extends HasSemantics {
  const HasSemanticsProperty(this.value) : super._();

  /// The underlying property.
  final Property value;

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

@internal
final class HasSemanticsCompanion extends CodedIndexCompanion<HasSemantics> {
  const HasSemanticsCompanion();

  @override
  HasSemantics Function(MetadataIndex, int, int) get decode =>
      HasSemantics.decode;
}

/// Represents a coded index for either a [File], [AssemblyRef], or
/// [ExportedType].
sealed class Implementation implements CodedIndex {
  /// Constructs an [Implementation] referencing a [File].
  const factory Implementation.file(File value) = ImplementationFile;

  /// Constructs an [Implementation] referencing a [AssemblyRef].
  const factory Implementation.assemblyRef(AssemblyRef value) =
      ImplementationAssemblyRef;

  /// Constructs an [Implementation] referencing a [ExportedType].
  const factory Implementation.exportedType(ExportedType value) =
      ImplementationExportedType;

  const Implementation._();

  /// Decodes an [Implementation] from a raw coded index.
  static Implementation decode(
    MetadataIndex metadataIndex,
    int readerIndex,
    int code,
  ) {
    final kind = code & ((1 << 2) - 1);
    final row = (code >> 2) - 1;
    return switch (kind) {
      0 => ImplementationFile(File(metadataIndex, readerIndex, row)),
      1 => ImplementationAssemblyRef(
        AssemblyRef(metadataIndex, readerIndex, row),
      ),
      2 => ImplementationExportedType(
        ExportedType(metadataIndex, readerIndex, row),
      ),
      _ => throw WinmdException('Unknown kind: $kind'),
    };
  }
}

/// A [Implementation] representing a [File].
final class ImplementationFile extends Implementation {
  const ImplementationFile(this.value) : super._();

  /// The underlying file.
  final File value;

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

/// A [Implementation] representing an [AssemblyRef].
final class ImplementationAssemblyRef extends Implementation {
  const ImplementationAssemblyRef(this.value) : super._();

  /// The underlying assembly reference.
  final AssemblyRef value;

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

/// A [Implementation] representing an [ExportedType].
final class ImplementationExportedType extends Implementation {
  const ImplementationExportedType(this.value) : super._();

  /// The underlying exported type.
  final ExportedType value;

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

@internal
final class ImplementationCompanion
    extends CodedIndexCompanion<Implementation> {
  const ImplementationCompanion();

  @override
  Implementation Function(MetadataIndex, int, int) get decode =>
      Implementation.decode;
}

/// Represents a coded index for members that can be forwarded.
sealed class MemberForwarded implements CodedIndex {
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
  int encode() => ((value.index + 1) << 1) | 0;

  @override
  String get name => value.name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MemberForwardedField && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [MemberForwarded] representing a [MethodDef].
final class MemberForwardedMethodDef extends MemberForwarded {
  const MemberForwardedMethodDef(this.value) : super._();

  /// The underlying method definition.
  final MethodDef value;

  @override
  int encode() => ((value.index + 1) << 1) | 1;

  @override
  String get name => value.name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MemberForwardedMethodDef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
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
  /// Constructs a [MemberRefParent] referencing a [TypeDef].
  const factory MemberRefParent.typeDef(TypeDef value) = MemberRefParentTypeDef;

  /// Constructs a [MemberRefParent] referencing a [TypeRef].
  const factory MemberRefParent.typeRef(TypeRef value) = MemberRefParentTypeRef;

  /// Constructs a [MemberRefParent] referencing a [ModuleRef].
  const factory MemberRefParent.moduleRef(ModuleRef value) =
      MemberRefParentModuleRef;

  /// Constructs a [MemberRefParent] referencing an [MethodDef].
  const factory MemberRefParent.methodDef(MethodDef value) =
      MemberRefParentMethodDef;

  /// Constructs a [MemberRefParent] referencing a [TypeSpec].
  const factory MemberRefParent.typeSpec(TypeSpec value) =
      MemberRefParentTypeSpec;

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
      2 => MemberRefParentModuleRef(ModuleRef(metadataIndex, readerIndex, row)),
      3 => MemberRefParentMethodDef(MethodDef(metadataIndex, readerIndex, row)),
      4 => MemberRefParentTypeSpec(TypeSpec(metadataIndex, readerIndex, row)),
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
  int encode() => ((value.index + 1) << 3) | 0;

  @override
  String get namespace => value.namespace;

  @override
  String get name => value.name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MemberRefParentTypeDef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [MemberRefParent] representing a [TypeRef].
final class MemberRefParentTypeRef extends MemberRefParent {
  const MemberRefParentTypeRef(this.value) : super._();

  /// The underlying type reference.
  final TypeRef value;

  @override
  int encode() => ((value.index + 1) << 3) | 1;

  @override
  String get namespace => value.namespace;

  @override
  String get name => value.name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MemberRefParentTypeRef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [MemberRefParent] representing a [ModuleRef].
final class MemberRefParentModuleRef extends MemberRefParent {
  const MemberRefParentModuleRef(this.value) : super._();

  /// The underlying module reference.
  final ModuleRef value;

  @override
  int encode() => ((value.index + 1) << 3) | 2;

  @override
  String get namespace =>
      throw UnsupportedError('ModuleRef does not have a namespace.');

  @override
  String get name => value.name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MemberRefParentModuleRef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [MemberRefParent] representing a [MethodDef].
final class MemberRefParentMethodDef extends MemberRefParent {
  const MemberRefParentMethodDef(this.value) : super._();

  /// The underlying method definition.
  final MethodDef value;

  @override
  int encode() => ((value.index + 1) << 3) | 3;

  @override
  String get namespace =>
      throw UnsupportedError('MethodDef does not have a namespace.');

  @override
  String get name => value.name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MemberRefParentMethodDef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [MemberRefParent] representing a [TypeSpec].
final class MemberRefParentTypeSpec extends MemberRefParent {
  const MemberRefParentTypeSpec(this.value) : super._();

  /// The underlying type specification.
  final TypeSpec value;

  @override
  int encode() => ((value.index + 1) << 3) | 4;

  @override
  String get namespace =>
      throw UnsupportedError('TypeSpec does not have a namespace.');

  @override
  String get name => throw UnsupportedError('TypeSpec does not have a name.');

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MemberRefParentTypeSpec && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

@internal
final class MemberRefParentCompanion
    extends CodedIndexCompanion<MemberRefParent> {
  const MemberRefParentCompanion();

  @override
  MemberRefParent Function(MetadataIndex, int, int) get decode =>
      MemberRefParent.decode;
}

/// Represents a coded index for either a [MethodDef] or a [MemberRef].
sealed class MethodDefOrRef implements CodedIndex {
  /// Constructs a [MethodDefOrRef] referencing a [MethodDef].
  const factory MethodDefOrRef.methodDef(MethodDef value) =
      MethodDefOrRefMethodDef;

  /// Constructs a [MethodDefOrRef] referencing a [MemberRef].
  const factory MethodDefOrRef.memberRef(MemberRef value) =
      MethodDefOrRefMemberRef;

  const MethodDefOrRef._();

  /// Decodes a [MethodDefOrRef] from a raw coded index.
  static MethodDefOrRef decode(
    MetadataIndex metadataIndex,
    int readerIndex,
    int code,
  ) {
    final kind = code & ((1 << 1) - 1);
    final row = (code >> 1) - 1;
    return switch (kind) {
      0 => MethodDefOrRefMethodDef(MethodDef(metadataIndex, readerIndex, row)),
      1 => MethodDefOrRefMemberRef(MemberRef(metadataIndex, readerIndex, row)),
      _ => throw WinmdException('Unknown kind: $kind'),
    };
  }
}

/// A [MethodDefOrRef] representing a [MethodDef].
final class MethodDefOrRefMethodDef extends MethodDefOrRef {
  const MethodDefOrRefMethodDef(this.value) : super._();

  /// The underlying method definition.
  final MethodDef value;

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

/// A [MethodDefOrRef] representing a [MemberRef].
final class MethodDefOrRefMemberRef extends MethodDefOrRef {
  const MethodDefOrRefMemberRef(this.value) : super._();

  /// The underlying member reference.
  final MemberRef value;

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

@internal
final class MethodDefOrRefCompanion
    extends CodedIndexCompanion<MethodDefOrRef> {
  const MethodDefOrRefCompanion();

  @override
  MethodDefOrRef Function(MetadataIndex, int, int) get decode =>
      MethodDefOrRef.decode;
}

/// Represents a coded index for a [Module], [ModuleRef], [AssemblyRef], or
/// [TypeRef].
sealed class ResolutionScope implements CodedIndex {
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

/// A [ResolutionScope] representing a [ModuleRef].
final class ResolutionScopeModuleRef extends ResolutionScope {
  const ResolutionScopeModuleRef(this.value) : super._();

  /// The underlying module reference.
  final ModuleRef value;

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

/// A [ResolutionScope] representing an [AssemblyRef].
final class ResolutionScopeAssemblyRef extends ResolutionScope {
  const ResolutionScopeAssemblyRef(this.value) : super._();

  /// The underlying assembly reference.
  final AssemblyRef value;

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

/// A [ResolutionScope] representing a [TypeRef].
final class ResolutionScopeTypeRef extends ResolutionScope {
  const ResolutionScopeTypeRef(this.value) : super._();

  /// The underlying type reference.
  final TypeRef value;

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
  int encode() => ((value.index + 1) << 2) | 0;

  @override
  String get namespace => value.namespace;

  @override
  String get name => value.name;

  @override
  MetadataType type([List<MetadataType> generics = const []]) =>
      MetadataType.named(namespace, name);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TypeDefOrRefTypeDef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [TypeDefOrRef] representing a [TypeRef].
final class TypeDefOrRefTypeRef extends TypeDefOrRef {
  const TypeDefOrRefTypeRef(this.value) : super._();

  /// The underlying type reference.
  final TypeRef value;

  @override
  int encode() => ((value.index + 1) << 2) | 1;

  @override
  String get namespace => value.namespace;

  @override
  String get name => value.name;

  @override
  MetadataType type([List<MetadataType> generics = const []]) =>
      MetadataType.named(namespace, name);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TypeDefOrRefTypeRef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [TypeDefOrRef] representing a [TypeSpec].
final class TypeDefOrRefTypeSpec extends TypeDefOrRef {
  const TypeDefOrRefTypeSpec(this.value) : super._();

  /// The underlying type specification.
  final TypeSpec value;

  @override
  int encode() => ((value.index + 1) << 2) | 2;

  @override
  String get namespace =>
      throw UnsupportedError('TypeSpec does not have a namespace.');

  @override
  String get name => throw UnsupportedError('TypeSpec does not have a name.');

  @override
  MetadataType type([List<MetadataType> generics = const []]) =>
      value.type(generics);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TypeDefOrRefTypeSpec && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
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
  int encode() => ((value.index + 1) << 1) | 0;

  @override
  String get name => value.name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TypeOrMethodDefTypeDef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

/// A [TypeOrMethodDef] representing a [MethodDef].
final class TypeOrMethodDefMethodDef extends TypeOrMethodDef {
  const TypeOrMethodDefMethodDef(this.value) : super._();

  /// The underlying method definition.
  final MethodDef value;

  @override
  int encode() => ((value.index + 1) << 1) | 1;

  @override
  String get name => value.name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TypeOrMethodDefMethodDef && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}

@internal
final class TypeOrMethodDefCompanion
    extends CodedIndexCompanion<TypeOrMethodDef> {
  const TypeOrMethodDefCompanion();

  @override
  TypeOrMethodDef Function(MetadataIndex, int, int) get decode =>
      TypeOrMethodDef.decode;
}
