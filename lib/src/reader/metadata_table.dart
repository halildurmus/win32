import 'table_stream.dart';

/// Represents a table in a [TableStream].
///
/// Each value corresponds to a specific metadata table.
enum MetadataTable {
  /// The `AssemblyRef` table.
  assemblyRef,

  /// The `ClassLayout` table.
  classLayout,

  /// The `Constant` table.
  constant,

  /// The `CustomAttribute` table.
  customAttribute,

  /// The `Field` table.
  field,

  /// The `FieldLayout` table.
  fieldLayout,

  /// The `GenericParam` table.
  genericParam,

  /// The `GenericParamConstraint` table.
  genericParamConstraint,

  /// The `ImplMap` table.
  implMap,

  /// The `InterfaceImpl` table.
  interfaceImpl,

  /// The `MemberRef` table.
  memberRef,

  /// The `MethodDef` table.
  methodDef,

  /// The `Module` table.
  module,

  /// The `ModuleRef` table.
  moduleRef,

  /// The `NestedClass` table.
  nestedClass,

  /// The `Param` table.
  param,

  /// The `TypeDef` table.
  typeDef,

  /// The `TypeRef` table.
  typeRef,

  /// The `TypeSpec` table.
  typeSpec,
}
