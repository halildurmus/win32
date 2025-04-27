import 'table_stream.dart';

/// Represents the index of a table in a [TableStream].
extension type const TableIndex._(int index) implements int {
  /// The index of the `AssemblyRef` table.
  static const assemblyRef = TableIndex._(0);

  /// The index of the `ClassLayout` table.
  static const classLayout = TableIndex._(1);

  /// The index of the `Constant` table.
  static const constant = TableIndex._(2);

  /// The index of the `CustomAttribute` table.
  static const customAttribute = TableIndex._(3);

  /// The index of the `Field` table.
  static const field = TableIndex._(4);

  /// The index of the `FieldLayout` table.
  static const fieldLayout = TableIndex._(5);

  /// The index of the `GenericParam` table.
  static const genericParam = TableIndex._(6);

  /// The index of the `GenericParamConstraint` table.
  static const genericParamConstraint = TableIndex._(7);

  /// The index of the `ImplMap` table.
  static const implMap = TableIndex._(8);

  /// The index of the `InterfaceImpl` table.
  static const interfaceImpl = TableIndex._(9);

  /// The index of the `MemberRef` table.
  static const memberRef = TableIndex._(10);

  /// The index of the `MethodDef` table.
  static const methodDef = TableIndex._(11);

  /// The index of the `Module` table.
  static const module = TableIndex._(12);

  /// The index of the `ModuleRef` table.
  static const moduleRef = TableIndex._(13);

  /// The index of the `NestedClass` table.
  static const nestedClass = TableIndex._(14);

  /// The index of the `Param` table.
  static const param = TableIndex._(15);

  /// The index of the `TypeDef` table.
  static const typeDef = TableIndex._(16);

  /// The index of the `TypeRef` table.
  static const typeRef = TableIndex._(17);

  /// The index of the `TypeSpec` table.
  static const typeSpec = TableIndex._(18);
}
